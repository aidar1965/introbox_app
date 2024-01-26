part of 'presentation_bloc.dart';

@freezed
class PresentationState with _$PresentationState {
  const factory PresentationState.screenState({
    required PdfFragment selectedFragment,
    required bool isLast,
    required bool isFirst,
    required String presentationTitle,
    String? presentationDescription,
    String? pdfFile,
    required List<PdfFragment> fragments,
  }) = _ScreenState;
  const factory PresentationState.loadingError() = _StateLoadingError;
  const factory PresentationState.pending() = _StatePending;
}
