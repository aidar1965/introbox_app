part of 'presentation_add_fragment_bloc.dart';

@freezed
class PresentationAddFragmentState with _$PresentationAddFragmentState {
  const factory PresentationAddFragmentState.screenState(
      {File? image,
      String? audioPath,
      int? duration,
      @Default(false) bool isSavePending}) = _ScreenState;
  const factory PresentationAddFragmentState.requestSuccess() =
      _StateRequestSuccess;
  const factory PresentationAddFragmentState.requestError({String? errorText}) =
      _StateRequestError;
}
