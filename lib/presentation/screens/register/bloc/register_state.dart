part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.screenState({@Default(false) bool isPending}) =
      _StateScreen;
  const factory RegisterState.requestSuccess() = _StateRequestSuccess;
  const factory RegisterState.requestError({String? errorText}) =
      _StateRequestError;
}
