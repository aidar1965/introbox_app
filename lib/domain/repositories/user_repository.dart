import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';
import 'package:moki_tutor/domain/models/user.dart';

import '../../data/mapper/http_request_mapper.dart';

class UserRepository extends ChangeNotifier implements IUserRepository {
  final ILocalDB db;
  final IApi api;
  UserRepository({
    required this.db,
    required this.api,
  }) {
    init();
  }

  // TODO закрыть user listener

  @override
  Future<void> init() async {
    _user = await getLocalUser();

    notifyListeners();
  }

  User? _user;

  HttpRequestMapper httpRequestMapper = HttpRequestMapper();

  @override
  // TODO: implement isAuthorized
  bool get isAuthorized => user != null;

  @override
  User? get user => _user;

  @override
  void logout() {
    db.removeLocalUser();
    //  await api.clearToken();
    _user = null;
    notifyListeners();
  }

  @override
  Future<void> register({required User user}) {
    notifyListeners();
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser({required User user}) async {
    db.saveUserLocally(user);
    await api.updateUser(user: user);
    _user = user;
    notifyListeners();
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  Future<void> loginWithOtp(
      {required String otp, required String phone}) async {
    await api.loginWithOtp(otp: otp, phone: phone);
  }

  @override
  Future<void> otpRequest({required String phone, required String lang}) async {
    await api.otpRequest(phone: phone, lang: lang);
  }

  @override
  Future<User> getUser() {
    throw UnimplementedError();
  }

  @override
  Future<User?> getLocalUser() async {
    return await db.getLocalUser();
  }

  @override
  Future<void> uploadUserImage({required File image}) async {
    await api.uploadUserImage(image: image);
  }
}
