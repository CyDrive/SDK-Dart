///
//  Generated code. Do not modify.
//  source: consts/enums.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MessageType extends $pb.ProtobufEnum {
  static const MessageType Text = MessageType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Text');
  static const MessageType Image = MessageType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Image');
  static const MessageType Audio = MessageType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Audio');
  static const MessageType Video = MessageType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Video');
  static const MessageType File = MessageType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'File');
  static const MessageType Notification = MessageType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Notification');

  static const $core.List<MessageType> values = <MessageType> [
    Text,
    Image,
    Audio,
    Video,
    File,
    Notification,
  ];

  static final $core.Map<$core.int, MessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageType? valueOf($core.int value) => _byValue[value];

  const MessageType._($core.int v, $core.String n) : super(v, n);
}

class StatusCode extends $pb.ProtobufEnum {
  static const StatusCode Ok = StatusCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ok');
  static const StatusCode AuthError = StatusCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AuthError');
  static const StatusCode NeedParameters = StatusCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NeedParameters');
  static const StatusCode InvalidParameters = StatusCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidParameters');
  static const StatusCode FileTooLarge = StatusCode._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FileTooLarge');
  static const StatusCode IoError = StatusCode._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IoError');
  static const StatusCode InternalError = StatusCode._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InternalError');
  static const StatusCode SessionError = StatusCode._(64, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SessionError');

  static const $core.List<StatusCode> values = <StatusCode> [
    Ok,
    AuthError,
    NeedParameters,
    InvalidParameters,
    FileTooLarge,
    IoError,
    InternalError,
    SessionError,
  ];

  static final $core.Map<$core.int, StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StatusCode? valueOf($core.int value) => _byValue[value];

  const StatusCode._($core.int v, $core.String n) : super(v, n);
}

