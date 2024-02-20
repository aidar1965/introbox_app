part of 'courses_bloc.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState.pending() = _StatePending;
  const factory CoursesState.loadingError() = _StateLoadingError;
  const factory CoursesState.loadMoreError() = _StateLoadMoreError;
  const factory CoursesState.screenState({required List<Course> courses}) =
      _ScreenState;
}
