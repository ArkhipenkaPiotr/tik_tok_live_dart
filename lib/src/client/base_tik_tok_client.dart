import 'package:tik_tok_live_dart/src/client/tik_tok_http_client.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_request_settings.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_web_socket.dart';
import 'package:tik_tok_live_dart/src/model/tik_tok_gift.dart';

abstract class BaseTikTokClient {
  final Map<String, dynamic> clientParams;
  final TikTokHttpClient http;
  final Duration pollingInterval;
  final Map<int, TikTokGift> availableGifts;
  TikTokWebSocket? socket;
  bool? connecting, isPolling, processInitialData, fetchRoomInfoOnConnect, enableExtendedGiftInfo;
  String? roomId;

  //TODO specify type
  dynamic _roomInfo;
  final String _uniqueId;
  int? viewerCount;

  BaseTikTokClient({
    required String uniqueId,
    Duration? timeOut,
    this.pollingInterval = const Duration(seconds: 10),
    this.processInitialData = true,
    this.fetchRoomInfoOnConnect = true,
    this.enableExtendedGiftInfo = true,
    String lang = 'en-US',
  })  : _uniqueId = uniqueId,
        availableGifts = {},
        clientParams = TikTokRequestSettings.defaultClientParams,
        http = TikTokHttpClient() {
    clientParams['app_language'] = lang;
    clientParams['webcast_language'] = lang;
  }
}
