library cydrive_sdk;

import 'dart:convert';
import 'dart:io';

import 'package:cydrive_sdk/consts/enums.pb.dart';
import 'package:cydrive_sdk/models/account.pb.dart';
import 'package:cydrive_sdk/models/data_task.dart';
import 'package:cydrive_sdk/models/file_info.pb.dart';
import 'package:cydrive_sdk/models/http_models.pb.dart';
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

  bool isLogin = false;
  final String serverHost;

  CyDriveClient(this.serverHost, this._deviceId, {Account? account = null}) {
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
        await _client.post("/login", data: SerializeRequest(req));
    var resp = GetResponse(res);

    isLogin = resp.statusCode == StatusCode.Ok;

    return isLogin;
  }

  Future<List<FileInfo>> listDir(String path) async {
    dio.Response<String> res =
        await _client.get("/list/" + Uri.encodeFull(path));
    var resp = GetResponse(res);
    var getFileListResponse = GetFileListResponse()
      ..mergeFromProto3Json(jsonDecode(resp.data));
    return getFileListResponse.fileInfoList;
  }

  Future<DataTask> download(String path, String savePath,
      {bool autoStartTask = true, bool shouldTruncate = false}) async {
    path.replaceAll('\\', '/');

    dio.Response<String> res =
        await _client.get("/file/" + Uri.encodeFull(path));
    var resp = GetResponse(res);
    var downloadResponse = DownloadResponse()
      ..mergeFromProto3Json(jsonDecode(resp.data));

    Int64 offset = 0 as Int64;
    if (!shouldTruncate && await File(savePath).exists()) {
      await File(savePath).stat().then((value) => offset = value.size as Int64);
    }

    var task = DataTask(downloadResponse.taskId, DataTaskType.Download,
        savePath, offset, downloadResponse.nodeAddr, downloadResponse.fileInfo,
        shouldTruncate: shouldTruncate);

    if (autoStartTask) {
      task.startAsync();
    }

    return task;
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

    return true;
  }
}
