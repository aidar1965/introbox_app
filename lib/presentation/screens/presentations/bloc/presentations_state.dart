part of 'presentations_bloc.dart';

@freezed
class PresentationState with _$PresentationState {
  const factory PresentationState.pending() = _StatePending;
  const factory PresentationState.screenState(
      {required List<Presentation> presentations}) = _ScreenState;
  const factory PresentationState.requestError({String? errorText}) =
      _StateRequestError;
  const factory PresentationState.loadingError() = _StateLoadingError;
}
