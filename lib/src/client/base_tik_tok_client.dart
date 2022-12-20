import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:tik_tok_live_dart/src/client/requests/tik_tok_cookie_jar.dart';
import 'package:tik_tok_live_dart/src/client/sockets/tik_tok_web_socket.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_http_client.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_request_settings.dart';
import 'package:tik_tok_live_dart/src/errors/tik_tok_live_exception.dart';
import 'package:tik_tok_live_dart/src/generated/proto/tiktok_schema.pb.dart';
import 'package:tik_tok_live_dart/src/model/tik_tok_gift.dart';

import 'sockets/i_tik_tok_web_socket.dart';

abstract class BaseTikTokClient {
  final Map<String, dynamic> clientParams;
  final TikTokHttpClient http;
  final Duration pollingInterval;
  final Map<int, TikTokGift> availableGifts;
  ITikTokWebSocket? socket;
  bool connecting, isPolling, processInitialData, fetchRoomInfoOnConnect, enableExtendedGiftInfo;
  String? roomId;

  //TODO specify type
  final String _uniqueId;
  int? viewerCount;

  BaseTikTokClient({
    required String uniqueId,
    Duration? timeOut,
    this.pollingInterval = const Duration(seconds: 10),
    this.processInitialData = true,
    this.fetchRoomInfoOnConnect = true,
    this.enableExtendedGiftInfo = true,
    this.connecting = false,
    this.isPolling = false,
    String lang = 'en-US',
  })  : _uniqueId = uniqueId,
        availableGifts = {},
        clientParams = TikTokRequestSettings.defaultClientParams,
        http = TikTokHttpClient() {
    clientParams['app_language'] = lang;
    clientParams['webcast_language'] = lang;
  }

  bool get connected => socket?.isConnected ?? false;

  Future run([bool retryConnection = false]) async {
    await start(retryConnection);
    startWebSocketLoop();
    startPolling();
  }

  Future start([bool retryConnection = false]) async {
    try {
      await connect();
    } on TikTokLiveException catch (e) {
      if (retryConnection) {
        await Future.delayed(pollingInterval);
        return await start(retryConnection);
      }
      rethrow;
    }
  }

  Future stop() async {
    if (connected) {
      await disconnect();
    }
  }

  Future<String?> connect() async {
    if (connecting || connected) {
      throw TikTokLiveException('Client is already connected or in process of connecting');
    }

    connecting = true;

    try {
      await fetchRoomId();
      if (fetchRoomInfoOnConnect) {
        final roomInfo = await fetchRoomInfo();
        final status = roomInfo['data']['.status'];
        if (status == null || status == 4) {
          throw TikTokLiveException('Live is not found');
        }
      }

      if (enableExtendedGiftInfo) {
        await fetchAvailableGifts();
      }

      await fetchRoomData();

      return roomId;
    } catch (e) {
      throw TikTokLiveException('Connection has been failed');
    }
  }

  Future<void> disconnect() async {
    isPolling = false;
    connecting = false;
    if (connected) {
      await socket?.disconnect();
    }
    clientParams['cursor'] = '';
    await startWebSocketLoop();
    await startPolling();
  }

  Future<Map<int, TikTokGift>> fetchAvailableGifts() async {
    try {
      final response = await http.getObjectFromWebcastApi('gift/list/', clientParams);
      final giftTokens = response['..gifts'].children;
      if (giftTokens == null) return {};
      for (final giftToken in giftTokens) {
        final gift = giftToken.toGift();
        availableGifts[gift.selectToken('.id')] = giftToken;
      }
      return availableGifts;
    } catch (e) {
      throw TikTokLiveException('Gifts fetching is failed');
    }
  }

  Future fetchRoomData() async {
    final response = await http.getDeserializedMessage('im/fetch/', clientParams, true);
    final webcastResponse = response.webcastResponse;
    clientParams['cursor'] = webcastResponse.cursor;
    clientParams['internal_ext'] = webcastResponse.internalExt;

    try {
      await beginWebSocket(webcastResponse, response.cookieJar);
    } catch (e) {
      throw TikTokLiveException('Failed to connect to the websocket');
    }

    handleWebcastMessages(webcastResponse);
  }

  Future beginWebSocket(WebcastResponse webCastResponse, TikTokCookieJar? cookieJar) async {
    clientParams[webCastResponse.wsParam.name] = webCastResponse.wsParam.value;
    final paramsString = clientParams.keys.map((key) => '$key=${clientParams[key]}').join('&');
    final url = '${webCastResponse.wsUrl}?$paramsString';
    socket = TikTokWebSocket(cookieJar);
    await socket!.connect(url);
  }

  Future startWebSocketLoop() async {
    while (true) {
      //TODO receiveMessage should return WebcastWebsocketMessage
      final webSocketMessage = await socket!.receiveMessage();
      if (webSocketMessage == null) continue;
      try {
        final webcastResponse = WebcastResponse.fromBuffer(webSocketMessage.binary);
        await sendAcknowledgement(webSocketMessage.id);
        handleWebcastMessages(webcastResponse);
      } catch (e) {
        throw WebSocketException('Websocket has likely been closed');
      }
    }
  }

  Future startPolling() async {
    while (true) {
      final bytes = BytesBuilder()..add([58, 2, 104, 98]);
      socket?.writeMessage(bytes.toBytes());
      await Future.delayed(Duration(seconds: 10));
    }
  }

  Future sendAcknowledgement(Int64 id) async {
    final ack = WebcastWebsocketAck(
      id: id,
      type: 'ack',
    );

    socket?.writeMessage(ack.writeToBuffer());
  }

  Future fetchRoomId() async {
    final html = await http.getLiveStreamPage(_uniqueId);
    final first = RegExp('room_id=([0-9]*)').stringMatch(html)?.replaceAll('room_id=', '').trim();
    final second =
        RegExp('"roomId":"([0 - 9] *)"').stringMatch(html)?.replaceAll('"roomId":', '').trim();
    final id = first ?? second ?? '';

    if (id.isEmpty) {
      throw TikTokLiveException(
          'User might be offline or your IP/country might be blocked by TikTok');
    }
  }

  Future fetchRoomInfo() async {
    try {
      final response = http.getObjectFromWebcastApi('room/info', clientParams);
      return response;
    } catch (e) {
      throw TikTokLiveException(
          'Failed to fetch room info from WebCast, see stacktrace for more info.');
    }
  }

  void handleWebcastMessages(WebcastResponse webcastResponse);
}
