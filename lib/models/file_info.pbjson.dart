///
//  Generated code. Do not modify.
//  source: models/file_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use fileInfoDescriptor instead')
const FileInfo$json = const {
  '1': 'FileInfo',
  '2': const [
    const {'1': 'file_path', '3': 1, '4': 1, '5': 9, '10': 'filePath'},
    const {'1': 'size', '3': 2, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'modify_time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modifyTime'},
    const {'1': 'is_dir', '3': 4, '4': 1, '5': 8, '10': 'isDir'},
    const {'1': 'is_compressed', '3': 5, '4': 1, '5': 8, '10': 'isCompressed'},
  ],
};

/// Descriptor for `FileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileInfoDescriptor = $convert.base64Decode('CghGaWxlSW5mbxIbCglmaWxlX3BhdGgYASABKAlSCGZpbGVQYXRoEhIKBHNpemUYAiABKANSBHNpemUSOwoLbW9kaWZ5X3RpbWUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgptb2RpZnlUaW1lEhUKBmlzX2RpchgEIAEoCFIFaXNEaXISIwoNaXNfY29tcHJlc3NlZBgFIAEoCFIMaXNDb21wcmVzc2Vk');
@$core.Deprecated('Use fileInfoListDescriptor instead')
const FileInfoList$json = const {
  '1': 'FileInfoList',
  '2': const [
    const {'1': 'file_info_list', '3': 1, '4': 3, '5': 11, '6': '.models.FileInfo', '10': 'fileInfoList'},
  ],
};

/// Descriptor for `FileInfoList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileInfoListDescriptor = $convert.base64Decode('CgxGaWxlSW5mb0xpc3QSNgoOZmlsZV9pbmZvX2xpc3QYASADKAsyEC5tb2RlbHMuRmlsZUluZm9SDGZpbGVJbmZvTGlzdA==');
