

import '../../../core/client.dart';
import '../../../core/secure_storege.dart';

class AuthRepository {
  AuthRepository({required this.client});

  final ApiClient client;

  Future<void> login(String login, String password) async {
    final String token = await client.login(login, password);
    await SecureStorage.deleteToken();
    await SecureStorage.deleteCredentials();
    await SecureStorage.saveCredentials(login: login, password: password);
    await SecureStorage.saveToken(token);
  }
}