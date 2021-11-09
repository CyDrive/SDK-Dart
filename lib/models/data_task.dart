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
  int downBytes = 0;

  DataTask(this.id, this.type, this.localPath, this.offset, this.serverAddr,
      this.fileInfo,
      {this.shouldTruncate = false, this.bufferSize = 4096})
      : startAt = DateTime.now();

  Future startAsync() async {
    var index = serverAddr.lastIndexOf(':');
    var host = serverAddr.substring(0, index);
    var port = int.parse(serverAddr.substring(index + 1));

    _conn = await Socket.connect(host, port);
    switch (type) {
      case DataTaskType.Download:
        innerTask = downloadData();
        break;
      case DataTaskType.Upload:
        innerTask = uploadData();
        break;
    }
  }

  Future downloadData() async {
    File file = await File(localPath).create(recursive: true);
    var sendIdTask = sendID();

    if (shouldTruncate) {
      if (await file.exists()) {
        await file.delete(recursive: true);
      }
      await file.create(recursive: true);
    }

    var fileWriter = file.openWrite(mode: FileMode.writeOnlyAppend);
    await sendIdTask;

    await _conn.listen((data) {
      fileWriter.add(data);
      downBytes += data.length;
    }, onDone: () async {
      await fileWriter.flush();
      await fileWriter.close();
      await _conn.close();
    }).asFuture();
  }

  Future uploadData() async {
    File file = File(localPath);
    var sendIdTask = sendID();

    var fileReader = file.openRead();
    await fileReader.listen((data) {
      _conn.add(data);
      downBytes += data.length;
    }, onDone: () async {
      await _conn.close();
    }).asFuture();
  }

  Future Wait() async {
    await innerTask;
  }

  Future sendID() async {
    ByteData idBytes = ByteData(4);
    idBytes.setInt32(0, id, Endian.little);
    _conn.add(idBytes.buffer.asUint8List());
    await _conn.flush();
  }
}
