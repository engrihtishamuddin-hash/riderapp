// lib/features/auth/data/auth_repo.dart
import 'package:staff_pickup/core/network/api_client.dart';
import 'package:staff_pickup/core/local/token_repo.dart';

class AuthRepo {
  final ApiClient _api;
  final TokenRepo _tokenRepo;

  AuthRepo(this._api, this._tokenRepo);

  Future<void> login(String phone, String password) async {
    final response = await _api.post(
      '/auth/login',
      data: {'phone': phone, 'password': password},
    );
    final accessToken = response.data['access_token'];
    final refreshToken = response.data['refresh_token'];

    await _tokenRepo.saveAccessToken(accessToken);
    if (refreshToken != null) {
      await _tokenRepo.saveRefreshToken(refreshToken);
    }
  }

  Future<void> refreshToken() async {
    final refreshToken = await _tokenRepo.getRefreshToken();
    if (refreshToken == null) throw Exception("No refresh token");

    final response = await _api.post(
      '/auth/refresh',
      data: {'refresh_token': refreshToken},
    );
    await _tokenRepo.saveAccessToken(response.data['access_token']);
  }

  Future<void> logout() async {
    await _tokenRepo.clearAll();
  }
}