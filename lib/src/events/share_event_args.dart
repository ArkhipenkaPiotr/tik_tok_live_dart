import 'package:tik_tok_live_dart/src/generated/proto/tiktok_schema.pb.dart';

class ShareEventArgs {
  final User user;
  final int count;

  ShareEventArgs(this.user, this.count);
}