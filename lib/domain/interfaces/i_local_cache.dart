import '../models/token_pair.dart';
import '../models/user.dart';

abstract class ILocalCache {
  Future<User?> getUser();

  Future<void> setUser({required User user});

  Future<void> deleteUser();

  Future<void> saveTokenPair({required TokenPair tokenPair});

  Future<TokenPair?> getTokenPair();

  Future<void> clearTokenPair();
}
