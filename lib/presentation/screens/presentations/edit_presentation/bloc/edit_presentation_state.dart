part of 'edit_presentation_bloc.dart';

@freezed
class EditPresentationState with _$EditPresentationState {
  const factory EditPresentationState.pending() = _StatePending;
  const factory EditPresentationState.screenState({
    required String title,
    required String description,
    required List<PdfFragment> fragments,
    PdfFragment? selectedFragment,
    @Default(false) bool presentationUpdatePending,
    @Default(false) bool fragmentUpdatePending,
    @Default(false) bool deleteFragmentPending,
  }) = _ScreenState;
  const factory EditPresentationState.requestError({String? errorText}) =
      _StateRequestError;
  const factory EditPresentationState.requestSuccess() = _StateRequestSuccess;
  const factory EditPresentationState.loadingError({String? errorText}) =
      _StateLoadingError;
}
