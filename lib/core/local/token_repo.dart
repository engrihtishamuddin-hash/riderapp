// lib/core/local/token_repo.dart

import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TokenRepo {
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _firebaseUserIdKey = 'firebase_user_id';

  // Save Firebase user ID
  Future<void> saveFirebaseUserId(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_firebaseUserIdKey, userId);
  }

  // Get Firebase user ID
  Future<String?> getFirebaseUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_firebaseUserIdKey);
  }

  // Clear all user data (for logout)
  Future<void> clearAllUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_accessTokenKey);
    await prefs.remove(_refreshTokenKey);
    await prefs.remove(_firebaseUserIdKey);
    
    // Also sign out from Firebase
    await FirebaseAuth.instance.signOut();
  }
  // Save access token
  Future<void> saveAccessToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_accessTokenKey, token);
  }

  // ← ADD THIS METHOD
  Future<String?> getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_accessTokenKey);
  }

  // Save refresh token
  Future<void> saveRefreshToken(String? token) async {
    final prefs = await SharedPreferences.getInstance();
    if (token != null) {
      await prefs.setString(_refreshTokenKey, token);
    }
  }

  // ← ADD THIS METHOD
  Future<String?> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_refreshTokenKey);
  }

  // Clear tokens
  Future<void> clearTokens() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_accessTokenKey);
    await prefs.remove(_refreshTokenKey);
  }

  Future<void> clearAll() async => clearTokens();
}