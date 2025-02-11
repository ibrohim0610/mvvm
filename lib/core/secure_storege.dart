import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const String tokenKey = 'jwt_token';
  static const String loginKey = 'login';
  static const String passwordKey = 'password';
  static const _storage = FlutterSecureStorage();

  static Future<void> saveToken(String token) async {
    await _storage.write(key: tokenKey, value: token);
  }

  static Future<void> saveCredentials(String login, String password) async {
    await _storage.write(key: loginKey, value: login);
    await _storage.write(key: passwordKey, value: password);
  }

  static Future<String?> getToken() async {
    return await _storage.read(key: tokenKey);
  }

  static Future<Map<String, String?>> getCredentials() async {
    var credentials = {
      "login": await _storage.read(key: loginKey),
      "password": await _storage.read(key: passwordKey),
    };

    return credentials;
  }

  static Future<void> deleteToken() async {
    await _storage.delete(key: tokenKey);
  }

  static Future<void> deleteCredentials() async {
    await _storage.delete(key: loginKey);
    await _storage.delete(key: passwordKey);
  }
}
