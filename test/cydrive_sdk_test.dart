import 'package:cydrive_sdk/models/account.pb.dart';
import 'package:cydrive_sdk/utils.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cydrive_sdk/cydrive_sdk.dart';

void main() {
  Account account =
      Account(email: "test@cydrive.io", password: passwordHash("hello_world"));
  final client = CyDriveClient("123.57.39.79", 1, account: account);
  test('login', () async {
    var isLogin = await client.login();
    var account = client.account;
    expect(isLogin, true);
  });

  test('get file list', () async {
    var isLogin = await client.login();
    expect(isLogin, true);

    var list = await client.listDir("");
    print(list);

    list = await client.listDir("cy");
    print(list);
  });

  test('download', () async {
    var isLogin = await client.login();
    expect(isLogin, true);

    var task = await client.download('cy/hello.txt', 'temp/hello.txt',
        shouldTruncate: true);
    await task.Wait();
  });

  test('message_service', () async {
    var isLogin = await client.login();
    expect(isLogin, true);

    bool ok = await client.connectMessageService();
    expect(ok, true);
  });
}
