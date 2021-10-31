import 'package:cydrive_sdk/models/account.pb.dart';
import 'package:cydrive_sdk/utils.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cydrive_sdk/cydrive_sdk.dart';

void main() {
  Account account = Account(
      email: "yah2er0ne@outlook.com", password: passwordHash("hello_world"));
  final client = CyDriveClient("127.0.0.1", 1, account: account);
  test('login', () async {
    var isLogin = await client.login();
    expect(isLogin, true);
  });

  test('get file list', () async {
    var isLogin = await client.login();
    expect(isLogin, true);

    var list = await client.listDir("");
    print(list);

    list = await client.listDir("hello");
    print(list);
  });

  test('message_service', () async {
    var isLogin = await client.login();
    expect(isLogin, true);

    bool ok = await client.connectMessageService();
    expect(ok, true);
  });
}
