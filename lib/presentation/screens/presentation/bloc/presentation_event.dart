part of 'presentation_bloc.dart';

@freezed
class PresentationEvent with _$PresentationEvent {
  const factory PresentationEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PresentationEvent.nextSlideClicked() = _EventNextSlideClicked;
  const factory PresentationEvent.previousSlideClicked() =
      _EventPreviousSlideClicked;
}
