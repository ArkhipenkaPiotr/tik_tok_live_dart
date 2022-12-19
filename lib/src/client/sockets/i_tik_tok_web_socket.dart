import 'dart:typed_data';

import 'package:tik_tok_live_dart/src/generated/proto/tiktok_schema.pb.dart';

abstract class ITikTokWebSocket {
  bool get isConnected;
  Future connect(String url);
  Future disconnect();
  Future<WebcastWebsocketMessage> receiveMessage();
  Future writeMessage(Uint8List bytesToWrite);
}