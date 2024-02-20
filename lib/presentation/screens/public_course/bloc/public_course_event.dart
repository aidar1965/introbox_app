part of 'public_course_bloc.dart';

@freezed
class PublicCourseEvent with _$PublicCourseEvent {
  const factory PublicCourseEvent.initialDataRequested(String id) =
      _EventInitialDataRequested;
}
