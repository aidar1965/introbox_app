part of 'presentation_add_fragment_bloc.dart';

@freezed
class PresentationAddFragmentState with _$PresentationAddFragmentState {
  const factory PresentationAddFragmentState.screenState({
    Uint8List? imageBytes,
    Uint8List? audioBytes,
    String? audioPath,
    int? duration,
    @Default(false) bool isSavePending,
    @Default(false) bool isTitleOverImage,
  }) = _ScreenState;
  const factory PresentationAddFragmentState.requestSuccess() =
      _StateRequestSuccess;
  const factory PresentationAddFragmentState.requestError({String? errorText}) =
      _StateRequestError;
}
