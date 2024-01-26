part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.screenState(
      {@Default(false) bool isPending}) = _ScreenState;
  const factory ChangePasswordState.changePasswordError({String? errorText}) =
      _StateChangePasswordError;
  const factory ChangePasswordState.changePasswordSuccess() =
      _StateChangePasswordSuccess;
}
