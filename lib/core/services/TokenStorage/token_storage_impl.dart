import 'package:altyn_login/core/services/TokenStorage/token_storage.dart';

class TokenStorageImpl implements TokenStorage {
  @override
  readAccessToken() {
    print('access token read');
  }

  @override
  readRefreshToken() {
    print('refresh token read');
  }

  @override
  writeAccessToken(String data) {
    print('refresh token written');
  }
}
