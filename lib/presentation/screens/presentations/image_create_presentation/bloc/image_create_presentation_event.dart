part of 'image_create_presentation_bloc.dart';

@freezed
class ImageCreatePresentationEvent with _$ImageCreatePresentationEvent {
  const factory ImageCreatePresentationEvent.fragmentAdded(
      {required ImageFragment imageFragment}) = _EventFragmentAdded;
  const factory ImageCreatePresentationEvent.saveImageSubject({
    required String title,
    required String description,
  }) = _EventSaveImageSubject;

  const factory ImageCreatePresentationEvent.onReorderFragments(
      {required List<ImageFragment> fragments}) = _EventOnReorderFragments;
  const factory ImageCreatePresentationEvent.onDeleteFragment(
      {required int index}) = _EventOnDeleteFragment;
}
