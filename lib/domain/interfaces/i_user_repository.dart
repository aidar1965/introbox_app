import 'dart:io';

import '../models/user.dart';

abstract class IUserRepository {
  User? get user;

  Future<void> init();

  Future<User?> getLocalUser();

  Future<void> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String firstName,
    required String lastName,
  });

  Future<void> otpRequest({required String email, required String lang});

  Future<void> loginWithOtp({required String otp, required String email});

  Future<void> updateUser({
    required String firstName,
    required String lastName,
    String? secondName,
    String? about,
    String? image,
  });

  Future<void> uploadUserImage({required File image});

  Future<void> logout();

  Future<void> login({required String email, required String password});

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);

  Future<void> setUser(User user);
}
