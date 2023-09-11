part of 'course_player_bloc.dart';

@freezed
class CoursePlayerEvent with _$CoursePlayerEvent {
  const factory CoursePlayerEvent.started() = _Started;
}