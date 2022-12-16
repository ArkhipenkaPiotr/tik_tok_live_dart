import 'package:dio/dio.dart';
import 'package:tik_tok_live_dart/src/client/tik_tok_request_settings.dart';
import 'package:tik_tok_live_dart/src/generated/lib/src/proto/tiktok_schema.pb.dart';

class TikTokHttpClient {
  final Dio _dio;

  static int _uuc = 0;

  TikTokHttpClient([int timeOut = 15000])
      : _dio = Dio(
    BaseOptions(
      connectTimeout: timeOut,
      sendTimeout: timeOut,
      receiveTimeout: timeOut,
    ),
  ) {
    _uuc++;
  }

  Future<WebcastResponse> getDesetializedMessage(String path, Map<String, dynamic> parameters,
      [signUrl = false]) async {
    final json =
    await _getRequest(url: TikTokRequestSettings.tikTokUrlWebcast + path,
      parameters: parameters,
      signUrl: signUrl,);

    return WebcastResponse.fromJson(json.toString());
  }

  Future<Map<String, dynamic>> getObjectFromWebcastApi(String path, Map<String, dynamic> parameters,
      [bool signUrl = false]) async {
    final json =
    await _getRequest(url: TikTokRequestSettings.tikTokUrlWebcast + path,
      parameters: parameters,
      signUrl: signUrl,);
    return json;
  }

  Future<String> getLiveStreamPage(String uniqueId, [bool signUrl = false]) async {
    final json =
    await _getRequest(
      url: '${TikTokRequestSettings.tikTokUrlWeb}@$uniqueId/live/', signUrl: signUrl,);
    return json.toString();
  }

  Future<Map<String, dynamic>> postObjectToWebcastApi(String path, Map<String, dynamic> parameters,
      Map<String, dynamic> json,
      [bool signUrl = false]) async {
    final resultJson = await _postRequest(
      url: TikTokRequestSettings.tikTokUrlWebcast + path,
      data: json,
      parameters: parameters,
      signUrl: signUrl,);
    return resultJson;
  }

  Future<Map<String, dynamic>> _getRequest({required String url,
    Map<String, dynamic>? parameters, bool signUrl = false,}) async {
    final request = _buildRequest(
        signUrl ? await _getSignedUrl(url, parameters) : url, signUrl ? null : parameters);
    return await request.get();
  }

  Future<Map<String, dynamic>> _postRequest(
      {required String url, required Map<String, dynamic> data,
        Map<String, dynamic>? parameters, bool signUrl = false,}) async {
    final request = _buildRequest(
        signUrl ? await _getSignedUrl(url, parameters) : url, signUrl ? null : parameters);
    return await request.post(data);
  }

  ITikTokHttpRequest _buildRequest(String url, [Map<String, dynamic>? parameters]) {
    return TikTokHttpRequest(url).setQueries(parameters);
  }

  Future<String> _getSignedUrl(String url, [Map<String, dynamic>? parameters]) async {
    final String paramsString;
    if (parameters == null) {
      paramsString = '';
    } else {
      paramsString = parameters.keys.map((key) => '$key = ${parameters[key]}').join('&');
    }
    final parsedParameters = paramsString.isEmpty ? '' : '?$paramsString';
    final request = TikTokHttpRequest(TikTokRequestSettings.tikTokSignApi);
    request.setQueries({
      "client": "ttlive-net",
      "uuc": _uuc,
      "url": url + parsedParameters,
    });
    final content = await request.get();
    try {
      final signedUrl = content['..signedUrl'];
      final userAgent = content['..User-Agent'];
      TikTokHttpRequest.currentHeaders.remove("User-Agent");
      TikTokHttpRequest.currentHeaders["User-Agent"] = userAgent;
    } catch (e) {
      throw InsuffcientSigningException("Insufficent values have been supplied for signing. Likely due to an update. Post an issue on GitHub.", e);
    }
  }
}
