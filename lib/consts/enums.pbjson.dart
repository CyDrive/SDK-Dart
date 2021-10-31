///
//  Generated code. Do not modify.
//  source: consts/enums.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageTypeDescriptor instead')
const MessageType$json = const {
  '1': 'MessageType',
  '2': const [
    const {'1': 'Text', '2': 0},
    const {'1': 'Image', '2': 1},
    const {'1': 'Audio', '2': 2},
    const {'1': 'Video', '2': 3},
    const {'1': 'File', '2': 4},
    const {'1': 'Notification', '2': 5},
  ],
};

/// Descriptor for `MessageType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageTypeDescriptor = $convert.base64Decode('CgtNZXNzYWdlVHlwZRIICgRUZXh0EAASCQoFSW1hZ2UQARIJCgVBdWRpbxACEgkKBVZpZGVvEAMSCAoERmlsZRAEEhAKDE5vdGlmaWNhdGlvbhAF');
@$core.Deprecated('Use statusCodeDescriptor instead')
const StatusCode$json = const {
  '1': 'StatusCode',
  '2': const [
    const {'1': 'Ok', '2': 0},
    const {'1': 'AuthError', '2': 1},
    const {'1': 'NeedParameters', '2': 2},
    const {'1': 'InvalidParameters', '2': 4},
    const {'1': 'FileTooLarge', '2': 8},
    const {'1': 'IoError', '2': 16},
    const {'1': 'InternalError', '2': 32},
    const {'1': 'SessionError', '2': 64},
  ],
};

/// Descriptor for `StatusCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusCodeDescriptor = $convert.base64Decode('CgpTdGF0dXNDb2RlEgYKAk9rEAASDQoJQXV0aEVycm9yEAESEgoOTmVlZFBhcmFtZXRlcnMQAhIVChFJbnZhbGlkUGFyYW1ldGVycxAEEhAKDEZpbGVUb29MYXJnZRAIEgsKB0lvRXJyb3IQEBIRCg1JbnRlcm5hbEVycm9yECASEAoMU2Vzc2lvbkVycm9yEEA=');
