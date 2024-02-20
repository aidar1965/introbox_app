part of 'public_course_bloc.dart';

@freezed
class PublicCourseState with _$PublicCourseState {
  const factory PublicCourseState.pending() = _StatePending;
  const factory PublicCourseState.screenState({required Course course}) =
      _ScreenState;

  const factory PublicCourseState.loadingError() = _StateLoadingError;
}
