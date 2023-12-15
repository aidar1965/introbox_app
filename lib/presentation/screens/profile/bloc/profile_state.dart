part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.pending() = _StatePending;
  const factory ProfileState.screenState({required User user}) = _ScreenState;
  const factory ProfileState.loadingError() = _StateLoadingError;
  const factory ProfileState.logoutSuccess() = _StateLogoutSuccess;
  const factory ProfileState.requestError({String? errorText}) =
      _StateRequestError;
}
