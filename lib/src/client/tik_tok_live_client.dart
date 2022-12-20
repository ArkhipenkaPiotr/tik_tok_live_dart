import 'dart:async';

import 'package:tik_tok_live_dart/src/client/base_tik_tok_client.dart';
import 'package:tik_tok_live_dart/src/events/connection_event_args.dart';
import 'package:tik_tok_live_dart/src/events/share_event_args.dart';
import 'package:tik_tok_live_dart/src/generated/proto/tiktok_schema.pb.dart';

class TikTokLiveClient extends BaseTikTokClient {
  TikTokLiveClient(
      {required super.uniqueId,
      super.timeOut,
      super.pollingInterval,
      super.processInitialData = true,
      super.fetchRoomInfoOnConnect = true,
      super.lang = 'en-US'});

  final _onCommentReceivedController = StreamController<WebcastChatMessage>();
  final _onConnectedController = StreamController<ConnectionEventArgs>();
  final _onDisconnectedController = StreamController<ConnectionEventArgs>();
  final _onFollowController = StreamController<User>();
  final _onGiftReceivedController = StreamController<WebcastGiftMessage>();
  final _onJoinController = StreamController<User>();
  final _onLikeController = StreamController<User>();
  final _onLikesReceivedController = StreamController<WebcastLikeMessage>();
  final _onQuestionReceivedController = StreamController<WebcastQuestionNewMessage>();
  final _onShareController = StreamController<ShareEventArgs>();

  /// Event fired when the stream is shared to 5 or more users / 10 or more users.
  final _onMoreShare = StreamController<ShareEventArgs>();
  final _onViewerCountUpdatedController = StreamController<WebcastRoomUserSeqMessage>();
  final _onLIveEndedController = StreamController<bool>();
  final _onEmoteReceivedController = StreamController<WebcastEmoteChatMessage>();
  final _onEnvelopeReceivedController = StreamController<WebcastEnvelopeMessage>();
  final _onSubscribeController = StreamController<WebcastMemberMessage>();
  final _onWeeklyRankingUpdatedController = StreamController<WebcastHourlyRankMessage>();
  final _onMicBattleController = StreamController<WebcastLinkMicBattle>();
  final _onMicBattleUpdatedController = StreamController<WebcastLinkMicArmies>();
  final _unhandledSocialEventController = StreamController<WebcastSocialMessage>();
  final _unhandledMemberEventController = StreamController<WebcastMemberMessage>();
  final _unhandledEventController = StreamController<Message>();

  Stream<WebcastChatMessage> get onCommentReceived => _onCommentReceivedController.stream;

  Stream<ConnectionEventArgs> get onConnected => _onConnectedController.stream;

  Stream<ConnectionEventArgs> get onDisconnected => _onDisconnectedController.stream;

  Stream<User> get onFollow => _onFollowController.stream;

  Stream<WebcastGiftMessage> get onGiftReceived => _onGiftReceivedController.stream;

  Stream<User> get onJoin => _onJoinController.stream;

  Stream<User> get onLike => _onLikeController.stream;

  Stream<WebcastLikeMessage> get onLikesReceived => _onLikesReceivedController.stream;

  Stream<WebcastQuestionNewMessage> get onQuestionReceived => _onQuestionReceivedController.stream;

  Stream<ShareEventArgs> get onShare => _onShareController.stream;

  Stream<ShareEventArgs> get onMoreShare => _onMoreShare.stream;

  Stream<WebcastRoomUserSeqMessage> get onViewerCountUpdated =>
      _onViewerCountUpdatedController.stream;

  Stream<void> get onLIveEnded => _onLIveEndedController.stream;

  Stream<WebcastEmoteChatMessage> get onEmoteReceived => _onEmoteReceivedController.stream;

  Stream<WebcastEnvelopeMessage> get onEnvelopeReceived => _onEnvelopeReceivedController.stream;

  Stream<WebcastMemberMessage> get onSubscribe => _onSubscribeController.stream;

  Stream<WebcastHourlyRankMessage> get onWeeklyRankingUpdated =>
      _onWeeklyRankingUpdatedController.stream;

  Stream<WebcastLinkMicBattle> get onMicBattle => _onMicBattleController.stream;

  Stream<WebcastLinkMicArmies> get onMicBattleUpdated => _onMicBattleUpdatedController.stream;

  Stream<WebcastSocialMessage> get unhandledSocialEvent => _unhandledSocialEventController.stream;

  Stream<WebcastMemberMessage> get unhandledMemberEvent => _unhandledMemberEventController.stream;

  Stream<Message> get unhandledEvent => _unhandledEventController.stream;

  @override
  Future<String?> connect() async {
    final roomId = await super.connect();
    if (connected) {
      _onConnectedController.add(ConnectionEventArgs(true));
    }
    return roomId;
  }

  @override
  Future<void> disconnect() async {
    await super.disconnect();
    if (!connected) {
      _onDisconnectedController.add(ConnectionEventArgs(false));
    }
  }

  @override
  void handleWebcastMessages(WebcastResponse webcastResponse) {
    for (final message in webcastResponse.messages) {
      _invokeEvent(message);
    }
  }

  void _invokeEvent(Message message) {
    switch (message.type) {
      case 'WebcastChatMessage':
        final chatMessage = WebcastChatMessage.fromBuffer(message.binary);
        _onCommentReceivedController.add(chatMessage);
        return;
      case 'WebcastGiftMessage':
        final giftMessage = WebcastGiftMessage.fromBuffer(message.binary);
        _onGiftReceivedController.add(giftMessage);
        return;
      case 'WebcastLikeMessage':
        final likeMessage = WebcastLikeMessage.fromBuffer(message.binary);
        _onLikesReceivedController.add(likeMessage);
        return;
      case 'WebcastQuestionNewMessage':
        final questionMessage = WebcastQuestionNewMessage.fromBuffer(message.binary);
        _onQuestionReceivedController.add(questionMessage);
        return;
      case 'WebcastRoomUserSeqMessage':
        final roomMessage = WebcastRoomUserSeqMessage.fromBuffer(message.binary);
        _onViewerCountUpdatedController.add(roomMessage);
        return;
      case 'WebcastEmoteChatMessage':
        final emoteMessage = WebcastEmoteChatMessage.fromBuffer(message.binary);
        _onEmoteReceivedController.add(emoteMessage);
        return;
      case 'WebcastHourlyRankMessage':
        final hourlyRankMessage = WebcastHourlyRankMessage.fromBuffer(message.binary);
        _onWeeklyRankingUpdatedController.add(hourlyRankMessage);
        return;
      case 'WebcastEnvelopeMessage':
        final envelopeMessage = WebcastEnvelopeMessage.fromBuffer(message.binary);
        _onEnvelopeReceivedController.add(envelopeMessage);
        return;
      case 'WebcastLinkMicBattle':
        final linkMicBattleMessage = WebcastLinkMicBattle.fromBuffer(message.binary);
        _onMicBattleController.add(linkMicBattleMessage);
        return;
      case 'WebcastLinkMicArmies':
        final linkMicArmiesMessage = WebcastLinkMicArmies.fromBuffer(message.binary);
        _onMicBattleUpdatedController.add(linkMicArmiesMessage);
        return;
      case 'WebcastSocialMessage':
        final socialMessage = WebcastSocialMessage.fromBuffer(message.binary);
        _invokeSpecialEvent(socialMessage);
        return;
      case 'WebcastMemberMessage':
        final memberMessage = WebcastMemberMessage.fromBuffer(message.binary);
        if (memberMessage.event.eventDetails.displayType == "live_room_enter_toast") {
          _onJoinController.add(memberMessage.user);
        } else if (memberMessage.actionId == 7) {
          _onSubscribeController.add(memberMessage);
        } else {
          _unhandledMemberEventController.add(memberMessage);
        }
        return;
      case 'WebcastControlMessage':
        final controlMessage = WebcastControlMessage.fromBuffer(message.binary);
        if (controlMessage.action == 3) {
          _onLIveEndedController.add(true);
        }
        return;
      default:
        _unhandledEventController.add(message);
        return;
    }
  }

  void _invokeSpecialEvent(WebcastSocialMessage message) {
    final match = RegExp('pm_mt_guidance_viewer_([0-9]+)_share')
        .stringMatch(message.event.eventDetails.displayType);
    if (match != null) {
      final count = match.replaceAll('pm_mt_guidance_viewer_', '').replaceAll('_share', '');
      _onMoreShare.add(ShareEventArgs(message.user, int.parse(count)));
      return;
    }
    switch (message.event.eventDetails.displayType) {
      case 'pm_mt_msg_viewer':
        _onLikeController.add(message.user);
        return;
      case 'pm_main_follow_message_viewer_2':
        _onFollowController.add(message.user);
        return;
      case 'pm_mt_guidance_share':
        _onShareController.add(ShareEventArgs(message.user, 1));
        return;
      case 'pm_mt_join_message_other_viewer':
        _onJoinController.add(message.user);
        return;
      default:
        _unhandledSocialEventController.add(message);
    }
  }
}
