import 'package:shared_preferences/shared_preferences.dart';

class SpUtil {

  // key
  static const String keyUserId = "keyUserId";
  static const String keyUserName = "keyUserName";

  static Future<bool> putString(String key, String value) async {
    var pre = await SharedPreferences.getInstance();
    return pre.setString(key, value);
  }

  static Future<String> getString(String key) async {
    var pre = await SharedPreferences.getInstance();
    return pre.getString(key);
  }

  static Future<bool> remove(String key) async {
    var pre = await SharedPreferences.getInstance();
    return pre.remove(key);
  }

  static Future<bool> clear() async {
    var pre = await SharedPreferences.getInstance();
    return pre.clear();
  }
}
