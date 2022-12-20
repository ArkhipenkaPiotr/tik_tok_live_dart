class TikTokCookieJar {
  String allCurrentCookies = '';

  setCookies(Iterable<String> cookies) {
    allCurrentCookies = cookies.join('; ');
  }
}
