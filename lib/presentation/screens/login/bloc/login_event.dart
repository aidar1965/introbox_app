part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneConfirmed({required String phone}) =
      _PhoneConfirmed;
  const factory LoginEvent.loginWithOtp(
      {required String phone, required String otp}) = _LoginWithOtp;
}
