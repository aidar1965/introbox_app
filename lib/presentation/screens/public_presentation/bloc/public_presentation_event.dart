part of 'public_presentation_bloc.dart';

@freezed
class PublicPresentationEvent with _$PublicPresentationEvent {
  const factory PublicPresentationEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PublicPresentationEvent.checkPresentationHasPassword() =
      _EventCheckPresentationHasPassword;
  const factory PublicPresentationEvent.sendPassword({
    required String password,
  }) = _EventSendPassword;
  const factory PublicPresentationEvent.nextSlideClicked() =
      _EventNextSlideClicked;
  const factory PublicPresentationEvent.previousSlideClicked() =
      _EventPreviousSlideClicked;
  const factory PublicPresentationEvent.fragmentClicked(int index) =
      _EventFragmentClicked;
}
