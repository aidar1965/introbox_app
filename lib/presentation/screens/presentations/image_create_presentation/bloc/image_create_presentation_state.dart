part of 'image_create_presentation_bloc.dart';

@freezed
class ImageCreatePresentationState with _$ImageCreatePresentationState {
  const factory ImageCreatePresentationState.pending() = _StatePending;
  const factory ImageCreatePresentationState.screenState({
    required List<ImageFragment> fragments,
    required List<Channel> channels,
    required Channel selectedChanel,
    @Default(false) bool isPending,
  }) = _ScreenState;
  const factory ImageCreatePresentationState.saveSuccess() = _StateSaveSuccess;
  const factory ImageCreatePresentationState.saveError({String? errorText}) =
      _StateSaveError;
  const factory ImageCreatePresentationState.initialDataNotLoaded() =
      _StateInitialDataNotLoaded;
}
