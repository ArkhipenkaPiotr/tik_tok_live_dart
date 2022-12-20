import 'dart:io';

import 'package:tik_tok_live_dart/src/client/tik_tok_live_client.dart';

void main() async {
  print('Input account id');
  String? uniqueId = stdin.readLineSync();

  if (uniqueId == null) {
    print('something wrong... try again');
    main();
    return;
  }

  final client = TikTokLiveClient(uniqueId: uniqueId);

  client.run();
  await for (final message in client.onCommentReceived) {
    print('Comment received ${message.comment}');
  }
}
