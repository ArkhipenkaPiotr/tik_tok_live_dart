import 'dart:io';
import 'dart:typed_data';

import 'package:tik_tok_live_dart/src/client/requests/tik_tok_cookie_jar.dart';
import 'package:tik_tok_live_dart/src/client/sockets/i_tik_tok_web_socket.dart';
import 'package:tik_tok_live_dart/src/client/sockets/tik_tok_web_socket_response.dart';
import 'package:tik_tok_live_dart/src/generated/proto/tiktok_schema.pb.dart';

class TikTokWebSocket extends ITikTokWebSocket {
  WebSocket? _webSocket;
  final TikTokCookieJar? _cookieJar;

  WebSocket get _webSocketOrException {
    if (_webSocket == null) {
      throw Exception('WebSocket has not been initialized.'
          'Make sure you invoked TikTokWebSocket.connect before');
    }
    return _webSocket!;
  }

  TikTokWebSocket(this._cookieJar);

  Future<WebSocket> _createWebSocket(String url) => WebSocket.connect(
        url,
        protocols: ['echo-protocol'],
        headers: {
          'Cookie': _cookieJar?.allCurrentCookies,
        },
      );

  @override
  Future connect(String url) async {
    _webSocket ??= await _createWebSocket(url);
  }

  @override
  Future disconnect() {
    return _webSocket?.close() ?? Future.value();
  }

  @override
  bool get isConnected => _webSocket != null && _webSocket!.closeCode == null;

  @override
  Future<WebcastWebsocketMessage> receiveMessage() async {
    final first = await _webSocketOrException.first;
    return WebcastWebsocketMessage.fromBuffer(first);
  }

  @override
  Future writeMessage(Uint8List bytesToWrite) async {
    _webSocketOrException.add(bytesToWrite);
  }
}
