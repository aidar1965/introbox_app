import 'dart:ui';

import 'package:flutter/foundation.dart';

import '../models/token_pair.dart';
import '../models/user.dart';

abstract class IAuthController {
  bool get isAuthenticated;

  Future<void> onAuthenticated({required User user});
  void onAuthenticationFailed();
  Future<IAuthController> init();

  void setAuthStatus(bool status);

  void addChangeListener(VoidCallback listener);

  void removeChangeListener(VoidCallback listener);

  /// принимает событие о том, что токены успешно обновлены
  /// получает свежие токены
  Future<void> onAccessTokensUpdated(TokenPair tokenPair);
}
