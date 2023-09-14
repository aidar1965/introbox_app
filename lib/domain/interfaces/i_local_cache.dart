import '../models/user.dart';

abstract class ILocalCache {
  Future<User?> getUser();

  Future<void> setUser({required User user});

  Future<void> deleteUser();
}
