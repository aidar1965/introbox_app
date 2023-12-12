part of 'pdf_add_fragment_bloc.dart';

@freezed
class PdfAddFragmentState with _$PdfAddFragmentState {
  const factory PdfAddFragmentState.screenState(
      {String? imagePath,
      String? audioPath,
      int? duration,
      @Default(false) bool isSavePending}) = _ScreenState;
  const factory PdfAddFragmentState.requestSuccess() = _StateRequestSuccess;
  const factory PdfAddFragmentState.requestError({String? errorText}) =
      _StateRequesError;
}
