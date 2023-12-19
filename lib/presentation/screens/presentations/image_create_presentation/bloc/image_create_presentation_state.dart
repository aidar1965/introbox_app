part of 'image_create_presentation_bloc.dart';

@freezed
class ImageCreatePresentationState with _$ImageCreatePresentationState {
  const factory ImageCreatePresentationState.screenState(
      {required List<ImageFragment> fragments}) = _ScreenState;
  const factory ImageCreatePresentationState.saveSuccess() = _StateSaveSuccess;
  const factory ImageCreatePresentationState.saveError() = _StateSaveError;
}
