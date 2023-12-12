part of 'image_create_subject_bloc.dart';

@freezed
class ImageCreateSubjectEvent with _$ImageCreateSubjectEvent {
  const factory ImageCreateSubjectEvent.fragmentAdded(
      {required ImageFragment imageFragment}) = _EventFragmentAdded;
  const factory ImageCreateSubjectEvent.saveImageSubject({
    required String title,
    required String description,
  }) = _EventSaveImageSubject;

  const factory ImageCreateSubjectEvent.onReorderFragments(
      {required List<ImageFragment> fragments}) = _EventOnReorderFragments;
  const factory ImageCreateSubjectEvent.onDeleteFragment({required int index}) =
      _EventOnDeleteFragment;
}
