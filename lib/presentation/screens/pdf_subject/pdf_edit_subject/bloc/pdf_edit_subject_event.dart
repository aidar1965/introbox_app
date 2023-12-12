part of 'pdf_edit_subject_bloc.dart';

@freezed
class PdfEditSubjectEvent with _$PdfEditSubjectEvent {
  const factory PdfEditSubjectEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PdfEditSubjectEvent.fragmentSelected(
      {required PdfFragment fragment}) = _EventFragmentSelected;
  const factory PdfEditSubjectEvent.audioAdded(
      {required PdfFragment fragment,
      required String title,
      required String description,
      required String path,
      required String duration}) = _EventAudioAdded;
  const factory PdfEditSubjectEvent.deleteAudio({
    required PdfFragment fragment,
  }) = _EventAudioDeleted;
  const factory PdfEditSubjectEvent.imageAdded({
    required PdfFragment fragment,
    required String title,
    required String description,
    required String path,
  }) = _EventImageAdded;
  const factory PdfEditSubjectEvent.updateSubject(
      {required String title,
      required String description}) = _EventUpdateSubject;
  const factory PdfEditSubjectEvent.updateFragment(
      {required String title,
      required String description}) = _EventUpdateFragment;
  const factory PdfEditSubjectEvent.deleteFragment() = _EventDeleteFragment;
  const factory PdfEditSubjectEvent.reorderFragments({required List<int> ids}) =
      _EventReorderFragment;
}
