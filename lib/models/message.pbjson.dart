///
//  Generated code. Do not modify.
//  source: models/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 5, '10': 'sender'},
    const {'1': 'receiver', '3': 3, '4': 1, '5': 5, '10': 'receiver'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.consts.MessageType', '10': 'type'},
    const {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'sended_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sendedAt'},
    const {'1': 'expire', '3': 7, '4': 1, '5': 5, '10': 'expire'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEg4KAmlkGAEgASgDUgJpZBIWCgZzZW5kZXIYAiABKAVSBnNlbmRlchIaCghyZWNlaXZlchgDIAEoBVIIcmVjZWl2ZXISJwoEdHlwZRgEIAEoDjITLmNvbnN0cy5NZXNzYWdlVHlwZVIEdHlwZRIYCgdjb250ZW50GAUgASgJUgdjb250ZW50EjcKCXNlbmRlZF9hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHNlbmRlZEF0EhYKBmV4cGlyZRgHIAEoBVIGZXhwaXJl');
