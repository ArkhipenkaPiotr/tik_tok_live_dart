///
//  Generated code. Do not modify.
//  source: lib/src/proto/tiktok_schema.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use webcastResponseDescriptor instead')
const WebcastResponse$json = const {
  '1': 'WebcastResponse',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.TikTok.Message', '10': 'messages'},
    const {'1': 'cursor', '3': 2, '4': 1, '5': 9, '10': 'cursor'},
    const {'1': 'ackIds', '3': 5, '4': 1, '5': 9, '10': 'ackIds'},
    const {'1': 'wsParam', '3': 7, '4': 1, '5': 11, '6': '.TikTok.WebsocketParam', '10': 'wsParam'},
    const {'1': 'wsUrl', '3': 10, '4': 1, '5': 9, '10': 'wsUrl'},
  ],
};

/// Descriptor for `WebcastResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastResponseDescriptor = $convert.base64Decode('Cg9XZWJjYXN0UmVzcG9uc2USKwoIbWVzc2FnZXMYASADKAsyDy5UaWtUb2suTWVzc2FnZVIIbWVzc2FnZXMSFgoGY3Vyc29yGAIgASgJUgZjdXJzb3ISFgoGYWNrSWRzGAUgASgJUgZhY2tJZHMSMAoHd3NQYXJhbRgHIAEoCzIWLlRpa1Rvay5XZWJzb2NrZXRQYXJhbVIHd3NQYXJhbRIUCgV3c1VybBgKIAEoCVIFd3NVcmw=');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'binary', '3': 2, '4': 1, '5': 12, '10': 'binary'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGYmluYXJ5GAIgASgMUgZiaW5hcnk=');
@$core.Deprecated('Use websocketParamDescriptor instead')
const WebsocketParam$json = const {
  '1': 'WebsocketParam',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `WebsocketParam`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketParamDescriptor = $convert.base64Decode('Cg5XZWJzb2NrZXRQYXJhbRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBXZhbHVlGAIgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use webcastControlMessageDescriptor instead')
const WebcastControlMessage$json = const {
  '1': 'WebcastControlMessage',
  '2': const [
    const {'1': 'action', '3': 2, '4': 1, '5': 5, '10': 'action'},
  ],
};

/// Descriptor for `WebcastControlMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastControlMessageDescriptor = $convert.base64Decode('ChVXZWJjYXN0Q29udHJvbE1lc3NhZ2USFgoGYWN0aW9uGAIgASgFUgZhY3Rpb24=');
@$core.Deprecated('Use webcastRoomUserSeqMessageDescriptor instead')
const WebcastRoomUserSeqMessage$json = const {
  '1': 'WebcastRoomUserSeqMessage',
  '2': const [
    const {'1': 'viewerCount', '3': 3, '4': 1, '5': 5, '10': 'viewerCount'},
  ],
};

/// Descriptor for `WebcastRoomUserSeqMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastRoomUserSeqMessageDescriptor = $convert.base64Decode('ChlXZWJjYXN0Um9vbVVzZXJTZXFNZXNzYWdlEiAKC3ZpZXdlckNvdW50GAMgASgFUgt2aWV3ZXJDb3VudA==');
@$core.Deprecated('Use webcastChatMessageDescriptor instead')
const WebcastChatMessage$json = const {
  '1': 'WebcastChatMessage',
  '2': const [
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.TikTok.User', '10': 'user'},
    const {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `WebcastChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastChatMessageDescriptor = $convert.base64Decode('ChJXZWJjYXN0Q2hhdE1lc3NhZ2USIAoEdXNlchgCIAEoCzIMLlRpa1Rvay5Vc2VyUgR1c2VyEhgKB2NvbW1lbnQYAyABKAlSB2NvbW1lbnQ=');
@$core.Deprecated('Use webcastMemberMessageDescriptor instead')
const WebcastMemberMessage$json = const {
  '1': 'WebcastMemberMessage',
  '2': const [
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.TikTok.User', '10': 'user'},
    const {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.TikTok.WebcastMessageEvent', '10': 'event'},
  ],
};

/// Descriptor for `WebcastMemberMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastMemberMessageDescriptor = $convert.base64Decode('ChRXZWJjYXN0TWVtYmVyTWVzc2FnZRIgCgR1c2VyGAIgASgLMgwuVGlrVG9rLlVzZXJSBHVzZXISMQoFZXZlbnQYASABKAsyGy5UaWtUb2suV2ViY2FzdE1lc3NhZ2VFdmVudFIFZXZlbnQ=');
@$core.Deprecated('Use webcastGiftMessageDescriptor instead')
const WebcastGiftMessage$json = const {
  '1': 'WebcastGiftMessage',
  '2': const [
    const {'1': 'user', '3': 7, '4': 1, '5': 11, '6': '.TikTok.User', '10': 'user'},
    const {'1': 'giftId', '3': 2, '4': 1, '5': 5, '10': 'giftId'},
    const {'1': 'repeatCount', '3': 5, '4': 1, '5': 5, '10': 'repeatCount'},
    const {'1': 'repeatEnd', '3': 9, '4': 1, '5': 5, '10': 'repeatEnd'},
    const {'1': 'giftDetails', '3': 15, '4': 1, '5': 11, '6': '.TikTok.WebcastGiftMessageGiftDetails', '10': 'giftDetails'},
    const {'1': 'giftExtra', '3': 23, '4': 1, '5': 11, '6': '.TikTok.WebcastGiftMessageGiftExtra', '10': 'giftExtra'},
  ],
};

/// Descriptor for `WebcastGiftMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastGiftMessageDescriptor = $convert.base64Decode('ChJXZWJjYXN0R2lmdE1lc3NhZ2USIAoEdXNlchgHIAEoCzIMLlRpa1Rvay5Vc2VyUgR1c2VyEhYKBmdpZnRJZBgCIAEoBVIGZ2lmdElkEiAKC3JlcGVhdENvdW50GAUgASgFUgtyZXBlYXRDb3VudBIcCglyZXBlYXRFbmQYCSABKAVSCXJlcGVhdEVuZBJHCgtnaWZ0RGV0YWlscxgPIAEoCzIlLlRpa1Rvay5XZWJjYXN0R2lmdE1lc3NhZ2VHaWZ0RGV0YWlsc1ILZ2lmdERldGFpbHMSQQoJZ2lmdEV4dHJhGBcgASgLMiMuVGlrVG9rLldlYmNhc3RHaWZ0TWVzc2FnZUdpZnRFeHRyYVIJZ2lmdEV4dHJh');
@$core.Deprecated('Use webcastGiftMessageGiftExtraDescriptor instead')
const WebcastGiftMessageGiftExtra$json = const {
  '1': 'WebcastGiftMessageGiftExtra',
  '2': const [
    const {'1': 'timestamp', '3': 6, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'receiverUserId', '3': 8, '4': 1, '5': 4, '10': 'receiverUserId'},
  ],
};

/// Descriptor for `WebcastGiftMessageGiftExtra`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastGiftMessageGiftExtraDescriptor = $convert.base64Decode('ChtXZWJjYXN0R2lmdE1lc3NhZ2VHaWZ0RXh0cmESHAoJdGltZXN0YW1wGAYgASgEUgl0aW1lc3RhbXASJgoOcmVjZWl2ZXJVc2VySWQYCCABKARSDnJlY2VpdmVyVXNlcklk');
@$core.Deprecated('Use webcastGiftMessageGiftDetailsDescriptor instead')
const WebcastGiftMessageGiftDetails$json = const {
  '1': 'WebcastGiftMessageGiftDetails',
  '2': const [
    const {'1': 'giftImage', '3': 1, '4': 1, '5': 11, '6': '.TikTok.WebcastGiftMessageGiftImage', '10': 'giftImage'},
    const {'1': 'giftName', '3': 16, '4': 1, '5': 9, '10': 'giftName'},
    const {'1': 'describe', '3': 2, '4': 1, '5': 9, '10': 'describe'},
    const {'1': 'giftType', '3': 11, '4': 1, '5': 5, '10': 'giftType'},
    const {'1': 'diamondCount', '3': 12, '4': 1, '5': 5, '10': 'diamondCount'},
  ],
};

/// Descriptor for `WebcastGiftMessageGiftDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastGiftMessageGiftDetailsDescriptor = $convert.base64Decode('Ch1XZWJjYXN0R2lmdE1lc3NhZ2VHaWZ0RGV0YWlscxJBCglnaWZ0SW1hZ2UYASABKAsyIy5UaWtUb2suV2ViY2FzdEdpZnRNZXNzYWdlR2lmdEltYWdlUglnaWZ0SW1hZ2USGgoIZ2lmdE5hbWUYECABKAlSCGdpZnROYW1lEhoKCGRlc2NyaWJlGAIgASgJUghkZXNjcmliZRIaCghnaWZ0VHlwZRgLIAEoBVIIZ2lmdFR5cGUSIgoMZGlhbW9uZENvdW50GAwgASgFUgxkaWFtb25kQ291bnQ=');
@$core.Deprecated('Use webcastGiftMessageGiftImageDescriptor instead')
const WebcastGiftMessageGiftImage$json = const {
  '1': 'WebcastGiftMessageGiftImage',
  '2': const [
    const {'1': 'giftPictureUrl', '3': 1, '4': 1, '5': 9, '10': 'giftPictureUrl'},
  ],
};

/// Descriptor for `WebcastGiftMessageGiftImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastGiftMessageGiftImageDescriptor = $convert.base64Decode('ChtXZWJjYXN0R2lmdE1lc3NhZ2VHaWZ0SW1hZ2USJgoOZ2lmdFBpY3R1cmVVcmwYASABKAlSDmdpZnRQaWN0dXJlVXJs');
@$core.Deprecated('Use webcastLinkMicBattleDescriptor instead')
const WebcastLinkMicBattle$json = const {
  '1': 'WebcastLinkMicBattle',
  '2': const [
    const {'1': 'battleUsers', '3': 10, '4': 3, '5': 11, '6': '.TikTok.WebcastLinkMicBattleItems', '10': 'battleUsers'},
  ],
};

/// Descriptor for `WebcastLinkMicBattle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLinkMicBattleDescriptor = $convert.base64Decode('ChRXZWJjYXN0TGlua01pY0JhdHRsZRJDCgtiYXR0bGVVc2VycxgKIAMoCzIhLlRpa1Rvay5XZWJjYXN0TGlua01pY0JhdHRsZUl0ZW1zUgtiYXR0bGVVc2Vycw==');
@$core.Deprecated('Use webcastLinkMicBattleItemsDescriptor instead')
const WebcastLinkMicBattleItems$json = const {
  '1': 'WebcastLinkMicBattleItems',
  '2': const [
    const {'1': 'battleGroup', '3': 2, '4': 1, '5': 11, '6': '.TikTok.WebcastLinkMicBattleGroup', '10': 'battleGroup'},
  ],
};

/// Descriptor for `WebcastLinkMicBattleItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLinkMicBattleItemsDescriptor = $convert.base64Decode('ChlXZWJjYXN0TGlua01pY0JhdHRsZUl0ZW1zEkMKC2JhdHRsZUdyb3VwGAIgASgLMiEuVGlrVG9rLldlYmNhc3RMaW5rTWljQmF0dGxlR3JvdXBSC2JhdHRsZUdyb3Vw');
@$core.Deprecated('Use webcastLinkMicBattleGroupDescriptor instead')
const WebcastLinkMicBattleGroup$json = const {
  '1': 'WebcastLinkMicBattleGroup',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.TikTok.LinkUser', '10': 'user'},
  ],
};

/// Descriptor for `WebcastLinkMicBattleGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLinkMicBattleGroupDescriptor = $convert.base64Decode('ChlXZWJjYXN0TGlua01pY0JhdHRsZUdyb3VwEiQKBHVzZXIYASABKAsyEC5UaWtUb2suTGlua1VzZXJSBHVzZXI=');
@$core.Deprecated('Use webcastLinkMicArmiesDescriptor instead')
const WebcastLinkMicArmies$json = const {
  '1': 'WebcastLinkMicArmies',
  '2': const [
    const {'1': 'battleItems', '3': 3, '4': 3, '5': 11, '6': '.TikTok.WebcastLinkMicArmiesItems', '10': 'battleItems'},
    const {'1': 'battleStatus', '3': 7, '4': 1, '5': 5, '10': 'battleStatus'},
  ],
};

/// Descriptor for `WebcastLinkMicArmies`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLinkMicArmiesDescriptor = $convert.base64Decode('ChRXZWJjYXN0TGlua01pY0FybWllcxJDCgtiYXR0bGVJdGVtcxgDIAMoCzIhLlRpa1Rvay5XZWJjYXN0TGlua01pY0FybWllc0l0ZW1zUgtiYXR0bGVJdGVtcxIiCgxiYXR0bGVTdGF0dXMYByABKAVSDGJhdHRsZVN0YXR1cw==');
@$core.Deprecated('Use webcastLinkMicArmiesItemsDescriptor instead')
const WebcastLinkMicArmiesItems$json = const {
  '1': 'WebcastLinkMicArmiesItems',
  '2': const [
    const {'1': 'hostUserId', '3': 1, '4': 1, '5': 4, '10': 'hostUserId'},
    const {'1': 'battleGroups', '3': 2, '4': 3, '5': 11, '6': '.TikTok.WebcastLinkMicArmiesGroup', '10': 'battleGroups'},
  ],
};

/// Descriptor for `WebcastLinkMicArmiesItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLinkMicArmiesItemsDescriptor = $convert.base64Decode('ChlXZWJjYXN0TGlua01pY0FybWllc0l0ZW1zEh4KCmhvc3RVc2VySWQYASABKARSCmhvc3RVc2VySWQSRQoMYmF0dGxlR3JvdXBzGAIgAygLMiEuVGlrVG9rLldlYmNhc3RMaW5rTWljQXJtaWVzR3JvdXBSDGJhdHRsZUdyb3Vwcw==');
@$core.Deprecated('Use webcastLinkMicArmiesGroupDescriptor instead')
const WebcastLinkMicArmiesGroup$json = const {
  '1': 'WebcastLinkMicArmiesGroup',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.TikTok.User', '10': 'users'},
    const {'1': 'points', '3': 2, '4': 1, '5': 5, '10': 'points'},
  ],
};

/// Descriptor for `WebcastLinkMicArmiesGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLinkMicArmiesGroupDescriptor = $convert.base64Decode('ChlXZWJjYXN0TGlua01pY0FybWllc0dyb3VwEiIKBXVzZXJzGAEgAygLMgwuVGlrVG9rLlVzZXJSBXVzZXJzEhYKBnBvaW50cxgCIAEoBVIGcG9pbnRz');
@$core.Deprecated('Use webcastSocialMessageDescriptor instead')
const WebcastSocialMessage$json = const {
  '1': 'WebcastSocialMessage',
  '2': const [
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.TikTok.User', '10': 'user'},
    const {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.TikTok.WebcastMessageEvent', '10': 'event'},
  ],
};

/// Descriptor for `WebcastSocialMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastSocialMessageDescriptor = $convert.base64Decode('ChRXZWJjYXN0U29jaWFsTWVzc2FnZRIgCgR1c2VyGAIgASgLMgwuVGlrVG9rLlVzZXJSBHVzZXISMQoFZXZlbnQYASABKAsyGy5UaWtUb2suV2ViY2FzdE1lc3NhZ2VFdmVudFIFZXZlbnQ=');
@$core.Deprecated('Use webcastLikeMessageDescriptor instead')
const WebcastLikeMessage$json = const {
  '1': 'WebcastLikeMessage',
  '2': const [
    const {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.TikTok.User', '10': 'user'},
    const {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.TikTok.WebcastMessageEvent', '10': 'event'},
    const {'1': 'likeCount', '3': 2, '4': 1, '5': 5, '10': 'likeCount'},
    const {'1': 'totalLikeCount', '3': 3, '4': 1, '5': 5, '10': 'totalLikeCount'},
  ],
};

/// Descriptor for `WebcastLikeMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLikeMessageDescriptor = $convert.base64Decode('ChJXZWJjYXN0TGlrZU1lc3NhZ2USIAoEdXNlchgFIAEoCzIMLlRpa1Rvay5Vc2VyUgR1c2VyEjEKBWV2ZW50GAEgASgLMhsuVGlrVG9rLldlYmNhc3RNZXNzYWdlRXZlbnRSBWV2ZW50EhwKCWxpa2VDb3VudBgCIAEoBVIJbGlrZUNvdW50EiYKDnRvdGFsTGlrZUNvdW50GAMgASgFUg50b3RhbExpa2VDb3VudA==');
@$core.Deprecated('Use webcastQuestionNewMessageDescriptor instead')
const WebcastQuestionNewMessage$json = const {
  '1': 'WebcastQuestionNewMessage',
  '2': const [
    const {'1': 'questionDetails', '3': 2, '4': 1, '5': 11, '6': '.TikTok.QuestionDetails', '10': 'questionDetails'},
  ],
};

/// Descriptor for `WebcastQuestionNewMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastQuestionNewMessageDescriptor = $convert.base64Decode('ChlXZWJjYXN0UXVlc3Rpb25OZXdNZXNzYWdlEkEKD3F1ZXN0aW9uRGV0YWlscxgCIAEoCzIXLlRpa1Rvay5RdWVzdGlvbkRldGFpbHNSD3F1ZXN0aW9uRGV0YWlscw==');
@$core.Deprecated('Use questionDetailsDescriptor instead')
const QuestionDetails$json = const {
  '1': 'QuestionDetails',
  '2': const [
    const {'1': 'questionText', '3': 2, '4': 1, '5': 9, '10': 'questionText'},
    const {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.TikTok.User', '10': 'user'},
  ],
};

/// Descriptor for `QuestionDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionDetailsDescriptor = $convert.base64Decode('Cg9RdWVzdGlvbkRldGFpbHMSIgoMcXVlc3Rpb25UZXh0GAIgASgJUgxxdWVzdGlvblRleHQSIAoEdXNlchgFIAEoCzIMLlRpa1Rvay5Vc2VyUgR1c2Vy');
@$core.Deprecated('Use webcastMessageEventDescriptor instead')
const WebcastMessageEvent$json = const {
  '1': 'WebcastMessageEvent',
  '2': const [
    const {'1': 'eventDetails', '3': 8, '4': 1, '5': 11, '6': '.TikTok.WebcastMessageEventDetails', '10': 'eventDetails'},
  ],
};

/// Descriptor for `WebcastMessageEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastMessageEventDescriptor = $convert.base64Decode('ChNXZWJjYXN0TWVzc2FnZUV2ZW50EkYKDGV2ZW50RGV0YWlscxgIIAEoCzIiLlRpa1Rvay5XZWJjYXN0TWVzc2FnZUV2ZW50RGV0YWlsc1IMZXZlbnREZXRhaWxz');
@$core.Deprecated('Use webcastMessageEventDetailsDescriptor instead')
const WebcastMessageEventDetails$json = const {
  '1': 'WebcastMessageEventDetails',
  '2': const [
    const {'1': 'displayType', '3': 1, '4': 1, '5': 9, '10': 'displayType'},
    const {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `WebcastMessageEventDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastMessageEventDetailsDescriptor = $convert.base64Decode('ChpXZWJjYXN0TWVzc2FnZUV2ZW50RGV0YWlscxIgCgtkaXNwbGF5VHlwZRgBIAEoCVILZGlzcGxheVR5cGUSFAoFbGFiZWwYAiABKAlSBWxhYmVs');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    const {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'profilePicture', '3': 9, '4': 1, '5': 11, '6': '.TikTok.ProfilePicture', '10': 'profilePicture'},
    const {'1': 'extraAttributes', '3': 22, '4': 1, '5': 11, '6': '.TikTok.UserExtraAttributes', '10': 'extraAttributes'},
    const {'1': 'badge', '3': 64, '4': 1, '5': 11, '6': '.TikTok.UserBadgesAttributes', '10': 'badge'},
    const {'1': 'uniqueId', '3': 38, '4': 1, '5': 9, '10': 'uniqueId'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhYKBnVzZXJJZBgBIAEoBFIGdXNlcklkEhoKCG5pY2tuYW1lGAMgASgJUghuaWNrbmFtZRI+Cg5wcm9maWxlUGljdHVyZRgJIAEoCzIWLlRpa1Rvay5Qcm9maWxlUGljdHVyZVIOcHJvZmlsZVBpY3R1cmUSRQoPZXh0cmFBdHRyaWJ1dGVzGBYgASgLMhsuVGlrVG9rLlVzZXJFeHRyYUF0dHJpYnV0ZXNSD2V4dHJhQXR0cmlidXRlcxIyCgViYWRnZRhAIAEoCzIcLlRpa1Rvay5Vc2VyQmFkZ2VzQXR0cmlidXRlc1IFYmFkZ2USGgoIdW5pcXVlSWQYJiABKAlSCHVuaXF1ZUlk');
@$core.Deprecated('Use linkUserDescriptor instead')
const LinkUser$json = const {
  '1': 'LinkUser',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 4, '10': 'userId'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'profilePicture', '3': 3, '4': 1, '5': 11, '6': '.TikTok.ProfilePicture', '10': 'profilePicture'},
    const {'1': 'uniqueId', '3': 4, '4': 1, '5': 9, '10': 'uniqueId'},
  ],
};

/// Descriptor for `LinkUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkUserDescriptor = $convert.base64Decode('CghMaW5rVXNlchIWCgZ1c2VySWQYASABKARSBnVzZXJJZBIaCghuaWNrbmFtZRgCIAEoCVIIbmlja25hbWUSPgoOcHJvZmlsZVBpY3R1cmUYAyABKAsyFi5UaWtUb2suUHJvZmlsZVBpY3R1cmVSDnByb2ZpbGVQaWN0dXJlEhoKCHVuaXF1ZUlkGAQgASgJUgh1bmlxdWVJZA==');
@$core.Deprecated('Use profilePictureDescriptor instead')
const ProfilePicture$json = const {
  '1': 'ProfilePicture',
  '2': const [
    const {'1': 'urls', '3': 1, '4': 3, '5': 9, '10': 'urls'},
  ],
};

/// Descriptor for `ProfilePicture`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profilePictureDescriptor = $convert.base64Decode('Cg5Qcm9maWxlUGljdHVyZRISCgR1cmxzGAEgAygJUgR1cmxz');
@$core.Deprecated('Use userExtraAttributesDescriptor instead')
const UserExtraAttributes$json = const {
  '1': 'UserExtraAttributes',
  '2': const [
    const {'1': 'followRole', '3': 3, '4': 1, '5': 5, '10': 'followRole'},
  ],
};

/// Descriptor for `UserExtraAttributes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userExtraAttributesDescriptor = $convert.base64Decode('ChNVc2VyRXh0cmFBdHRyaWJ1dGVzEh4KCmZvbGxvd1JvbGUYAyABKAVSCmZvbGxvd1JvbGU=');
@$core.Deprecated('Use userBadgesAttributesDescriptor instead')
const UserBadgesAttributes$json = const {
  '1': 'UserBadgesAttributes',
  '2': const [
    const {'1': 'badges', '3': 21, '4': 3, '5': 11, '6': '.TikTok.UserBadge', '10': 'badges'},
  ],
};

/// Descriptor for `UserBadgesAttributes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBadgesAttributesDescriptor = $convert.base64Decode('ChRVc2VyQmFkZ2VzQXR0cmlidXRlcxIpCgZiYWRnZXMYFSADKAsyES5UaWtUb2suVXNlckJhZGdlUgZiYWRnZXM=');
@$core.Deprecated('Use userBadgeDescriptor instead')
const UserBadge$json = const {
  '1': 'UserBadge',
  '2': const [
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UserBadge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBadgeDescriptor = $convert.base64Decode('CglVc2VyQmFkZ2USEgoEdHlwZRgCIAEoCVIEdHlwZRISCgRuYW1lGAMgASgJUgRuYW1l');
@$core.Deprecated('Use webcastWebsocketMessageDescriptor instead')
const WebcastWebsocketMessage$json = const {
  '1': 'WebcastWebsocketMessage',
  '2': const [
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'type', '3': 7, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'binary', '3': 8, '4': 1, '5': 12, '10': 'binary'},
  ],
};

/// Descriptor for `WebcastWebsocketMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastWebsocketMessageDescriptor = $convert.base64Decode('ChdXZWJjYXN0V2Vic29ja2V0TWVzc2FnZRIOCgJpZBgCIAEoBFICaWQSEgoEdHlwZRgHIAEoCVIEdHlwZRIWCgZiaW5hcnkYCCABKAxSBmJpbmFyeQ==');
@$core.Deprecated('Use webcastWebsocketAckDescriptor instead')
const WebcastWebsocketAck$json = const {
  '1': 'WebcastWebsocketAck',
  '2': const [
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'type', '3': 7, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `WebcastWebsocketAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastWebsocketAckDescriptor = $convert.base64Decode('ChNXZWJjYXN0V2Vic29ja2V0QWNrEg4KAmlkGAIgASgEUgJpZBISCgR0eXBlGAcgASgJUgR0eXBl');
@$core.Deprecated('Use webcastLiveIntroMessageDescriptor instead')
const WebcastLiveIntroMessage$json = const {
  '1': 'WebcastLiveIntroMessage',
  '2': const [
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'user', '3': 5, '4': 1, '5': 11, '6': '.TikTok.User', '10': 'user'},
  ],
};

/// Descriptor for `WebcastLiveIntroMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastLiveIntroMessageDescriptor = $convert.base64Decode('ChdXZWJjYXN0TGl2ZUludHJvTWVzc2FnZRIOCgJpZBgCIAEoBFICaWQSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEiAKBHVzZXIYBSABKAsyDC5UaWtUb2suVXNlclIEdXNlcg==');
@$core.Deprecated('Use systemMessageDescriptor instead')
const SystemMessage$json = const {
  '1': 'SystemMessage',
  '2': const [
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `SystemMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemMessageDescriptor = $convert.base64Decode('Cg1TeXN0ZW1NZXNzYWdlEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbg==');
@$core.Deprecated('Use webcastInRoomBannerMessageDescriptor instead')
const WebcastInRoomBannerMessage$json = const {
  '1': 'WebcastInRoomBannerMessage',
  '2': const [
    const {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `WebcastInRoomBannerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastInRoomBannerMessageDescriptor = $convert.base64Decode('ChpXZWJjYXN0SW5Sb29tQmFubmVyTWVzc2FnZRISCgRkYXRhGAIgASgJUgRkYXRh');
@$core.Deprecated('Use rankItemDescriptor instead')
const RankItem$json = const {
  '1': 'RankItem',
  '2': const [
    const {'1': 'colour', '3': 1, '4': 1, '5': 9, '10': 'colour'},
    const {'1': 'id', '3': 4, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `RankItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rankItemDescriptor = $convert.base64Decode('CghSYW5rSXRlbRIWCgZjb2xvdXIYASABKAlSBmNvbG91chIOCgJpZBgEIAEoBFICaWQ=');
@$core.Deprecated('Use weeklyRankingDescriptor instead')
const WeeklyRanking$json = const {
  '1': 'WeeklyRanking',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'rank', '3': 3, '4': 1, '5': 11, '6': '.TikTok.RankItem', '10': 'rank'},
  ],
};

/// Descriptor for `WeeklyRanking`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weeklyRankingDescriptor = $convert.base64Decode('Cg1XZWVrbHlSYW5raW5nEhIKBHR5cGUYASABKAlSBHR5cGUSFAoFbGFiZWwYAiABKAlSBWxhYmVsEiQKBHJhbmsYAyABKAsyEC5UaWtUb2suUmFua0l0ZW1SBHJhbms=');
@$core.Deprecated('Use rankContainerDescriptor instead')
const RankContainer$json = const {
  '1': 'RankContainer',
  '2': const [
    const {'1': 'rankings', '3': 4, '4': 1, '5': 11, '6': '.TikTok.WeeklyRanking', '10': 'rankings'},
  ],
};

/// Descriptor for `RankContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rankContainerDescriptor = $convert.base64Decode('Cg1SYW5rQ29udGFpbmVyEjEKCHJhbmtpbmdzGAQgASgLMhUuVGlrVG9rLldlZWtseVJhbmtpbmdSCHJhbmtpbmdz');
@$core.Deprecated('Use webcastHourlyRankMessageDescriptor instead')
const WebcastHourlyRankMessage$json = const {
  '1': 'WebcastHourlyRankMessage',
  '2': const [
    const {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.TikTok.RankContainer', '10': 'data'},
  ],
};

/// Descriptor for `WebcastHourlyRankMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webcastHourlyRankMessageDescriptor = $convert.base64Decode('ChhXZWJjYXN0SG91cmx5UmFua01lc3NhZ2USKQoEZGF0YRgCIAEoCzIVLlRpa1Rvay5SYW5rQ29udGFpbmVyUgRkYXRh');
