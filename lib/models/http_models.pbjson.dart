///
//  Generated code. Do not modify.
//  source: models/http_models.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'status_code', '3': 1, '4': 1, '5': 14, '6': '.consts.StatusCode', '10': 'statusCode'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIzCgtzdGF0dXNfY29kZRgBIAEoDjISLmNvbnN0cy5TdGF0dXNDb2RlUgpzdGF0dXNDb2RlEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USEgoEZGF0YRgDIAEoCVIEZGF0YQ==');
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'cap', '3': 4, '4': 1, '5': 3, '10': 'cap'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBISCgRuYW1lGAMgASgJUgRuYW1lEhAKA2NhcBgEIAEoA1IDY2Fw');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use shareRequestDescriptor instead')
const ShareRequest$json = const {
  '1': 'ShareRequest',
  '2': const [
    const {'1': 'file_path', '3': 1, '4': 1, '5': 9, '10': 'filePath'},
    const {'1': 'expire', '3': 2, '4': 1, '5': 5, '10': 'expire'},
    const {'1': 'to', '3': 3, '4': 3, '5': 5, '10': 'to'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'access_count', '3': 5, '4': 1, '5': 5, '10': 'accessCount'},
  ],
};

/// Descriptor for `ShareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareRequestDescriptor = $convert.base64Decode('CgxTaGFyZVJlcXVlc3QSGwoJZmlsZV9wYXRoGAEgASgJUghmaWxlUGF0aBIWCgZleHBpcmUYAiABKAVSBmV4cGlyZRIOCgJ0bxgDIAMoBVICdG8SGgoIcGFzc3dvcmQYBCABKAlSCHBhc3N3b3JkEiEKDGFjY2Vzc19jb3VudBgFIAEoBVILYWNjZXNzQ291bnQ=');
@$core.Deprecated('Use getFileListResponseDescriptor instead')
const GetFileListResponse$json = const {
  '1': 'GetFileListResponse',
  '2': const [
    const {'1': 'file_info_list', '3': 1, '4': 3, '5': 11, '6': '.models.FileInfo', '10': 'fileInfoList'},
  ],
};

/// Descriptor for `GetFileListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileListResponseDescriptor = $convert.base64Decode('ChNHZXRGaWxlTGlzdFJlc3BvbnNlEjYKDmZpbGVfaW5mb19saXN0GAEgAygLMhAubW9kZWxzLkZpbGVJbmZvUgxmaWxlSW5mb0xpc3Q=');
@$core.Deprecated('Use downloadResponseDescriptor instead')
const DownloadResponse$json = const {
  '1': 'DownloadResponse',
  '2': const [
    const {'1': 'node_addr', '3': 1, '4': 1, '5': 9, '10': 'nodeAddr'},
    const {'1': 'task_id', '3': 2, '4': 1, '5': 5, '10': 'taskId'},
    const {'1': 'file_info', '3': 3, '4': 1, '5': 11, '6': '.models.FileInfo', '10': 'fileInfo'},
  ],
};

/// Descriptor for `DownloadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadResponseDescriptor = $convert.base64Decode('ChBEb3dubG9hZFJlc3BvbnNlEhsKCW5vZGVfYWRkchgBIAEoCVIIbm9kZUFkZHISFwoHdGFza19pZBgCIAEoBVIGdGFza0lkEi0KCWZpbGVfaW5mbxgDIAEoCzIQLm1vZGVscy5GaWxlSW5mb1IIZmlsZUluZm8=');
@$core.Deprecated('Use uploadRequestDescriptor instead')
const UploadRequest$json = const {
  '1': 'UploadRequest',
  '2': const [
    const {'1': 'file_info', '3': 1, '4': 1, '5': 11, '6': '.models.FileInfo', '10': 'fileInfo'},
    const {'1': 'should_truncate', '3': 2, '4': 1, '5': 8, '10': 'shouldTruncate'},
  ],
};

/// Descriptor for `UploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadRequestDescriptor = $convert.base64Decode('Cg1VcGxvYWRSZXF1ZXN0Ei0KCWZpbGVfaW5mbxgBIAEoCzIQLm1vZGVscy5GaWxlSW5mb1IIZmlsZUluZm8SJwoPc2hvdWxkX3RydW5jYXRlGAIgASgIUg5zaG91bGRUcnVuY2F0ZQ==');
@$core.Deprecated('Use uploadResponseDescriptor instead')
const UploadResponse$json = const {
  '1': 'UploadResponse',
  '2': const [
    const {'1': 'node_addr', '3': 1, '4': 1, '5': 9, '10': 'nodeAddr'},
    const {'1': 'task_id', '3': 2, '4': 1, '5': 5, '10': 'taskId'},
    const {'1': 'offset', '3': 3, '4': 1, '5': 3, '10': 'offset'},
  ],
};

/// Descriptor for `UploadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadResponseDescriptor = $convert.base64Decode('Cg5VcGxvYWRSZXNwb25zZRIbCglub2RlX2FkZHIYASABKAlSCG5vZGVBZGRyEhcKB3Rhc2tfaWQYAiABKAVSBnRhc2tJZBIWCgZvZmZzZXQYAyABKANSBm9mZnNldA==');
@$core.Deprecated('Use deleteResponseDescriptor instead')
const DeleteResponse$json = const {
  '1': 'DeleteResponse',
  '2': const [
    const {'1': 'file_info', '3': 1, '4': 1, '5': 11, '6': '.models.FileInfo', '10': 'fileInfo'},
  ],
};

/// Descriptor for `DeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResponseDescriptor = $convert.base64Decode('Cg5EZWxldGVSZXNwb25zZRItCglmaWxlX2luZm8YASABKAsyEC5tb2RlbHMuRmlsZUluZm9SCGZpbGVJbmZv');
@$core.Deprecated('Use getMessageResponseDescriptor instead')
const GetMessageResponse$json = const {
  '1': 'GetMessageResponse',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.models.Message', '10': 'messages'},
  ],
};

/// Descriptor for `GetMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMessageResponseDescriptor = $convert.base64Decode('ChJHZXRNZXNzYWdlUmVzcG9uc2USKwoIbWVzc2FnZXMYASADKAsyDy5tb2RlbHMuTWVzc2FnZVIIbWVzc2FnZXM=');
@$core.Deprecated('Use shareResponseDescriptor instead')
const ShareResponse$json = const {
  '1': 'ShareResponse',
  '2': const [
    const {'1': 'link', '3': 1, '4': 1, '5': 9, '10': 'link'},
  ],
};

/// Descriptor for `ShareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareResponseDescriptor = $convert.base64Decode('Cg1TaGFyZVJlc3BvbnNlEhIKBGxpbmsYASABKAlSBGxpbms=');
