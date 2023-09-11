part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.pending() = _Pending;
  const factory LoginState.otpRoute({required String phone}) = _OtpRoute;
}
