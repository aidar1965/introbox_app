part of 'courses_bloc.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState.pending() = _StatePending;
  const factory CoursesState.loadingError({
    required bool isAuthorized,
  }) = _StateLoadingError;
  const factory CoursesState.loadMoreError() = _StateLoadMoreError;
  const factory CoursesState.screenState({
    required List<Course> courses,
    required bool isAuthorized,
  }) = _ScreenState;
}
