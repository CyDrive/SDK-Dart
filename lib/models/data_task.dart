import 'dart:io';
import 'dart:typed_data';

import 'package:cydrive_sdk/models/file_info.pb.dart';
import 'package:fixnum/fixnum.dart';

enum DataTaskType { Download, Upload }

class DataTask {
  late Socket _conn;
  late Future innerTask;
  int id;
  DataTaskType type;
  String localPath;
  Int64 offset;
  String serverAddr;
  FileInfo fileInfo;
  DateTime startAt;

  bool shouldTruncate;
  int bufferSize = 4096;

  DataTask(this.id, this.type, this.localPath, this.offset, this.serverAddr,
      this.fileInfo,
      {this.shouldTruncate = false, this.bufferSize = 4096})
      : startAt = DateTime.now();

  void startAsync() async {
    var uri = Uri.parse(serverAddr);
    _conn = await Socket.connect(uri.host, uri.port);
    switch (type) {
      case DataTaskType.Download:
        innerTask = DownloadData();
        break;
      default:
    }
  }

  Future DownloadData() async {
    File file = File(localPath);
    var sendIdTask = sendID();

    if (shouldTruncate) {
      if (await file.exists()) {
        await file.delete(recursive: true);
      }
      await file.create(recursive: true);
    }

    var stream = _conn.asBroadcastStream();
    var fileWriter = file.openWrite(mode: FileMode.writeOnlyAppend);
    await sendIdTask;
    await fileWriter.addStream(stream);
    await fileWriter.flush();
    await fileWriter.close();
    await _conn.close();
  }

  void UploadData() async {}

  void Wait() async {
    await innerTask;
  }

  Future sendID() async {
    ByteData idBytes = ByteData(4);
    idBytes.setInt32(0, id, Endian.little);
    _conn.add(idBytes.buffer.asUint8List());
    await _conn.flush();
  }
}
