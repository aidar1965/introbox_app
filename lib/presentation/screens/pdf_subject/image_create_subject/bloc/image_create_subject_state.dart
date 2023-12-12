part of 'image_create_subject_bloc.dart';

@freezed
class ImageCreateSubjectState with _$ImageCreateSubjectState {
  const factory ImageCreateSubjectState.screenState(
      {required List<ImageFragment> fragments}) = _ScreenState;
  const factory ImageCreateSubjectState.saveSuccess() = _StateSaveSuccess;
  const factory ImageCreateSubjectState.saveError() = _StateSaveError;
}
