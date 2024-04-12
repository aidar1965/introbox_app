part of 'edit_presentation_bloc.dart';

@freezed
class EditPresentationState with _$EditPresentationState {
  const factory EditPresentationState.pending() = _StatePending;
  const factory EditPresentationState.screenState(
      {required String title,
      String? description,
      required List<PdfFragment> fragments,
      List<PresentationLink>? links,
      PdfFragment? selectedFragment,
      @Default(false) bool presentationUpdatePending,
      @Default(false) bool fragmentUpdatePending,
      @Default(false) bool deleteFragmentPending,
      int? countFileGenerated}) = _ScreenState;
  const factory EditPresentationState.requestError({String? errorText}) =
      _StateRequestError;
  const factory EditPresentationState.requestSuccess() = _StateRequestSuccess;
  const factory EditPresentationState.loadingError({String? errorText}) =
      _StateLoadingError;
}
