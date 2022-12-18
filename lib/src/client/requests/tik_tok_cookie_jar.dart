class TikTokCookieJar {
  final Map<String, String> _cookies = {};

  String? get(String key) {
    return _cookies[key];
  }

  void set(String key, String value) {
    _cookies[key] = value;
  }

  Iterable<String> get allCookies => _cookies.keys.map((key) => '$key=${_cookies[key]};');
}
