import 'dart:io';

import '../models/user.dart';

abstract class IUserRepository {
  User? get user;

  bool get isAuthorized;

  Future<void> init();

  Future<User?> getLocalUser();

  Future<void> register({required User user});

  Future<void> otpRequest({required String phone, required String lang});

  Future<void> loginWithOtp({required String otp, required String phone});

  Future<void> updateUser({required User user});

  Future<void> uploadUserImage({required File image});

  Future<User> getUser();

  void logout();

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
