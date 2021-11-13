///
//  Generated code. Do not modify.
//  source: models/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use safeAccountDescriptor instead')
const SafeAccount$json = const {
  '1': 'SafeAccount',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'usage', '3': 4, '4': 1, '5': 3, '10': 'usage'},
    const {'1': 'cap', '3': 5, '4': 1, '5': 3, '10': 'cap'},
  ],
};

/// Descriptor for `SafeAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List safeAccountDescriptor = $convert.base64Decode('CgtTYWZlQWNjb3VudBIOCgJpZBgBIAEoBVICaWQSFAoFZW1haWwYAiABKAlSBWVtYWlsEhIKBG5hbWUYAyABKAlSBG5hbWUSFAoFdXNhZ2UYBCABKANSBXVzYWdlEhAKA2NhcBgFIAEoA1IDY2Fw');
@$core.Deprecated('Use accountDescriptor instead')
const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'usage', '3': 4, '4': 1, '5': 3, '10': 'usage'},
    const {'1': 'cap', '3': 5, '4': 1, '5': 3, '10': 'cap'},
    const {'1': 'password', '3': 6, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode('CgdBY2NvdW50Eg4KAmlkGAEgASgFUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSEgoEbmFtZRgDIAEoCVIEbmFtZRIUCgV1c2FnZRgEIAEoA1IFdXNhZ2USEAoDY2FwGAUgASgDUgNjYXASGgoIcGFzc3dvcmQYBiABKAlSCHBhc3N3b3JkEjkKCmNyZWF0ZWRfYXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOQoKdXBkYXRlZF9hdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdA==');
@$core.Deprecated('Use accountListDescriptor instead')
const AccountList$json = const {
  '1': 'AccountList',
  '2': const [
    const {'1': 'account_list', '3': 1, '4': 3, '5': 11, '6': '.models.Account', '10': 'accountList'},
  ],
};

/// Descriptor for `AccountList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountListDescriptor = $convert.base64Decode('CgtBY2NvdW50TGlzdBIyCgxhY2NvdW50X2xpc3QYASADKAsyDy5tb2RlbHMuQWNjb3VudFILYWNjb3VudExpc3Q=');
