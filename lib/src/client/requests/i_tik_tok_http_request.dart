abstract class ITikTokHttpRequest {
  Future<Map<String, dynamic>> get();
  Future<Map<String, dynamic>> post();
  ITikTokHttpRequest setQueries(Map<String, dynamic> queries);
}