import 'package:dio/dio.dart';
import 'package:tik_tok_live_dart/src/client/requests/response_with_cookies.dart';
import 'package:tik_tok_live_dart/src/client/requests/tik_tok_cookie_jar.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_request_settings.dart';
import 'package:tik_tok_live_dart/src/errors/tik_tok_live_exception.dart';

import '../generated/proto/tiktok_schema.pb.dart';

class TikTokHttpClient {
  static int _uuc = 0;
  final _currentHeaders = <String, dynamic>{};
  final _dio = Dio();

  TikTokHttpClient([int timeOut = 15000]) {
    _uuc++;
  }

  Future<WebcastResponseWithCookies> getDeserializedMessage(
      String path, Map<String, dynamic> parameters,
      [signUrl = false]) async {
    final response = await _getRequest(
      url: TikTokRequestSettings.tikTokUrlWebcast + path,
      parameters: parameters,
      signUrl: signUrl,
    );

    return WebcastResponseWithCookies.fromResponse(response);
  }

  Future<Map<String, dynamic>> getObjectFromWebcastApi(String path, Map<String, dynamic> parameters,
      [bool signUrl = false]) async {
    final json = await _getRequest(
      url: TikTokRequestSettings.tikTokUrlWebcast + path,
      parameters: parameters,
      signUrl: signUrl,
    );
    return json.data;
  }

  Future<String> getLiveStreamPage(String uniqueId, [bool signUrl = false]) async {
    final json = await _getRequest(
      url: '${TikTokRequestSettings.tikTokUrlWeb}@$uniqueId/live/',
      signUrl: signUrl,
    );
    return json.data.toString();
  }

  Future<Map<String, dynamic>> postObjectToWebcastApi(
      String path, Map<String, dynamic> parameters, Map<String, dynamic> json,
      [bool signUrl = false]) async {
    final resultJson = await _postRequest(
      url: TikTokRequestSettings.tikTokUrlWebcast + path,
      data: json,
      parameters: parameters,
      signUrl: signUrl,
    );
    return resultJson;
  }

  Future<ResponseWithCookies> _getRequest({
    required String url,
    Map<String, dynamic>? parameters,
    bool signUrl = false,
  }) async {
    final String preparedUrl;
    if (signUrl) {
      preparedUrl = await _getSignedUrl(url, parameters);
    } else {
      preparedUrl = url;
    }
    final response = await _dio.get(preparedUrl,
        options: Options(headers: _currentHeaders), queryParameters: parameters);
    final cookies = response.headers['Set-Cookie'];
    final cookieJar = TikTokCookieJar();
    if (cookies != null) {
      for (final cookie in cookies) {
        final splitted = cookie.replaceAll(';', '').split('=');
        cookieJar.set(splitted.first, splitted[1]);
      }
    }
    return ResponseWithCookies(response.data, cookieJar);
  }

  Future<Map<String, dynamic>> _postRequest({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? parameters,
    bool signUrl = false,
  }) async {
    final String preparedUrl;
    if (signUrl) {
      preparedUrl = await _getSignedUrl(url, parameters);
    } else {
      preparedUrl = url;
    }
    final response = await _dio.post(preparedUrl,
        options: Options(headers: _currentHeaders), queryParameters: parameters);
    return response.data;
  }

  Future<String> _getSignedUrl(String url, [Map<String, dynamic>? parameters]) async {
    final String paramsString;
    if (parameters == null) {
      paramsString = '';
    } else {
      paramsString = parameters.keys.map((key) => '$key = ${parameters[key]}').join('&');
    }
    final parsedParameters = paramsString.isEmpty ? '' : '?$paramsString';
    final result = await _dio.get(TikTokRequestSettings.tikTokSignApi, queryParameters: {
      "client": "ttlive-net",
      "uuc": _uuc,
      "url": url + parsedParameters,
    });
    final body = result.data;
    try {
      final signedUrl = body['..signedUrl'];
      final userAgent = body['..User-Agent'];
      _currentHeaders["User-Agent"] = userAgent;
      return signedUrl;
    } catch (e) {
      throw TikTokLiveException(
        "Insufficent values have been supplied for signing. Likely due to an update. Post an issue on GitHub.",
      );
    }
  }
}
