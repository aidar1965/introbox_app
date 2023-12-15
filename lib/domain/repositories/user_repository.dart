import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';

import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';
import 'package:moki_tutor/domain/models/user.dart';

import '../interfaces/i_local_cache.dart';
import '../locator/locator.dart';

class UserRepository extends ChangeNotifier implements IUserRepository {
  final IApi api = getIt<IApi>();
  final localCache = getIt<ILocalCache>();

  UserRepository() {
    init();
  }

  @override
  Future<void> init() async {
    _user = await getLocalUser();
    final tokens = await localCache.getTokenPair();
    if (tokens != null) {
      api.setTokens(tokens.accessToken, tokens.refreshToken);
    }

    notifyListeners();
  }

  User? _user;

  @override
  User? get user => _user;

  @override
  Future<void> logout() async {
    await localCache.deleteUser();
    await localCache.clearTokenPair();
    //  await api.clearToken();
    _user = null;
    notifyListeners();
  }

  @override
  Future<void> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String firstName,
    required String lastName,
  }) async {
    await api.register(
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        firstName: firstName,
        lastName: lastName);
  }

  @override
  Future<void> updateUser({
    required String firstName,
    required String lastName,
    String? secondName,
    String? about,
    String? image,
  }) async {
    await api.updateUser(
        firstName: firstName,
        secondName: secondName,
        about: about,
        lastName: lastName,
        image: image);
    // TODO await localCache.setUser(user: user);
    // _user = user;
    // notifyListeners();
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  Future<void> loginWithOtp(
      {required String otp, required String email}) async {
    await api.loginWithOtp(otp: otp, email: email);
  }

  @override
  Future<void> otpRequest({required String email, required String lang}) async {
    await api.otpRequest(phone: email, lang: lang);
  }

  @override
  Future<User?> getLocalUser() async {
    return await localCache.getUser();
  }

  @override
  Future<void> uploadUserImage({required File image}) async {
    await api.uploadUserImage(image: image);
  }

  @override
  Future<void> login({required String email, required String password}) async {
    final userWithTokens = await api.login(email: email, password: password);
    _user = userWithTokens.user;
    print(_user);
    await localCache.saveTokenPair(tokenPair: userWithTokens.tokens);
    await localCache.setUser(user: _user!);
    notifyListeners();
  }

  @override
  Future<void> setUser(User user) async {
    _user = user;
    await localCache.setUser(user: _user!);
    notifyListeners();
  }
}
