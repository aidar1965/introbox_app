part of 'presentations_bloc.dart';

@freezed
class PresentationsState with _$PresentationsState {
  const factory PresentationsState.pending() = _StatePending;
  const factory PresentationsState.screenState(
      {required List<Presentation> presentations}) = _ScreenState;
  const factory PresentationsState.requestError({String? errorText}) =
      _StateRequestError;
  const factory PresentationsState.requestSuccess({String? message}) =
      _StateRequestSuccess;
  const factory PresentationsState.loadingError() = _StateLoadingError;
}
