part of 'presentation_add_fragment_bloc.dart';

@freezed
class PresentationAddFragmentEvent with _$PresentationAddFragmentEvent {
  const factory PresentationAddFragmentEvent.audioAdded(
      {required String audioPath, required int duration}) = _EventAudioAdded;
  const factory PresentationAddFragmentEvent.imageAdded({
    required String imagePath,
  }) = _EventImageAdded;
  const factory PresentationAddFragmentEvent.fragmentSaveClicked({
    required String title,
    required String description,
  }) = _EventFragmentSaveClicked;
  const factory PresentationAddFragmentEvent.deleteAudio() = _EventDeleteAudio;
}