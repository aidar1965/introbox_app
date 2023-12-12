part of 'pdf_add_fragment_bloc.dart';

@freezed
class PdfAddFragmentEvent with _$PdfAddFragmentEvent {
  const factory PdfAddFragmentEvent.audioAdded(
      {required String audioPath, required int duration}) = _EventAudioAdded;
  const factory PdfAddFragmentEvent.imageAdded({
    required String imagePath,
  }) = _EventImageAdded;
  const factory PdfAddFragmentEvent.fragmentSaveClicked({
    required String title,
    required String description,
  }) = _EventFragmentSaveClicked;
  const factory PdfAddFragmentEvent.deleteAudio() = _EventDeleteAudio;
}
