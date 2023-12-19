part of 'edit_presentation_bloc.dart';

@freezed
class EditPresentationEvent with _$EditPresentationEvent {
  const factory EditPresentationEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory EditPresentationEvent.fragmentSelected(
      {required PdfFragment fragment}) = _EventFragmentSelected;
  const factory EditPresentationEvent.audioAdded(
      {required PdfFragment fragment,
      required String title,
      required String description,
      required String path,
      required String duration}) = _EventAudioAdded;
  const factory EditPresentationEvent.deleteAudio({
    required PdfFragment fragment,
  }) = _EventAudioDeleted;
  const factory EditPresentationEvent.imageAdded({
    required PdfFragment fragment,
    required String title,
    required String description,
    required String path,
  }) = _EventImageAdded;
  const factory EditPresentationEvent.updatePresentation(
      {required String title,
      required String description}) = _EventUpdatePresentation;
  const factory EditPresentationEvent.updateFragment(
      {required String title,
      required String description}) = _EventUpdateFragment;
  const factory EditPresentationEvent.deleteFragment() = _EventDeleteFragment;
  const factory EditPresentationEvent.reorderFragments(
      {required List<int> ids}) = _EventReorderFragment;
}