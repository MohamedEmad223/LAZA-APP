import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;
  static const _storage = FlutterSecureStorage();

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // ---------------------- SharedPreferences ----------------------

  static Future<void> set({required String key, required dynamic value}) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      throw UnsupportedError('Unsupported Type');
    }
  }

  static String? getString({required String key}) => _prefs.getString(key);
  static bool? getBool({required String key}) => _prefs.getBool(key);
  static int? getInt({required String key}) => _prefs.getInt(key);
  static double? getDouble({required String key}) => _prefs.getDouble(key);
  static List<String>? getStringList({required String key}) =>
      _prefs.getStringList(key);

  static Future<bool> delete({required String key}) async =>
      await _prefs.remove(key);
  static Future<bool> clearAllData() async => await _prefs.clear();

  // ---------------------- Secure Storage ----------------------

  static Future<void> setSecureData({
    required String key,
    required String value,
  }) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> getSecureData({required String key}) {
    return _storage.read(key: key);
  }

  static Future<void> deleteSecureData({required String key}) async {
    await _storage.delete(key: key);
  }

  static Future<void> deleteAllSecureData() async {
    await _storage.deleteAll();
  }

  // ✅ دالة عامة لحفظ String في Secure Storage
  static Future<void> setSecure({
    required String key,
    required String value,
  }) async {
    await _storage.write(key: key, value: value);
  }

  static void setSecureString({required String key, required String value}) {
    _storage.write(key: key, value: value);
  }

  static  getSecureString({required String key}) {
    _storage.read(key: key);
  }
}
