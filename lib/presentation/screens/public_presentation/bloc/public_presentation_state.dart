part of 'public_presentation_bloc.dart';

@freezed
class PublicPresentationState with _$PublicPresentationState {
  const factory PublicPresentationState.screenState({
    required PdfFragment selectedFragment,
    required bool isLast,
    required bool isFirst,
    required String presentationTitle,
    String? presentationDescription,
    String? pdfFile,
    required List<PdfFragment> fragments,
    required Channel? channel,
  }) = _ScreenState;
  const factory PublicPresentationState.passwordForm(
      {@Default(false) bool isPending}) = _StatePasswordForm;
  const factory PublicPresentationState.loadingError(
      {@Default(false) bool isPending}) = _StateLoadingError;
  const factory PublicPresentationState.checkHasPasswordError(
      {@Default(false) bool isPending}) = _StateCheckHasPasswordError;
  const factory PublicPresentationState.pending() = _StatePending;
  const factory PublicPresentationState.idNotSpecified() = _StateIdNotSpecified;
  const factory PublicPresentationState.requestError({String? errorText}) =
      _StateRequestError;
  const factory PublicPresentationState.notFound() = _StateNotFound;
}
