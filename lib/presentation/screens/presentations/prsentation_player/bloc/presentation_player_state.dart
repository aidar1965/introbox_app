part of 'presentation_player_bloc.dart';

@freezed
class PresentationPlayerState with _$PresentationPlayerState {
  const factory PresentationPlayerState.pending() = _StatePending;
  const factory PresentationPlayerState.screenState(
      {required List<PdfFragment> fragments}) = _ScreenState;
  const factory PresentationPlayerState.loadingError({String? errorText}) =
      _StateLoadingError;
}
