part of 'presentations_bloc.dart';

@freezed
class PresentationsState with _$PresentationsState {
  const factory PresentationsState.pending() = _StatePending;
  const factory PresentationsState.screenState(
      {required List<Presentation> presentations,
      required List<Course> courses,
      required List<Channel> channels}) = _ScreenState;
  const factory PresentationsState.requestError({String? errorText}) =
      _StateRequestError;
  const factory PresentationsState.requestSuccess({String? message}) =
      _StateRequestSuccess;
  const factory PresentationsState.loadingError() = _StateLoadingError;
}
