import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_http_client.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_request_settings.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_web_socket.dart';
import 'package:tik_tok_live_dart/src/generated/lib/src/proto/tiktok_schema.pb.dart';
import 'package:tik_tok_live_dart/src/model/tik_tok_gift.dart';

abstract class BaseTikTokClient {
  final Map<String, dynamic> clientParams;
  final TikTokHttpClient http;
  final Duration pollingInterval;
  final Map<int, TikTokGift> availableGifts;
  TikTokWebSocket? socket;
  bool connecting, isPolling, processInitialData, fetchRoomInfoOnConnect, enableExtendedGiftInfo;
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
    this.connecting = false,
    this.isPolling = false,
    this.clientParams = TikTokRequestSettings.defaultClientParams,
    String lang = 'en-US',
  })  : _uniqueId = uniqueId,
        availableGifts = {},
        http = TikTokHttpClient() {
    clientParams['app_language'] = lang;
    clientParams['webcast_language'] = lang;
  }

  bool get connected => socket?.isConnected ?? false;

  void run([bool retryConnection = false]) {
    start(retryConnection);
    startWebSocketLoop();
    startPolling();
  }

  Future start([bool retryConnection = false]) async {
    try {
      await connect();
    } on FailedConnectionException catch (e) {
      if (retryConnection) {
        await Future.delayed(pollingInterval);
        return await start(retryConnection);
      }
      return null;
    }
  }

  Future stop() async {
    if (connected) {
      await disconnect();
    }
  }

  Future<String?> connect() async {
    if (connecting) throw AlreadyConnectingException();
    if (connected) throw AlreadyConnectedException();

    connecting = true;

    try {
      await fetchRoomId();
      if (fetchRoomInfoOnConnect) {
        final status = (await fetchRoomInfo()).selectToken('.data').selectToken('.status');
        if (status == null || status == 4) {
          throw LiveNotFoundException();
        }
      }

      if (enableExtendedGiftInfo) {
        await fetchAvailableGifts();
      }

      await fetchRoomData();

      return roomId;
    } catch (e) {
      throw FailedConnectionException();
    }
  }

  Future<void> disconnect() async {
    isPolling = false;
    _roomInfo = null;
    connecting = false;
    if (connected) {
      await socket.disconnect();
    }
    clientParams['cursor'] = '';
    await startWebSocketLoop();
    await startPolling();
  }

  Future<Map<int, TikTokGift>> fetchAvailableGifts() async {
    try {
      final response = await http.getJObjectFromWebcastApi('gift/list/', clientParams);
      final giftTokens = response.selectTokens('..gifts')?.firstOrNull?.children;
      if (giftTokens == null) return {};
      for (final giftToken in giftTokens) {
        final gift = giftToken.toGift();
        availableGifts[gift.selectToken('.id')] = giftToken;
      }
      return availableGifts;
    } catch (e) {
      throw FailedFetchGiftsException();
    }
  }

  Future fetchRoomData() async {
    final webcastResponse = await http.getDeserializedMessage('im/fetch/', clientParams, true);
    clientParams['cursor'] = webcastResponse.cursor;
    clientParams['internal_ext'] = webcastResponse.internalExt;

    try {
      if (webcastResponse.wsUrl != null && webcastResponse.wsParam != null) {
        await beginWebSocket(webcastResponse);
      }
    } catch (e) {
      throw FailedConnectionException('Failed to connect to the websocket');
    }

    handleWebcastMessages(webcastResponse);
  }

  Future beginWebSocket(WebCastResponse webCastResponse) async {
    clientParams[webCastResponse.wsParam.name] = webCastResponse.wsParam.value;
    final paramsString = clientParams.keys.map((key) => '$key=${clientParams[key]}').join('&');
    final url = '${webCastResponse.wsUrl}?$paramsString';
    socket = TikTokWebSocket(TikTokHttpRequest.cookieJar);
    await socket.connect(url);
  }

  Future startWebSocketLoop() async {
    while (true) {
      //TODO receiveMessage should return WebcastWebsocketMessage
      final webSocketMessage = await socket.receiveMessage();
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
      socket.writeMessage(bytes.toBytes());
      await Future.delayed(Duration(seconds: 10));
    }
  }

  Future sendAcknowledgement(int id) {
    final ack = WebcastWebsocketAck(
      id: Int64(id),
      type: 'ack',
    );

    socket.writeMessage(ack.writeToBuffer());
  }

  Future fetchRoomId() async {
    final html = await http.getLivestreamPage(_uniqueId);
    final first = RegExp('room_id=([0-9]*)').stringMatch(html)?.replaceAll('room_id=', '').trim();
    final second =
        RegExp('"roomId":"([0 - 9] *)"').stringMatch(html)?.replaceAll('"roomId":', '').trim();
    final id = first ?? second ?? '';

    if (id.isEmpty) {
      throw FailedFetchRoomInfoException(
          'User might be offline or your IP/country might be blocked by TikTok');
    }
  }

  Future fetchRoomInfo() async {
    try {
      final response = http.getJObjectFromWebcastApi('room/info', clientParams);
      _roomInfo = response;
      return response;
    } catch (e) {
      throw FailedFetchRoomINfoException(
          'Failed to fetch room info from WebCast, see stacktrace for more info.');
    }
  }

  void handleWebcastMessages(WebcastResponse webcastResponse);
}
