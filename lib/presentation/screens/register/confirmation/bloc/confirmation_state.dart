part of 'confirmation_bloc.dart';

@freezed
class ConfirmationState with _$ConfirmationState {
  const factory ConfirmationState.screenState({required bool isPending}) =
      _ScreenState;
  const factory ConfirmationState.confirmationSuccess() =
      _StateConfirmationSuccess;
  const factory ConfirmationState.confirmationError({String? errorText}) =
      _StateConfirmationError;
}
