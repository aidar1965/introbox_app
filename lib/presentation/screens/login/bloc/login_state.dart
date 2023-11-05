part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.screenState({required bool isPending}) =
      _ScreenState;
  const factory LoginState.loginSuccess() = _StateLoginSuccess;
  const factory LoginState.loginError({String? errorText}) = _StateLoginError;
}
