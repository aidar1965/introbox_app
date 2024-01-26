import 'package:flutter/foundation.dart';

import '../interfaces/i_auth_controller.dart';
import '../interfaces/i_local_cache.dart';
import '../locator/locator.dart';
import '../models/token_pair.dart';
import '../models/user.dart';

class AuthController extends ChangeNotifier implements IAuthController {
  final ILocalCache localCache = getIt<ILocalCache>();

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
    _isAuthenticated = (await localCache.getUser()) != null;
    notifyListeners();

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
