///
//  Generated code. Do not modify.
//  source: models/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

import '../consts/enums.pbenum.dart' as $1;

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'models'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiver')
    ..e<$1.MessageType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: $1.MessageType.Text, valueOf: $1.MessageType.valueOf, enumValues: $1.MessageType.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOM<$0.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendedAt', subBuilder: $0.Timestamp.create)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expire', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $fixnum.Int64? id,
    $core.String? sender,
    $core.String? senderName,
    $core.String? receiver,
    $1.MessageType? type,
    $core.String? content,
    $0.Timestamp? sendedAt,
    $core.int? expire,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (senderName != null) {
      _result.senderName = senderName;
    }
    if (receiver != null) {
      _result.receiver = receiver;
    }
    if (type != null) {
      _result.type = type;
    }
    if (content != null) {
      _result.content = content;
    }
    if (sendedAt != null) {
      _result.sendedAt = sendedAt;
    }
    if (expire != null) {
      _result.expire = expire;
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get senderName => $_getSZ(2);
  @$pb.TagNumber(3)
  set senderName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSenderName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSenderName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get receiver => $_getSZ(3);
  @$pb.TagNumber(4)
  set receiver($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReceiver() => $_has(3);
  @$pb.TagNumber(4)
  void clearReceiver() => clearField(4);

  @$pb.TagNumber(5)
  $1.MessageType get type => $_getN(4);
  @$pb.TagNumber(5)
  set type($1.MessageType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(6)
  set content($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);

  @$pb.TagNumber(7)
  $0.Timestamp get sendedAt => $_getN(6);
  @$pb.TagNumber(7)
  set sendedAt($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSendedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearSendedAt() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureSendedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.int get expire => $_getIZ(7);
  @$pb.TagNumber(8)
  set expire($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExpire() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpire() => clearField(8);
}

