part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize() = _EventInitialize;
  const factory HomeEvent.userChanged() = _UserChanged;
  const factory HomeEvent.openPlayer({required Fragment record}) = _OpenPlayer;
  const factory HomeEvent.closePlayer() = _ClosePlayer;
  const factory HomeEvent.openSubjectPlayer({required Subject subject}) =
      _OpenSubjectPlayer;
  const factory HomeEvent.closeSubjectPlayer() = _CloseSubjectPlayer;
  const factory HomeEvent.openCoursePlayer(
      {required Course course, bool? remote}) = _OpenCoursePlayer;
  const factory HomeEvent.closeCoursePlayer() = _CloseCoursePlayer;
}
