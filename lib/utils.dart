import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:cydrive_sdk/models/account.pb.dart';
import 'package:cydrive_sdk/models/http_models.pb.dart';
import 'package:dio/dio.dart' as dio;
import 'package:protobuf/protobuf.dart';
import 'package:device_info_plus/device_info_plus.dart';

List<int> md5Hash(List<int> str) {
  return md5.convert(str).bytes;
}

List<int> sha256Hash(List<int> str) {
  return sha256.convert(str).bytes;
}

String passwordHash(String passwd) {
  var bytes = sha256Hash(md5Hash(passwd.codeUnits));
  String res = '';
  for (var byte in bytes) {
    res += byte.toString();
  }

  return res;
}

String serializeRequest(GeneratedMessage message) {
  return jsonEncode(message.toProto3Json());
}

Response getResponse(dio.Response<String> res) {
  return Response()..mergeFromProto3Json(jsonDecode(res.data!));
}

String parentPath(String path) {
  var pathLevels = path.split('/');
  pathLevels.removeLast();
  return pathLevels.join('/');
}

String sizeString(int size) {
  const units = ["B", "KiB", "MiB", "GiB"];
  int unitIndex = 0;
  while (unitIndex + 1 < units.length && size >= 1024) {
    size >>= 10;
    unitIndex++;
  }

  return size.toString() + ' ' + units[unitIndex];
}

void updateAccountInfo(Account account, SafeAccount safeAccount) {
  account.id = safeAccount.id;
  account.email = safeAccount.email;
  account.name = safeAccount.name;
  account.usage = safeAccount.usage;
  account.cap = safeAccount.cap;
}

Future<String> getDeviceId() async {
  var info = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    var androidInfo = await info.androidInfo;
    return androidInfo.androidId!;
  } else if (Platform.isIOS) {
    var iosInfo = await info.iosInfo;
    return iosInfo.identifierForVendor!;
  }

  return "";
}

Future<String> getDeviceName() async {
  var info = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    var androidInfo = await info.androidInfo;
    return androidInfo.device!;
  } else if (Platform.isIOS) {
    var iosInfo = await info.iosInfo;
    return iosInfo.name!;
  }

  return "";
}
