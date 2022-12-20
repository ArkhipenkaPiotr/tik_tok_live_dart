import 'package:tik_tok_live_dart/src/client/requests/tik_tok_cookie_jar.dart';
import 'package:tik_tok_live_dart/src/generated/proto/tiktok_schema.pb.dart';

class ResponseWithCookies {
  final dynamic data;
  final TikTokCookieJar cookieJar;

  ResponseWithCookies(this.data, this.cookieJar);
}

class WebcastResponseWithCookies {
  final TikTokCookieJar? cookieJar;
  final WebcastResponse webcastResponse;

  WebcastResponseWithCookies(this.cookieJar, this.webcastResponse);

  WebcastResponseWithCookies.fromResponse(ResponseWithCookies responseWithCookies)
      : cookieJar = responseWithCookies.cookieJar,
        webcastResponse = WebcastResponse.fromJson(responseWithCookies.data.toString());
}
