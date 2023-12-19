part of 'presentation_player_bloc.dart';

@freezed
class PresentationPlayerEvent with _$PresentationPlayerEvent {
  const factory PresentationPlayerEvent.dataRequested() = _EventDataRequested;
}
