import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/interfaces/i_local_cache.dart';
import '../../domain/models/user.dart';

class LocalCache implements ILocalCache {
  final secureStorage = const FlutterSecureStorage();

  static const userKey = 'user';

  // ---------------------------------------------------------------------------

  @override
  Future<User?> getUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final string = sharedPreferences.getString(userKey);
    if (string != null) {
      final jsonObject = jsonDecode(string) as Map<String, dynamic>;
      return User(
        id: jsonObject['id'] as int,
        firstName: jsonObject['firstName'] as String,
        phone: jsonObject['phone'] as String,
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
          'id': user.id,
          'firstName': user.firstName,
        }));
  }

  @override
  Future<void> deleteUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(userKey);
  }
}
