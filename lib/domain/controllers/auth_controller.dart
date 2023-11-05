import 'package:flutter/foundation.dart';

import '../interfaces/i_auth_controller.dart';
import '../interfaces/i_local_cache.dart';
import '../interfaces/i_user_repository.dart';
import '../locator/locator.dart';
import '../models/token_pair.dart';
import '../models/user.dart';

class AuthController extends ChangeNotifier implements IAuthController {
  final ILocalCache localCache = getIt<ILocalCache>();
  final userRepository = getIt<IUserRepository>();
  late bool _isAuthenticated;

  AuthController() {
    init();
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  Future<AuthController> init() async {
    _isAuthenticated = userRepository.user != null;
    notifyListeners();
    userRepository.addChangeListener(() {
      _isAuthenticated = userRepository.user != null;
      notifyListeners();
    });
    return this;
  }

  @override
  bool get isAuthenticated => _isAuthenticated;

  @override
  Future<void> onAuthenticated({required User user}) async {
    await localCache.setUser(user: user);
    _isAuthenticated = true;
    notifyListeners();
  }

  @override
  void onAuthenticationFailed() async {
    await localCache.deleteUser();
    _isAuthenticated = false;
    notifyListeners();
  }

  @override
  void setAuthStatus(bool status) {
    _isAuthenticated = status;
    notifyListeners();
  }

  @override
  Future<void> onAccessTokensUpdated(TokenPair tokenPair) async {
    await localCache.saveTokenPair(tokenPair: tokenPair);
  }
}
