///
//  Generated code. Do not modify.
//  source: lib/src/proto/tiktok_schema.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class WebcastResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..pc<Message>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: Message.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cursor')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ackIds', protoName: 'ackIds')
    ..aOM<WebsocketParam>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wsParam', protoName: 'wsParam', subBuilder: WebsocketParam.create)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wsUrl', protoName: 'wsUrl')
    ..hasRequiredFields = false
  ;

  WebcastResponse._() : super();
  factory WebcastResponse({
    $core.Iterable<Message>? messages,
    $core.String? cursor,
    $core.String? ackIds,
    WebsocketParam? wsParam,
    $core.String? wsUrl,
  }) {
    final _result = create();
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    if (cursor != null) {
      _result.cursor = cursor;
    }
    if (ackIds != null) {
      _result.ackIds = ackIds;
    }
    if (wsParam != null) {
      _result.wsParam = wsParam;
    }
    if (wsUrl != null) {
      _result.wsUrl = wsUrl;
    }
    return _result;
  }
  factory WebcastResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastResponse clone() => WebcastResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastResponse copyWith(void Function(WebcastResponse) updates) => super.copyWith((message) => updates(message as WebcastResponse)) as WebcastResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastResponse create() => WebcastResponse._();
  WebcastResponse createEmptyInstance() => create();
  static $pb.PbList<WebcastResponse> createRepeated() => $pb.PbList<WebcastResponse>();
  @$core.pragma('dart2js:noInline')
  static WebcastResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastResponse>(create);
  static WebcastResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Message> get messages => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get cursor => $_getSZ(1);
  @$pb.TagNumber(2)
  set cursor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCursor() => $_has(1);
  @$pb.TagNumber(2)
  void clearCursor() => clearField(2);

  @$pb.TagNumber(5)
  $core.String get ackIds => $_getSZ(2);
  @$pb.TagNumber(5)
  set ackIds($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasAckIds() => $_has(2);
  @$pb.TagNumber(5)
  void clearAckIds() => clearField(5);

  @$pb.TagNumber(7)
  WebsocketParam get wsParam => $_getN(3);
  @$pb.TagNumber(7)
  set wsParam(WebsocketParam v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasWsParam() => $_has(3);
  @$pb.TagNumber(7)
  void clearWsParam() => clearField(7);
  @$pb.TagNumber(7)
  WebsocketParam ensureWsParam() => $_ensure(3);

  @$pb.TagNumber(10)
  $core.String get wsUrl => $_getSZ(4);
  @$pb.TagNumber(10)
  set wsUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(10)
  $core.bool hasWsUrl() => $_has(4);
  @$pb.TagNumber(10)
  void clearWsUrl() => clearField(10);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'binary', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.String? type,
    $core.List<$core.int>? binary,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (binary != null) {
      _result.binary = binary;
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
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get binary => $_getN(1);
  @$pb.TagNumber(2)
  set binary($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBinary() => $_has(1);
  @$pb.TagNumber(2)
  void clearBinary() => clearField(2);
}

class WebsocketParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebsocketParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  WebsocketParam._() : super();
  factory WebsocketParam({
    $core.String? name,
    $core.String? value,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory WebsocketParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketParam clone() => WebsocketParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketParam copyWith(void Function(WebsocketParam) updates) => super.copyWith((message) => updates(message as WebsocketParam)) as WebsocketParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebsocketParam create() => WebsocketParam._();
  WebsocketParam createEmptyInstance() => create();
  static $pb.PbList<WebsocketParam> createRepeated() => $pb.PbList<WebsocketParam>();
  @$core.pragma('dart2js:noInline')
  static WebsocketParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketParam>(create);
  static WebsocketParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class WebcastControlMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastControlMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WebcastControlMessage._() : super();
  factory WebcastControlMessage({
    $core.int? action,
  }) {
    final _result = create();
    if (action != null) {
      _result.action = action;
    }
    return _result;
  }
  factory WebcastControlMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastControlMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastControlMessage clone() => WebcastControlMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastControlMessage copyWith(void Function(WebcastControlMessage) updates) => super.copyWith((message) => updates(message as WebcastControlMessage)) as WebcastControlMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastControlMessage create() => WebcastControlMessage._();
  WebcastControlMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastControlMessage> createRepeated() => $pb.PbList<WebcastControlMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastControlMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastControlMessage>(create);
  static WebcastControlMessage? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get action => $_getIZ(0);
  @$pb.TagNumber(2)
  set action($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
}

class WebcastRoomUserSeqMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastRoomUserSeqMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viewerCount', $pb.PbFieldType.O3, protoName: 'viewerCount')
    ..hasRequiredFields = false
  ;

  WebcastRoomUserSeqMessage._() : super();
  factory WebcastRoomUserSeqMessage({
    $core.int? viewerCount,
  }) {
    final _result = create();
    if (viewerCount != null) {
      _result.viewerCount = viewerCount;
    }
    return _result;
  }
  factory WebcastRoomUserSeqMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastRoomUserSeqMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastRoomUserSeqMessage clone() => WebcastRoomUserSeqMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastRoomUserSeqMessage copyWith(void Function(WebcastRoomUserSeqMessage) updates) => super.copyWith((message) => updates(message as WebcastRoomUserSeqMessage)) as WebcastRoomUserSeqMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastRoomUserSeqMessage create() => WebcastRoomUserSeqMessage._();
  WebcastRoomUserSeqMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastRoomUserSeqMessage> createRepeated() => $pb.PbList<WebcastRoomUserSeqMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastRoomUserSeqMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastRoomUserSeqMessage>(create);
  static WebcastRoomUserSeqMessage? _defaultInstance;

  @$pb.TagNumber(3)
  $core.int get viewerCount => $_getIZ(0);
  @$pb.TagNumber(3)
  set viewerCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasViewerCount() => $_has(0);
  @$pb.TagNumber(3)
  void clearViewerCount() => clearField(3);
}

class WebcastChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastChatMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  WebcastChatMessage._() : super();
  factory WebcastChatMessage({
    User? user,
    $core.String? comment,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    return _result;
  }
  factory WebcastChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastChatMessage clone() => WebcastChatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastChatMessage copyWith(void Function(WebcastChatMessage) updates) => super.copyWith((message) => updates(message as WebcastChatMessage)) as WebcastChatMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastChatMessage create() => WebcastChatMessage._();
  WebcastChatMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastChatMessage> createRepeated() => $pb.PbList<WebcastChatMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastChatMessage>(create);
  static WebcastChatMessage? _defaultInstance;

  @$pb.TagNumber(2)
  User get user => $_getN(0);
  @$pb.TagNumber(2)
  set user(User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  User ensureUser() => $_ensure(0);

  @$pb.TagNumber(3)
  $core.String get comment => $_getSZ(1);
  @$pb.TagNumber(3)
  set comment($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(3)
  void clearComment() => clearField(3);
}

class WebcastMemberMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastMemberMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<WebcastMessageEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', subBuilder: WebcastMessageEvent.create)
    ..aOM<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  WebcastMemberMessage._() : super();
  factory WebcastMemberMessage({
    WebcastMessageEvent? event,
    User? user,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory WebcastMemberMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastMemberMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastMemberMessage clone() => WebcastMemberMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastMemberMessage copyWith(void Function(WebcastMemberMessage) updates) => super.copyWith((message) => updates(message as WebcastMemberMessage)) as WebcastMemberMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastMemberMessage create() => WebcastMemberMessage._();
  WebcastMemberMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastMemberMessage> createRepeated() => $pb.PbList<WebcastMemberMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastMemberMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastMemberMessage>(create);
  static WebcastMemberMessage? _defaultInstance;

  @$pb.TagNumber(1)
  WebcastMessageEvent get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(WebcastMessageEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  WebcastMessageEvent ensureEvent() => $_ensure(0);

  @$pb.TagNumber(2)
  User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  User ensureUser() => $_ensure(1);
}

class WebcastGiftMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastGiftMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'giftId', $pb.PbFieldType.O3, protoName: 'giftId')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeatCount', $pb.PbFieldType.O3, protoName: 'repeatCount')
    ..aOM<User>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repeatEnd', $pb.PbFieldType.O3, protoName: 'repeatEnd')
    ..aOM<WebcastGiftMessageGiftDetails>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'giftDetails', protoName: 'giftDetails', subBuilder: WebcastGiftMessageGiftDetails.create)
    ..aOM<WebcastGiftMessageGiftExtra>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'giftExtra', protoName: 'giftExtra', subBuilder: WebcastGiftMessageGiftExtra.create)
    ..hasRequiredFields = false
  ;

  WebcastGiftMessage._() : super();
  factory WebcastGiftMessage({
    $core.int? giftId,
    $core.int? repeatCount,
    User? user,
    $core.int? repeatEnd,
    WebcastGiftMessageGiftDetails? giftDetails,
    WebcastGiftMessageGiftExtra? giftExtra,
  }) {
    final _result = create();
    if (giftId != null) {
      _result.giftId = giftId;
    }
    if (repeatCount != null) {
      _result.repeatCount = repeatCount;
    }
    if (user != null) {
      _result.user = user;
    }
    if (repeatEnd != null) {
      _result.repeatEnd = repeatEnd;
    }
    if (giftDetails != null) {
      _result.giftDetails = giftDetails;
    }
    if (giftExtra != null) {
      _result.giftExtra = giftExtra;
    }
    return _result;
  }
  factory WebcastGiftMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastGiftMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastGiftMessage clone() => WebcastGiftMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastGiftMessage copyWith(void Function(WebcastGiftMessage) updates) => super.copyWith((message) => updates(message as WebcastGiftMessage)) as WebcastGiftMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessage create() => WebcastGiftMessage._();
  WebcastGiftMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastGiftMessage> createRepeated() => $pb.PbList<WebcastGiftMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastGiftMessage>(create);
  static WebcastGiftMessage? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get giftId => $_getIZ(0);
  @$pb.TagNumber(2)
  set giftId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasGiftId() => $_has(0);
  @$pb.TagNumber(2)
  void clearGiftId() => clearField(2);

  @$pb.TagNumber(5)
  $core.int get repeatCount => $_getIZ(1);
  @$pb.TagNumber(5)
  set repeatCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasRepeatCount() => $_has(1);
  @$pb.TagNumber(5)
  void clearRepeatCount() => clearField(5);

  @$pb.TagNumber(7)
  User get user => $_getN(2);
  @$pb.TagNumber(7)
  set user(User v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(7)
  void clearUser() => clearField(7);
  @$pb.TagNumber(7)
  User ensureUser() => $_ensure(2);

  @$pb.TagNumber(9)
  $core.int get repeatEnd => $_getIZ(3);
  @$pb.TagNumber(9)
  set repeatEnd($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(9)
  $core.bool hasRepeatEnd() => $_has(3);
  @$pb.TagNumber(9)
  void clearRepeatEnd() => clearField(9);

  @$pb.TagNumber(15)
  WebcastGiftMessageGiftDetails get giftDetails => $_getN(4);
  @$pb.TagNumber(15)
  set giftDetails(WebcastGiftMessageGiftDetails v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasGiftDetails() => $_has(4);
  @$pb.TagNumber(15)
  void clearGiftDetails() => clearField(15);
  @$pb.TagNumber(15)
  WebcastGiftMessageGiftDetails ensureGiftDetails() => $_ensure(4);

  @$pb.TagNumber(23)
  WebcastGiftMessageGiftExtra get giftExtra => $_getN(5);
  @$pb.TagNumber(23)
  set giftExtra(WebcastGiftMessageGiftExtra v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasGiftExtra() => $_has(5);
  @$pb.TagNumber(23)
  void clearGiftExtra() => clearField(23);
  @$pb.TagNumber(23)
  WebcastGiftMessageGiftExtra ensureGiftExtra() => $_ensure(5);
}

class WebcastGiftMessageGiftExtra extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastGiftMessageGiftExtra', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverUserId', $pb.PbFieldType.OU6, protoName: 'receiverUserId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  WebcastGiftMessageGiftExtra._() : super();
  factory WebcastGiftMessageGiftExtra({
    $fixnum.Int64? timestamp,
    $fixnum.Int64? receiverUserId,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (receiverUserId != null) {
      _result.receiverUserId = receiverUserId;
    }
    return _result;
  }
  factory WebcastGiftMessageGiftExtra.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastGiftMessageGiftExtra.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastGiftMessageGiftExtra clone() => WebcastGiftMessageGiftExtra()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastGiftMessageGiftExtra copyWith(void Function(WebcastGiftMessageGiftExtra) updates) => super.copyWith((message) => updates(message as WebcastGiftMessageGiftExtra)) as WebcastGiftMessageGiftExtra; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessageGiftExtra create() => WebcastGiftMessageGiftExtra._();
  WebcastGiftMessageGiftExtra createEmptyInstance() => create();
  static $pb.PbList<WebcastGiftMessageGiftExtra> createRepeated() => $pb.PbList<WebcastGiftMessageGiftExtra>();
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessageGiftExtra getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastGiftMessageGiftExtra>(create);
  static WebcastGiftMessageGiftExtra? _defaultInstance;

  @$pb.TagNumber(6)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(6)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get receiverUserId => $_getI64(1);
  @$pb.TagNumber(8)
  set receiverUserId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(8)
  $core.bool hasReceiverUserId() => $_has(1);
  @$pb.TagNumber(8)
  void clearReceiverUserId() => clearField(8);
}

class WebcastGiftMessageGiftDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastGiftMessageGiftDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<WebcastGiftMessageGiftImage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'giftImage', protoName: 'giftImage', subBuilder: WebcastGiftMessageGiftImage.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'describe')
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'giftType', $pb.PbFieldType.O3, protoName: 'giftType')
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diamondCount', $pb.PbFieldType.O3, protoName: 'diamondCount')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'giftName', protoName: 'giftName')
    ..hasRequiredFields = false
  ;

  WebcastGiftMessageGiftDetails._() : super();
  factory WebcastGiftMessageGiftDetails({
    WebcastGiftMessageGiftImage? giftImage,
    $core.String? describe,
    $core.int? giftType,
    $core.int? diamondCount,
    $core.String? giftName,
  }) {
    final _result = create();
    if (giftImage != null) {
      _result.giftImage = giftImage;
    }
    if (describe != null) {
      _result.describe = describe;
    }
    if (giftType != null) {
      _result.giftType = giftType;
    }
    if (diamondCount != null) {
      _result.diamondCount = diamondCount;
    }
    if (giftName != null) {
      _result.giftName = giftName;
    }
    return _result;
  }
  factory WebcastGiftMessageGiftDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastGiftMessageGiftDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastGiftMessageGiftDetails clone() => WebcastGiftMessageGiftDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastGiftMessageGiftDetails copyWith(void Function(WebcastGiftMessageGiftDetails) updates) => super.copyWith((message) => updates(message as WebcastGiftMessageGiftDetails)) as WebcastGiftMessageGiftDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessageGiftDetails create() => WebcastGiftMessageGiftDetails._();
  WebcastGiftMessageGiftDetails createEmptyInstance() => create();
  static $pb.PbList<WebcastGiftMessageGiftDetails> createRepeated() => $pb.PbList<WebcastGiftMessageGiftDetails>();
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessageGiftDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastGiftMessageGiftDetails>(create);
  static WebcastGiftMessageGiftDetails? _defaultInstance;

  @$pb.TagNumber(1)
  WebcastGiftMessageGiftImage get giftImage => $_getN(0);
  @$pb.TagNumber(1)
  set giftImage(WebcastGiftMessageGiftImage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGiftImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearGiftImage() => clearField(1);
  @$pb.TagNumber(1)
  WebcastGiftMessageGiftImage ensureGiftImage() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get describe => $_getSZ(1);
  @$pb.TagNumber(2)
  set describe($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescribe() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescribe() => clearField(2);

  @$pb.TagNumber(11)
  $core.int get giftType => $_getIZ(2);
  @$pb.TagNumber(11)
  set giftType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(11)
  $core.bool hasGiftType() => $_has(2);
  @$pb.TagNumber(11)
  void clearGiftType() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get diamondCount => $_getIZ(3);
  @$pb.TagNumber(12)
  set diamondCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(12)
  $core.bool hasDiamondCount() => $_has(3);
  @$pb.TagNumber(12)
  void clearDiamondCount() => clearField(12);

  @$pb.TagNumber(16)
  $core.String get giftName => $_getSZ(4);
  @$pb.TagNumber(16)
  set giftName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(16)
  $core.bool hasGiftName() => $_has(4);
  @$pb.TagNumber(16)
  void clearGiftName() => clearField(16);
}

class WebcastGiftMessageGiftImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastGiftMessageGiftImage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'giftPictureUrl', protoName: 'giftPictureUrl')
    ..hasRequiredFields = false
  ;

  WebcastGiftMessageGiftImage._() : super();
  factory WebcastGiftMessageGiftImage({
    $core.String? giftPictureUrl,
  }) {
    final _result = create();
    if (giftPictureUrl != null) {
      _result.giftPictureUrl = giftPictureUrl;
    }
    return _result;
  }
  factory WebcastGiftMessageGiftImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastGiftMessageGiftImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastGiftMessageGiftImage clone() => WebcastGiftMessageGiftImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastGiftMessageGiftImage copyWith(void Function(WebcastGiftMessageGiftImage) updates) => super.copyWith((message) => updates(message as WebcastGiftMessageGiftImage)) as WebcastGiftMessageGiftImage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessageGiftImage create() => WebcastGiftMessageGiftImage._();
  WebcastGiftMessageGiftImage createEmptyInstance() => create();
  static $pb.PbList<WebcastGiftMessageGiftImage> createRepeated() => $pb.PbList<WebcastGiftMessageGiftImage>();
  @$core.pragma('dart2js:noInline')
  static WebcastGiftMessageGiftImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastGiftMessageGiftImage>(create);
  static WebcastGiftMessageGiftImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get giftPictureUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set giftPictureUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGiftPictureUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearGiftPictureUrl() => clearField(1);
}

class WebcastLinkMicBattle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLinkMicBattle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..pc<WebcastLinkMicBattleItems>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'battleUsers', $pb.PbFieldType.PM, protoName: 'battleUsers', subBuilder: WebcastLinkMicBattleItems.create)
    ..hasRequiredFields = false
  ;

  WebcastLinkMicBattle._() : super();
  factory WebcastLinkMicBattle({
    $core.Iterable<WebcastLinkMicBattleItems>? battleUsers,
  }) {
    final _result = create();
    if (battleUsers != null) {
      _result.battleUsers.addAll(battleUsers);
    }
    return _result;
  }
  factory WebcastLinkMicBattle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLinkMicBattle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLinkMicBattle clone() => WebcastLinkMicBattle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLinkMicBattle copyWith(void Function(WebcastLinkMicBattle) updates) => super.copyWith((message) => updates(message as WebcastLinkMicBattle)) as WebcastLinkMicBattle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicBattle create() => WebcastLinkMicBattle._();
  WebcastLinkMicBattle createEmptyInstance() => create();
  static $pb.PbList<WebcastLinkMicBattle> createRepeated() => $pb.PbList<WebcastLinkMicBattle>();
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicBattle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLinkMicBattle>(create);
  static WebcastLinkMicBattle? _defaultInstance;

  @$pb.TagNumber(10)
  $core.List<WebcastLinkMicBattleItems> get battleUsers => $_getList(0);
}

class WebcastLinkMicBattleItems extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLinkMicBattleItems', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<WebcastLinkMicBattleGroup>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'battleGroup', protoName: 'battleGroup', subBuilder: WebcastLinkMicBattleGroup.create)
    ..hasRequiredFields = false
  ;

  WebcastLinkMicBattleItems._() : super();
  factory WebcastLinkMicBattleItems({
    WebcastLinkMicBattleGroup? battleGroup,
  }) {
    final _result = create();
    if (battleGroup != null) {
      _result.battleGroup = battleGroup;
    }
    return _result;
  }
  factory WebcastLinkMicBattleItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLinkMicBattleItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLinkMicBattleItems clone() => WebcastLinkMicBattleItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLinkMicBattleItems copyWith(void Function(WebcastLinkMicBattleItems) updates) => super.copyWith((message) => updates(message as WebcastLinkMicBattleItems)) as WebcastLinkMicBattleItems; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicBattleItems create() => WebcastLinkMicBattleItems._();
  WebcastLinkMicBattleItems createEmptyInstance() => create();
  static $pb.PbList<WebcastLinkMicBattleItems> createRepeated() => $pb.PbList<WebcastLinkMicBattleItems>();
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicBattleItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLinkMicBattleItems>(create);
  static WebcastLinkMicBattleItems? _defaultInstance;

  @$pb.TagNumber(2)
  WebcastLinkMicBattleGroup get battleGroup => $_getN(0);
  @$pb.TagNumber(2)
  set battleGroup(WebcastLinkMicBattleGroup v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBattleGroup() => $_has(0);
  @$pb.TagNumber(2)
  void clearBattleGroup() => clearField(2);
  @$pb.TagNumber(2)
  WebcastLinkMicBattleGroup ensureBattleGroup() => $_ensure(0);
}

class WebcastLinkMicBattleGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLinkMicBattleGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<LinkUser>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: LinkUser.create)
    ..hasRequiredFields = false
  ;

  WebcastLinkMicBattleGroup._() : super();
  factory WebcastLinkMicBattleGroup({
    LinkUser? user,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory WebcastLinkMicBattleGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLinkMicBattleGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLinkMicBattleGroup clone() => WebcastLinkMicBattleGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLinkMicBattleGroup copyWith(void Function(WebcastLinkMicBattleGroup) updates) => super.copyWith((message) => updates(message as WebcastLinkMicBattleGroup)) as WebcastLinkMicBattleGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicBattleGroup create() => WebcastLinkMicBattleGroup._();
  WebcastLinkMicBattleGroup createEmptyInstance() => create();
  static $pb.PbList<WebcastLinkMicBattleGroup> createRepeated() => $pb.PbList<WebcastLinkMicBattleGroup>();
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicBattleGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLinkMicBattleGroup>(create);
  static WebcastLinkMicBattleGroup? _defaultInstance;

  @$pb.TagNumber(1)
  LinkUser get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(LinkUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  LinkUser ensureUser() => $_ensure(0);
}

class WebcastLinkMicArmies extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLinkMicArmies', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..pc<WebcastLinkMicArmiesItems>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'battleItems', $pb.PbFieldType.PM, protoName: 'battleItems', subBuilder: WebcastLinkMicArmiesItems.create)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'battleStatus', $pb.PbFieldType.O3, protoName: 'battleStatus')
    ..hasRequiredFields = false
  ;

  WebcastLinkMicArmies._() : super();
  factory WebcastLinkMicArmies({
    $core.Iterable<WebcastLinkMicArmiesItems>? battleItems,
    $core.int? battleStatus,
  }) {
    final _result = create();
    if (battleItems != null) {
      _result.battleItems.addAll(battleItems);
    }
    if (battleStatus != null) {
      _result.battleStatus = battleStatus;
    }
    return _result;
  }
  factory WebcastLinkMicArmies.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLinkMicArmies.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLinkMicArmies clone() => WebcastLinkMicArmies()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLinkMicArmies copyWith(void Function(WebcastLinkMicArmies) updates) => super.copyWith((message) => updates(message as WebcastLinkMicArmies)) as WebcastLinkMicArmies; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicArmies create() => WebcastLinkMicArmies._();
  WebcastLinkMicArmies createEmptyInstance() => create();
  static $pb.PbList<WebcastLinkMicArmies> createRepeated() => $pb.PbList<WebcastLinkMicArmies>();
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicArmies getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLinkMicArmies>(create);
  static WebcastLinkMicArmies? _defaultInstance;

  @$pb.TagNumber(3)
  $core.List<WebcastLinkMicArmiesItems> get battleItems => $_getList(0);

  @$pb.TagNumber(7)
  $core.int get battleStatus => $_getIZ(1);
  @$pb.TagNumber(7)
  set battleStatus($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(7)
  $core.bool hasBattleStatus() => $_has(1);
  @$pb.TagNumber(7)
  void clearBattleStatus() => clearField(7);
}

class WebcastLinkMicArmiesItems extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLinkMicArmiesItems', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostUserId', $pb.PbFieldType.OU6, protoName: 'hostUserId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<WebcastLinkMicArmiesGroup>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'battleGroups', $pb.PbFieldType.PM, protoName: 'battleGroups', subBuilder: WebcastLinkMicArmiesGroup.create)
    ..hasRequiredFields = false
  ;

  WebcastLinkMicArmiesItems._() : super();
  factory WebcastLinkMicArmiesItems({
    $fixnum.Int64? hostUserId,
    $core.Iterable<WebcastLinkMicArmiesGroup>? battleGroups,
  }) {
    final _result = create();
    if (hostUserId != null) {
      _result.hostUserId = hostUserId;
    }
    if (battleGroups != null) {
      _result.battleGroups.addAll(battleGroups);
    }
    return _result;
  }
  factory WebcastLinkMicArmiesItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLinkMicArmiesItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLinkMicArmiesItems clone() => WebcastLinkMicArmiesItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLinkMicArmiesItems copyWith(void Function(WebcastLinkMicArmiesItems) updates) => super.copyWith((message) => updates(message as WebcastLinkMicArmiesItems)) as WebcastLinkMicArmiesItems; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicArmiesItems create() => WebcastLinkMicArmiesItems._();
  WebcastLinkMicArmiesItems createEmptyInstance() => create();
  static $pb.PbList<WebcastLinkMicArmiesItems> createRepeated() => $pb.PbList<WebcastLinkMicArmiesItems>();
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicArmiesItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLinkMicArmiesItems>(create);
  static WebcastLinkMicArmiesItems? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get hostUserId => $_getI64(0);
  @$pb.TagNumber(1)
  set hostUserId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<WebcastLinkMicArmiesGroup> get battleGroups => $_getList(1);
}

class WebcastLinkMicArmiesGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLinkMicArmiesGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..pc<User>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'points', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WebcastLinkMicArmiesGroup._() : super();
  factory WebcastLinkMicArmiesGroup({
    $core.Iterable<User>? users,
    $core.int? points,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    if (points != null) {
      _result.points = points;
    }
    return _result;
  }
  factory WebcastLinkMicArmiesGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLinkMicArmiesGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLinkMicArmiesGroup clone() => WebcastLinkMicArmiesGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLinkMicArmiesGroup copyWith(void Function(WebcastLinkMicArmiesGroup) updates) => super.copyWith((message) => updates(message as WebcastLinkMicArmiesGroup)) as WebcastLinkMicArmiesGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicArmiesGroup create() => WebcastLinkMicArmiesGroup._();
  WebcastLinkMicArmiesGroup createEmptyInstance() => create();
  static $pb.PbList<WebcastLinkMicArmiesGroup> createRepeated() => $pb.PbList<WebcastLinkMicArmiesGroup>();
  @$core.pragma('dart2js:noInline')
  static WebcastLinkMicArmiesGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLinkMicArmiesGroup>(create);
  static WebcastLinkMicArmiesGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<User> get users => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get points => $_getIZ(1);
  @$pb.TagNumber(2)
  set points($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoints() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoints() => clearField(2);
}

class WebcastSocialMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastSocialMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<WebcastMessageEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', subBuilder: WebcastMessageEvent.create)
    ..aOM<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  WebcastSocialMessage._() : super();
  factory WebcastSocialMessage({
    WebcastMessageEvent? event,
    User? user,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory WebcastSocialMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastSocialMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastSocialMessage clone() => WebcastSocialMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastSocialMessage copyWith(void Function(WebcastSocialMessage) updates) => super.copyWith((message) => updates(message as WebcastSocialMessage)) as WebcastSocialMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastSocialMessage create() => WebcastSocialMessage._();
  WebcastSocialMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastSocialMessage> createRepeated() => $pb.PbList<WebcastSocialMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastSocialMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastSocialMessage>(create);
  static WebcastSocialMessage? _defaultInstance;

  @$pb.TagNumber(1)
  WebcastMessageEvent get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(WebcastMessageEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  WebcastMessageEvent ensureEvent() => $_ensure(0);

  @$pb.TagNumber(2)
  User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  User ensureUser() => $_ensure(1);
}

class WebcastLikeMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLikeMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<WebcastMessageEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', subBuilder: WebcastMessageEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'likeCount', $pb.PbFieldType.O3, protoName: 'likeCount')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalLikeCount', $pb.PbFieldType.O3, protoName: 'totalLikeCount')
    ..aOM<User>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  WebcastLikeMessage._() : super();
  factory WebcastLikeMessage({
    WebcastMessageEvent? event,
    $core.int? likeCount,
    $core.int? totalLikeCount,
    User? user,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    if (likeCount != null) {
      _result.likeCount = likeCount;
    }
    if (totalLikeCount != null) {
      _result.totalLikeCount = totalLikeCount;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory WebcastLikeMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLikeMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLikeMessage clone() => WebcastLikeMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLikeMessage copyWith(void Function(WebcastLikeMessage) updates) => super.copyWith((message) => updates(message as WebcastLikeMessage)) as WebcastLikeMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLikeMessage create() => WebcastLikeMessage._();
  WebcastLikeMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastLikeMessage> createRepeated() => $pb.PbList<WebcastLikeMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastLikeMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLikeMessage>(create);
  static WebcastLikeMessage? _defaultInstance;

  @$pb.TagNumber(1)
  WebcastMessageEvent get event => $_getN(0);
  @$pb.TagNumber(1)
  set event(WebcastMessageEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  WebcastMessageEvent ensureEvent() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get likeCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set likeCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLikeCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearLikeCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalLikeCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalLikeCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalLikeCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalLikeCount() => clearField(3);

  @$pb.TagNumber(5)
  User get user => $_getN(3);
  @$pb.TagNumber(5)
  set user(User v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(3);
  @$pb.TagNumber(5)
  void clearUser() => clearField(5);
  @$pb.TagNumber(5)
  User ensureUser() => $_ensure(3);
}

class WebcastQuestionNewMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastQuestionNewMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<QuestionDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questionDetails', protoName: 'questionDetails', subBuilder: QuestionDetails.create)
    ..hasRequiredFields = false
  ;

  WebcastQuestionNewMessage._() : super();
  factory WebcastQuestionNewMessage({
    QuestionDetails? questionDetails,
  }) {
    final _result = create();
    if (questionDetails != null) {
      _result.questionDetails = questionDetails;
    }
    return _result;
  }
  factory WebcastQuestionNewMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastQuestionNewMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastQuestionNewMessage clone() => WebcastQuestionNewMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastQuestionNewMessage copyWith(void Function(WebcastQuestionNewMessage) updates) => super.copyWith((message) => updates(message as WebcastQuestionNewMessage)) as WebcastQuestionNewMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastQuestionNewMessage create() => WebcastQuestionNewMessage._();
  WebcastQuestionNewMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastQuestionNewMessage> createRepeated() => $pb.PbList<WebcastQuestionNewMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastQuestionNewMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastQuestionNewMessage>(create);
  static WebcastQuestionNewMessage? _defaultInstance;

  @$pb.TagNumber(2)
  QuestionDetails get questionDetails => $_getN(0);
  @$pb.TagNumber(2)
  set questionDetails(QuestionDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuestionDetails() => $_has(0);
  @$pb.TagNumber(2)
  void clearQuestionDetails() => clearField(2);
  @$pb.TagNumber(2)
  QuestionDetails ensureQuestionDetails() => $_ensure(0);
}

class QuestionDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questionText', protoName: 'questionText')
    ..aOM<User>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  QuestionDetails._() : super();
  factory QuestionDetails({
    $core.String? questionText,
    User? user,
  }) {
    final _result = create();
    if (questionText != null) {
      _result.questionText = questionText;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory QuestionDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionDetails clone() => QuestionDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionDetails copyWith(void Function(QuestionDetails) updates) => super.copyWith((message) => updates(message as QuestionDetails)) as QuestionDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionDetails create() => QuestionDetails._();
  QuestionDetails createEmptyInstance() => create();
  static $pb.PbList<QuestionDetails> createRepeated() => $pb.PbList<QuestionDetails>();
  @$core.pragma('dart2js:noInline')
  static QuestionDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionDetails>(create);
  static QuestionDetails? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get questionText => $_getSZ(0);
  @$pb.TagNumber(2)
  set questionText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuestionText() => $_has(0);
  @$pb.TagNumber(2)
  void clearQuestionText() => clearField(2);

  @$pb.TagNumber(5)
  User get user => $_getN(1);
  @$pb.TagNumber(5)
  set user(User v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(5)
  void clearUser() => clearField(5);
  @$pb.TagNumber(5)
  User ensureUser() => $_ensure(1);
}

class WebcastMessageEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastMessageEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<WebcastMessageEventDetails>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventDetails', protoName: 'eventDetails', subBuilder: WebcastMessageEventDetails.create)
    ..hasRequiredFields = false
  ;

  WebcastMessageEvent._() : super();
  factory WebcastMessageEvent({
    WebcastMessageEventDetails? eventDetails,
  }) {
    final _result = create();
    if (eventDetails != null) {
      _result.eventDetails = eventDetails;
    }
    return _result;
  }
  factory WebcastMessageEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastMessageEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastMessageEvent clone() => WebcastMessageEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastMessageEvent copyWith(void Function(WebcastMessageEvent) updates) => super.copyWith((message) => updates(message as WebcastMessageEvent)) as WebcastMessageEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastMessageEvent create() => WebcastMessageEvent._();
  WebcastMessageEvent createEmptyInstance() => create();
  static $pb.PbList<WebcastMessageEvent> createRepeated() => $pb.PbList<WebcastMessageEvent>();
  @$core.pragma('dart2js:noInline')
  static WebcastMessageEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastMessageEvent>(create);
  static WebcastMessageEvent? _defaultInstance;

  @$pb.TagNumber(8)
  WebcastMessageEventDetails get eventDetails => $_getN(0);
  @$pb.TagNumber(8)
  set eventDetails(WebcastMessageEventDetails v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasEventDetails() => $_has(0);
  @$pb.TagNumber(8)
  void clearEventDetails() => clearField(8);
  @$pb.TagNumber(8)
  WebcastMessageEventDetails ensureEventDetails() => $_ensure(0);
}

class WebcastMessageEventDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastMessageEventDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayType', protoName: 'displayType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..hasRequiredFields = false
  ;

  WebcastMessageEventDetails._() : super();
  factory WebcastMessageEventDetails({
    $core.String? displayType,
    $core.String? label,
  }) {
    final _result = create();
    if (displayType != null) {
      _result.displayType = displayType;
    }
    if (label != null) {
      _result.label = label;
    }
    return _result;
  }
  factory WebcastMessageEventDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastMessageEventDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastMessageEventDetails clone() => WebcastMessageEventDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastMessageEventDetails copyWith(void Function(WebcastMessageEventDetails) updates) => super.copyWith((message) => updates(message as WebcastMessageEventDetails)) as WebcastMessageEventDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastMessageEventDetails create() => WebcastMessageEventDetails._();
  WebcastMessageEventDetails createEmptyInstance() => create();
  static $pb.PbList<WebcastMessageEventDetails> createRepeated() => $pb.PbList<WebcastMessageEventDetails>();
  @$core.pragma('dart2js:noInline')
  static WebcastMessageEventDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastMessageEventDetails>(create);
  static WebcastMessageEventDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayType => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisplayType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, protoName: 'userId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOM<ProfilePicture>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profilePicture', protoName: 'profilePicture', subBuilder: ProfilePicture.create)
    ..aOM<UserExtraAttributes>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraAttributes', protoName: 'extraAttributes', subBuilder: UserExtraAttributes.create)
    ..aOS(38, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uniqueId', protoName: 'uniqueId')
    ..aOM<UserBadgesAttributes>(64, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'badge', subBuilder: UserBadgesAttributes.create)
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $fixnum.Int64? userId,
    $core.String? nickname,
    ProfilePicture? profilePicture,
    UserExtraAttributes? extraAttributes,
    $core.String? uniqueId,
    UserBadgesAttributes? badge,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (profilePicture != null) {
      _result.profilePicture = profilePicture;
    }
    if (extraAttributes != null) {
      _result.extraAttributes = extraAttributes;
    }
    if (uniqueId != null) {
      _result.uniqueId = uniqueId;
    }
    if (badge != null) {
      _result.badge = badge;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get nickname => $_getSZ(1);
  @$pb.TagNumber(3)
  set nickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickname() => $_has(1);
  @$pb.TagNumber(3)
  void clearNickname() => clearField(3);

  @$pb.TagNumber(9)
  ProfilePicture get profilePicture => $_getN(2);
  @$pb.TagNumber(9)
  set profilePicture(ProfilePicture v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasProfilePicture() => $_has(2);
  @$pb.TagNumber(9)
  void clearProfilePicture() => clearField(9);
  @$pb.TagNumber(9)
  ProfilePicture ensureProfilePicture() => $_ensure(2);

  @$pb.TagNumber(22)
  UserExtraAttributes get extraAttributes => $_getN(3);
  @$pb.TagNumber(22)
  set extraAttributes(UserExtraAttributes v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasExtraAttributes() => $_has(3);
  @$pb.TagNumber(22)
  void clearExtraAttributes() => clearField(22);
  @$pb.TagNumber(22)
  UserExtraAttributes ensureExtraAttributes() => $_ensure(3);

  @$pb.TagNumber(38)
  $core.String get uniqueId => $_getSZ(4);
  @$pb.TagNumber(38)
  set uniqueId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(38)
  $core.bool hasUniqueId() => $_has(4);
  @$pb.TagNumber(38)
  void clearUniqueId() => clearField(38);

  @$pb.TagNumber(64)
  UserBadgesAttributes get badge => $_getN(5);
  @$pb.TagNumber(64)
  set badge(UserBadgesAttributes v) { setField(64, v); }
  @$pb.TagNumber(64)
  $core.bool hasBadge() => $_has(5);
  @$pb.TagNumber(64)
  void clearBadge() => clearField(64);
  @$pb.TagNumber(64)
  UserBadgesAttributes ensureBadge() => $_ensure(5);
}

class LinkUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LinkUser', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.OU6, protoName: 'userId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickname')
    ..aOM<ProfilePicture>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profilePicture', protoName: 'profilePicture', subBuilder: ProfilePicture.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uniqueId', protoName: 'uniqueId')
    ..hasRequiredFields = false
  ;

  LinkUser._() : super();
  factory LinkUser({
    $fixnum.Int64? userId,
    $core.String? nickname,
    ProfilePicture? profilePicture,
    $core.String? uniqueId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (nickname != null) {
      _result.nickname = nickname;
    }
    if (profilePicture != null) {
      _result.profilePicture = profilePicture;
    }
    if (uniqueId != null) {
      _result.uniqueId = uniqueId;
    }
    return _result;
  }
  factory LinkUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkUser clone() => LinkUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkUser copyWith(void Function(LinkUser) updates) => super.copyWith((message) => updates(message as LinkUser)) as LinkUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LinkUser create() => LinkUser._();
  LinkUser createEmptyInstance() => create();
  static $pb.PbList<LinkUser> createRepeated() => $pb.PbList<LinkUser>();
  @$core.pragma('dart2js:noInline')
  static LinkUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkUser>(create);
  static LinkUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickname => $_getSZ(1);
  @$pb.TagNumber(2)
  set nickname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNickname() => $_has(1);
  @$pb.TagNumber(2)
  void clearNickname() => clearField(2);

  @$pb.TagNumber(3)
  ProfilePicture get profilePicture => $_getN(2);
  @$pb.TagNumber(3)
  set profilePicture(ProfilePicture v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfilePicture() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfilePicture() => clearField(3);
  @$pb.TagNumber(3)
  ProfilePicture ensureProfilePicture() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get uniqueId => $_getSZ(3);
  @$pb.TagNumber(4)
  set uniqueId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUniqueId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUniqueId() => clearField(4);
}

class ProfilePicture extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProfilePicture', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'urls')
    ..hasRequiredFields = false
  ;

  ProfilePicture._() : super();
  factory ProfilePicture({
    $core.Iterable<$core.String>? urls,
  }) {
    final _result = create();
    if (urls != null) {
      _result.urls.addAll(urls);
    }
    return _result;
  }
  factory ProfilePicture.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProfilePicture.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProfilePicture clone() => ProfilePicture()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProfilePicture copyWith(void Function(ProfilePicture) updates) => super.copyWith((message) => updates(message as ProfilePicture)) as ProfilePicture; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProfilePicture create() => ProfilePicture._();
  ProfilePicture createEmptyInstance() => create();
  static $pb.PbList<ProfilePicture> createRepeated() => $pb.PbList<ProfilePicture>();
  @$core.pragma('dart2js:noInline')
  static ProfilePicture getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProfilePicture>(create);
  static ProfilePicture? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urls => $_getList(0);
}

class UserExtraAttributes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserExtraAttributes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'followRole', $pb.PbFieldType.O3, protoName: 'followRole')
    ..hasRequiredFields = false
  ;

  UserExtraAttributes._() : super();
  factory UserExtraAttributes({
    $core.int? followRole,
  }) {
    final _result = create();
    if (followRole != null) {
      _result.followRole = followRole;
    }
    return _result;
  }
  factory UserExtraAttributes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserExtraAttributes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserExtraAttributes clone() => UserExtraAttributes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserExtraAttributes copyWith(void Function(UserExtraAttributes) updates) => super.copyWith((message) => updates(message as UserExtraAttributes)) as UserExtraAttributes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserExtraAttributes create() => UserExtraAttributes._();
  UserExtraAttributes createEmptyInstance() => create();
  static $pb.PbList<UserExtraAttributes> createRepeated() => $pb.PbList<UserExtraAttributes>();
  @$core.pragma('dart2js:noInline')
  static UserExtraAttributes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserExtraAttributes>(create);
  static UserExtraAttributes? _defaultInstance;

  @$pb.TagNumber(3)
  $core.int get followRole => $_getIZ(0);
  @$pb.TagNumber(3)
  set followRole($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasFollowRole() => $_has(0);
  @$pb.TagNumber(3)
  void clearFollowRole() => clearField(3);
}

class UserBadgesAttributes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserBadgesAttributes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..pc<UserBadge>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'badges', $pb.PbFieldType.PM, subBuilder: UserBadge.create)
    ..hasRequiredFields = false
  ;

  UserBadgesAttributes._() : super();
  factory UserBadgesAttributes({
    $core.Iterable<UserBadge>? badges,
  }) {
    final _result = create();
    if (badges != null) {
      _result.badges.addAll(badges);
    }
    return _result;
  }
  factory UserBadgesAttributes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBadgesAttributes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBadgesAttributes clone() => UserBadgesAttributes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBadgesAttributes copyWith(void Function(UserBadgesAttributes) updates) => super.copyWith((message) => updates(message as UserBadgesAttributes)) as UserBadgesAttributes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserBadgesAttributes create() => UserBadgesAttributes._();
  UserBadgesAttributes createEmptyInstance() => create();
  static $pb.PbList<UserBadgesAttributes> createRepeated() => $pb.PbList<UserBadgesAttributes>();
  @$core.pragma('dart2js:noInline')
  static UserBadgesAttributes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBadgesAttributes>(create);
  static UserBadgesAttributes? _defaultInstance;

  @$pb.TagNumber(21)
  $core.List<UserBadge> get badges => $_getList(0);
}

class UserBadge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserBadge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  UserBadge._() : super();
  factory UserBadge({
    $core.String? type,
    $core.String? name,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory UserBadge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserBadge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserBadge clone() => UserBadge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserBadge copyWith(void Function(UserBadge) updates) => super.copyWith((message) => updates(message as UserBadge)) as UserBadge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserBadge create() => UserBadge._();
  UserBadge createEmptyInstance() => create();
  static $pb.PbList<UserBadge> createRepeated() => $pb.PbList<UserBadge>();
  @$core.pragma('dart2js:noInline')
  static UserBadge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserBadge>(create);
  static UserBadge? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class WebcastWebsocketMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastWebsocketMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'binary', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  WebcastWebsocketMessage._() : super();
  factory WebcastWebsocketMessage({
    $fixnum.Int64? id,
    $core.String? type,
    $core.List<$core.int>? binary,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (binary != null) {
      _result.binary = binary;
    }
    return _result;
  }
  factory WebcastWebsocketMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastWebsocketMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastWebsocketMessage clone() => WebcastWebsocketMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastWebsocketMessage copyWith(void Function(WebcastWebsocketMessage) updates) => super.copyWith((message) => updates(message as WebcastWebsocketMessage)) as WebcastWebsocketMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastWebsocketMessage create() => WebcastWebsocketMessage._();
  WebcastWebsocketMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastWebsocketMessage> createRepeated() => $pb.PbList<WebcastWebsocketMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastWebsocketMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastWebsocketMessage>(create);
  static WebcastWebsocketMessage? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(7)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(7)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get binary => $_getN(2);
  @$pb.TagNumber(8)
  set binary($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(8)
  $core.bool hasBinary() => $_has(2);
  @$pb.TagNumber(8)
  void clearBinary() => clearField(8);
}

class WebcastWebsocketAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastWebsocketAck', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..hasRequiredFields = false
  ;

  WebcastWebsocketAck._() : super();
  factory WebcastWebsocketAck({
    $fixnum.Int64? id,
    $core.String? type,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory WebcastWebsocketAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastWebsocketAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastWebsocketAck clone() => WebcastWebsocketAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastWebsocketAck copyWith(void Function(WebcastWebsocketAck) updates) => super.copyWith((message) => updates(message as WebcastWebsocketAck)) as WebcastWebsocketAck; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastWebsocketAck create() => WebcastWebsocketAck._();
  WebcastWebsocketAck createEmptyInstance() => create();
  static $pb.PbList<WebcastWebsocketAck> createRepeated() => $pb.PbList<WebcastWebsocketAck>();
  @$core.pragma('dart2js:noInline')
  static WebcastWebsocketAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastWebsocketAck>(create);
  static WebcastWebsocketAck? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(7)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(7)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);
}

class WebcastLiveIntroMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastLiveIntroMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<User>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  WebcastLiveIntroMessage._() : super();
  factory WebcastLiveIntroMessage({
    $fixnum.Int64? id,
    $core.String? description,
    User? user,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (description != null) {
      _result.description = description;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory WebcastLiveIntroMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastLiveIntroMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastLiveIntroMessage clone() => WebcastLiveIntroMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastLiveIntroMessage copyWith(void Function(WebcastLiveIntroMessage) updates) => super.copyWith((message) => updates(message as WebcastLiveIntroMessage)) as WebcastLiveIntroMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastLiveIntroMessage create() => WebcastLiveIntroMessage._();
  WebcastLiveIntroMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastLiveIntroMessage> createRepeated() => $pb.PbList<WebcastLiveIntroMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastLiveIntroMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastLiveIntroMessage>(create);
  static WebcastLiveIntroMessage? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  User get user => $_getN(2);
  @$pb.TagNumber(5)
  set user(User v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(5)
  void clearUser() => clearField(5);
  @$pb.TagNumber(5)
  User ensureUser() => $_ensure(2);
}

class SystemMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SystemMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  SystemMessage._() : super();
  factory SystemMessage({
    $core.String? description,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory SystemMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SystemMessage clone() => SystemMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SystemMessage copyWith(void Function(SystemMessage) updates) => super.copyWith((message) => updates(message as SystemMessage)) as SystemMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SystemMessage create() => SystemMessage._();
  SystemMessage createEmptyInstance() => create();
  static $pb.PbList<SystemMessage> createRepeated() => $pb.PbList<SystemMessage>();
  @$core.pragma('dart2js:noInline')
  static SystemMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemMessage>(create);
  static SystemMessage? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

class WebcastInRoomBannerMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastInRoomBannerMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data')
    ..hasRequiredFields = false
  ;

  WebcastInRoomBannerMessage._() : super();
  factory WebcastInRoomBannerMessage({
    $core.String? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory WebcastInRoomBannerMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastInRoomBannerMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastInRoomBannerMessage clone() => WebcastInRoomBannerMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastInRoomBannerMessage copyWith(void Function(WebcastInRoomBannerMessage) updates) => super.copyWith((message) => updates(message as WebcastInRoomBannerMessage)) as WebcastInRoomBannerMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastInRoomBannerMessage create() => WebcastInRoomBannerMessage._();
  WebcastInRoomBannerMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastInRoomBannerMessage> createRepeated() => $pb.PbList<WebcastInRoomBannerMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastInRoomBannerMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastInRoomBannerMessage>(create);
  static WebcastInRoomBannerMessage? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class RankItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RankItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'colour')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  RankItem._() : super();
  factory RankItem({
    $core.String? colour,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (colour != null) {
      _result.colour = colour;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory RankItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RankItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RankItem clone() => RankItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RankItem copyWith(void Function(RankItem) updates) => super.copyWith((message) => updates(message as RankItem)) as RankItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RankItem create() => RankItem._();
  RankItem createEmptyInstance() => create();
  static $pb.PbList<RankItem> createRepeated() => $pb.PbList<RankItem>();
  @$core.pragma('dart2js:noInline')
  static RankItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankItem>(create);
  static RankItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get colour => $_getSZ(0);
  @$pb.TagNumber(1)
  set colour($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasColour() => $_has(0);
  @$pb.TagNumber(1)
  void clearColour() => clearField(1);

  @$pb.TagNumber(4)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(4)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);
}

class WeeklyRanking extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WeeklyRanking', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOM<RankItem>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rank', subBuilder: RankItem.create)
    ..hasRequiredFields = false
  ;

  WeeklyRanking._() : super();
  factory WeeklyRanking({
    $core.String? type,
    $core.String? label,
    RankItem? rank,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (label != null) {
      _result.label = label;
    }
    if (rank != null) {
      _result.rank = rank;
    }
    return _result;
  }
  factory WeeklyRanking.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WeeklyRanking.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WeeklyRanking clone() => WeeklyRanking()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WeeklyRanking copyWith(void Function(WeeklyRanking) updates) => super.copyWith((message) => updates(message as WeeklyRanking)) as WeeklyRanking; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WeeklyRanking create() => WeeklyRanking._();
  WeeklyRanking createEmptyInstance() => create();
  static $pb.PbList<WeeklyRanking> createRepeated() => $pb.PbList<WeeklyRanking>();
  @$core.pragma('dart2js:noInline')
  static WeeklyRanking getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeeklyRanking>(create);
  static WeeklyRanking? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);

  @$pb.TagNumber(3)
  RankItem get rank => $_getN(2);
  @$pb.TagNumber(3)
  set rank(RankItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRank() => $_has(2);
  @$pb.TagNumber(3)
  void clearRank() => clearField(3);
  @$pb.TagNumber(3)
  RankItem ensureRank() => $_ensure(2);
}

class RankContainer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RankContainer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<WeeklyRanking>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rankings', subBuilder: WeeklyRanking.create)
    ..hasRequiredFields = false
  ;

  RankContainer._() : super();
  factory RankContainer({
    WeeklyRanking? rankings,
  }) {
    final _result = create();
    if (rankings != null) {
      _result.rankings = rankings;
    }
    return _result;
  }
  factory RankContainer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RankContainer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RankContainer clone() => RankContainer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RankContainer copyWith(void Function(RankContainer) updates) => super.copyWith((message) => updates(message as RankContainer)) as RankContainer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RankContainer create() => RankContainer._();
  RankContainer createEmptyInstance() => create();
  static $pb.PbList<RankContainer> createRepeated() => $pb.PbList<RankContainer>();
  @$core.pragma('dart2js:noInline')
  static RankContainer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankContainer>(create);
  static RankContainer? _defaultInstance;

  @$pb.TagNumber(4)
  WeeklyRanking get rankings => $_getN(0);
  @$pb.TagNumber(4)
  set rankings(WeeklyRanking v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRankings() => $_has(0);
  @$pb.TagNumber(4)
  void clearRankings() => clearField(4);
  @$pb.TagNumber(4)
  WeeklyRanking ensureRankings() => $_ensure(0);
}

class WebcastHourlyRankMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WebcastHourlyRankMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TikTok'), createEmptyInstance: create)
    ..aOM<RankContainer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: RankContainer.create)
    ..hasRequiredFields = false
  ;

  WebcastHourlyRankMessage._() : super();
  factory WebcastHourlyRankMessage({
    RankContainer? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory WebcastHourlyRankMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebcastHourlyRankMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebcastHourlyRankMessage clone() => WebcastHourlyRankMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebcastHourlyRankMessage copyWith(void Function(WebcastHourlyRankMessage) updates) => super.copyWith((message) => updates(message as WebcastHourlyRankMessage)) as WebcastHourlyRankMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WebcastHourlyRankMessage create() => WebcastHourlyRankMessage._();
  WebcastHourlyRankMessage createEmptyInstance() => create();
  static $pb.PbList<WebcastHourlyRankMessage> createRepeated() => $pb.PbList<WebcastHourlyRankMessage>();
  @$core.pragma('dart2js:noInline')
  static WebcastHourlyRankMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebcastHourlyRankMessage>(create);
  static WebcastHourlyRankMessage? _defaultInstance;

  @$pb.TagNumber(2)
  RankContainer get data => $_getN(0);
  @$pb.TagNumber(2)
  set data(RankContainer v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  RankContainer ensureData() => $_ensure(0);
}

