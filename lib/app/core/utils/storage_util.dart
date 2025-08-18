import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  static const String _tokenKey = 'token';
  static const String _userInfoKey = 'userInfo';
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Token相关
  static String? getToken() {
    return _prefs.getString(_tokenKey);
  }

  static Future<bool> setToken(String token) {
    return _prefs.setString(_tokenKey, token);
  }

  static Future<bool> clearToken() {
    return _prefs.remove(_tokenKey);
  }

  // 用户信息相关
  static Map<String, dynamic>? getUserInfo() {
    final String? userInfoStr = _prefs.getString(_userInfoKey);
    if (userInfoStr != null) {
      return Map<String, dynamic>.from(
        Map.from(userInfoStr as Map),
      );
    }
    return null;
  }

  static Future<bool> setUserInfo(Map<String, dynamic> userInfo) {
    return _prefs.setString(_userInfoKey, userInfo.toString());
  }

  static Future<bool> clearUserInfo() {
    return _prefs.remove(_userInfoKey);
  }

  // 清除所有数据
  static Future<bool> clearAll() {
    return _prefs.clear();
  }
}
