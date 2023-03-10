class TikTokRequestSettings {
  static const tikTokUrlWeb = "https://www.tiktok.com/";
  static const tikTokUrlWebcast = "https://webcast.tiktok.com/webcast/";
  static const tikTokSignApi = "https://tiktok.isaackogan.com/webcast/sign_url";

  static final defaultClientParams = <String, dynamic>{
    "aid": 1988,
    "app_language": "en-US",
    "app_name": "tiktok_web",
    "browser_language": "en",
    "browser_name": "Mozilla",
    "browser_online": true,
    "browser_platform": "Win32",
    "browser_version":
        "5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36",
    "channel": "tiktok_web",
    "channel_id": 86,
    "content_type": 0,
    "cookie_enabled": true,
    "cursor": "",
    "internal_ext": "",
    "device_id": "7145137940230358530",
    "device_platform": "web_pc",
    "focus_state": true,
    "from_page": "user",
    "hidden_banner": true,
    "history_len": 4,
    "is_fullscreen": false,
    "is_page_visible": true,
    "max_time":0,
    "os":"mac",
    "did_rule": 3,
    "fetch_rule": 1,
    "identity": "audience",
    "last_rtt": 0,
    "live_id": 12,
    "resp_content_type": "protobuf",
    "screen_height": 1152,
    "screen_width": 2048,
    "tz_name": "Europe/Berlin",
    "referer": "https, //www.tiktok.com/",
    "root_referer": "https, //www.tiktok.com/",
    "msToken": "",
    "version_code": 180800,
    "webcast_sdk_version": "1.3.0",
    "update_version_code": "1.3.0",
  };

  static const defaultRequestHeaders = <String, dynamic>{
    "Connection": "keep-alive",
    "Cache-Control": "max-age=0",
    "Accept": "text/html,application/json,application/protobuf",
    "User-Agent":
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36",
    "Referer": "https://www.tiktok.com/",
    "Origin": "https://www.tiktok.com",
    "Accept-Language": "en-US,en; q=0.9",
    "Accept-Encoding": "gzip, deflate",
  };
}
