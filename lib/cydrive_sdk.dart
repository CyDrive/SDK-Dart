library cydrive_sdk;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cydrive_sdk/consts/enums.pb.dart';
import 'package:cydrive_sdk/google/protobuf/timestamp.pb.dart';
import 'package:cydrive_sdk/models/account.pb.dart';
import 'package:cydrive_sdk/models/data_task.dart';
import 'package:cydrive_sdk/models/file_info.pb.dart';
import 'package:cydrive_sdk/models/http_models.pb.dart';
import 'package:cydrive_sdk/models/message.pb.dart';
import 'package:cydrive_sdk/utils.dart';
import 'package:fixnum/fixnum.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart' as dio;
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

class CyDriveClient {
  late final String _baseAddr;
  int _deviceId;
  Account? _account;
  final dio.Dio _client = dio.Dio();
  late WebSocket _messageClient;
  late CookieManager _cookies;
  late Stream<Message> _onRecvMessage;

  bool isLogin = false;
  final String serverHost;

  CyDriveClient(this.serverHost, this._deviceId, {Account? account}) {
    _baseAddr = "http://$serverHost:6454";
    getApplicationDocumentsDirectory().then((value) {
      _cookies =
          CookieManager(PersistCookieJar(storage: FileStorage(value.path)));
      _client.interceptors.add(_cookies);
    });
    _client.options.baseUrl = _baseAddr;
    _client.options.connectTimeout = 1000;
    _account = account;
  }

  SafeAccount get account {
    return SafeAccount(
      id: _account?.id,
      email: _account?.email,
      name: _account?.name,
      usage: _account?.usage,
      cap: _account?.cap,
    );
  }

  Future<bool> login({Account? account}) async {
    if (account != null) {
      _account = account;
    }
    if (_account == null) {
      return false;
    }

    var req =
        LoginRequest(email: _account!.email, password: _account!.password);
    dio.Response<String> res =
        await _client.post("/login", data: serializeRequest(req));

    var resp = getResponse(res);

    isLogin = resp.statusCode == StatusCode.Ok;

    if (isLogin) {
      var safeAccount = SafeAccount()
        ..mergeFromProto3Json(jsonDecode(resp.data));
      updateAccountInfo(_account!, safeAccount);
    }

    return isLogin;
  }

  Future<List<FileInfo>> listDir(String path) async {
    dio.Response<String> res =
        await _client.get("/list/" + Uri.encodeFull(path));
    var resp = getResponse(res);
    var getFileListResponse = GetFileListResponse()
      ..mergeFromProto3Json(jsonDecode(resp.data));
    return getFileListResponse.fileInfoList;
  }

  Future<DataTask> download(String path, String savePath,
      {bool autoStartTask = true, bool shouldTruncate = false}) async {
    path.replaceAll('\\', '/');

    dio.Response<String> res =
        await _client.get("/file/" + Uri.encodeFull(path));
    var resp = getResponse(res);
    var downloadResponse = DownloadResponse()
      ..mergeFromProto3Json(jsonDecode(resp.data));

    Int64 offset = Int64(0);
    if (!shouldTruncate && await File(savePath).exists()) {
      await File(savePath).stat().then((value) => offset = Int64(value.size));
    }

    var task = DataTask(downloadResponse.taskId, DataTaskType.Download,
        savePath, offset, downloadResponse.nodeAddr, downloadResponse.fileInfo,
        shouldTruncate: shouldTruncate);

    if (autoStartTask) {
      await task.startAsync();
    }

    return task;
  }

  Future<DataTask> upload(String path, String savePath,
      {bool autoStartTask = true, shouldTruncate = true}) async {
    var fileStat = await File(path).stat();
    var fileInfo = FileInfo(
      filePath: savePath,
      size: Int64(fileStat.size),
      modifyTime: Timestamp.fromDateTime(fileStat.modified),
      isDir: false,
      isCompressed: false,
    );

    var req = UploadRequest(
      fileInfo: fileInfo,
      shouldTruncate: shouldTruncate,
    );
    dio.Response<String> res = await _client
        .put('/file/' + Uri.encodeFull(savePath), data: serializeRequest(req));
    var resp = getResponse(res);
    var uploadResponse = UploadResponse()
      ..mergeFromProto3Json(jsonDecode(resp.data));

    var task = DataTask(uploadResponse.taskId, DataTaskType.Upload, path,
        uploadResponse.offset, uploadResponse.nodeAddr, fileInfo);

    if (autoStartTask) {
      await task.startAsync();
    }

    return task;
  }

  Future<FileInfo> delete(String path) async {
    dio.Response<String> res =
        await _client.delete('/file/' + Uri.encodeFull(path));
    var resp = getResponse(res);
    var deleteResponse = DeleteResponse()
      ..mergeFromProto3Json(jsonDecode(resp.data));
    return deleteResponse.fileInfo;
  }

  Future<bool> connectMessageService({int? deviceId}) async {
    if (deviceId != null) {
      _deviceId = deviceId;
    }

    if (!isLogin) {
      return false;
    }

    var cookies =
        await _cookies.cookieJar.loadForRequest(Uri(host: serverHost));
    String cookieHeader = cookies.join("; ");
    String wsAddr = _baseAddr.replaceAll("http", "ws");
    _messageClient = await WebSocket.connect(
        "$wsAddr/message_service?device_id=$_deviceId",
        headers: {"Cookie": cookieHeader});

    _onRecvMessage = _messageClient.map((event) {
      var message = Message()..mergeFromProto3Json(jsonDecode(event as String));
      return message;
    });

    return true;
  }

  Future sendText(String text, int receiver) async {
    var message = Message(
        sender: _deviceId,
        receiver: receiver,
        type: MessageType.Text,
        sendedAt: Timestamp.fromDateTime(DateTime.now()));

    await _sendMessage(message);
  }

  Future _sendMessage(Message message) async {
    var messageString = jsonEncode(message.toProto3Json());
    _messageClient.add(messageString);
  }

  void listenMessage(void Function(Message) onData) {
    _onRecvMessage.listen(onData);
  }
}
