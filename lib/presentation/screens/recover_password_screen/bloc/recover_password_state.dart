part of 'recover_password_bloc.dart';

@freezed
class RecoverPasswordState with _$RecoverPasswordState {
  const factory RecoverPasswordState.screenState(
      {@Default(false) bool isPending}) = _ScreenState;
  const factory RecoverPasswordState.recoverError({String? errorText}) =
      _StateRecoverError;
  const factory RecoverPasswordState.recoverSuccess() = _StateRecoverSuccess;
}
