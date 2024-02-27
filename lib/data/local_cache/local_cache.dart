import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:introbox/domain/models/token_pair.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/interfaces/i_local_cache.dart';
import '../../domain/models/user.dart';

class LocalCache implements ILocalCache {
  final secureStorage = const FlutterSecureStorage();

  static const userKey = 'user';
  static const localeKey = 'locale';

  static const String accessTokenKey = 'access_token_key';
  static const String refreshTokenKey = 'refresh_token_key';

  // ---------------------------------------------------------------------------

  @override
  Future<User?> getUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final string = sharedPreferences.getString(userKey);
    if (string != null) {
      final jsonObject = jsonDecode(string) as Map<String, dynamic>;
      return User(
        firstName: jsonObject['firstName'] as String,
        lastName: jsonObject['lastName'] as String,
        email: jsonObject['email'] as String? ?? '',
        secondName: jsonObject['secondName'] as String?,
        about: jsonObject['about'] as String?,
        imageUrl: jsonObject['imageUrl'] as String?,
      );
    } else {
      return null;
    }
  }

  @override
  Future<void> setUser({required User user}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(
        userKey,
        jsonEncode({
          'firstName': user.firstName,
          'lastName': user.lastName,
          'email': user.email,
          'secondName': user.secondName,
          'about': user.about,
          'imageUrl': user.imageUrl
        }));
  }

  @override
  Future<void> deleteUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(userKey);
  }

  @override
  Future<TokenPair?> getTokenPair() async {
    final String? accessToken = await secureStorage.read(
      key: accessTokenKey,
    );
    final String? refreshToken = await secureStorage.read(
      key: refreshTokenKey,
    );
    if (accessToken != null && refreshToken != null) {
      return TokenPair(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
    } else {
      return null;
    }
  }

  @override
  Future<void> saveTokenPair({required TokenPair tokenPair}) async {
    await secureStorage.write(
      key: accessTokenKey,
      value: tokenPair.accessToken,
    );
    await secureStorage.write(
      key: refreshTokenKey,
      value: tokenPair.refreshToken,
    );
  }

  @override
  Future<void> clearTokenPair() async {
    await secureStorage.delete(key: accessTokenKey);
    await secureStorage.delete(key: refreshTokenKey);
  }

  @override
  Future<String?> getLocale() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(localeKey);
  }

  @override
  Future<void> setLocale({required String locale}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(localeKey, locale);
  }
}
