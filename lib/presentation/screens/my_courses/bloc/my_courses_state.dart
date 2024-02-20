part of 'my_courses_bloc.dart';

@freezed
class MyCoursesState with _$MyCoursesState {
  const factory MyCoursesState.pending() = _StatePending;
  const factory MyCoursesState.screenState({
    required List<Course> courses,
    required List<Channel> channels,
    @Default(false) bool isSavePending,
  }) = _ScreenState;

  const factory MyCoursesState.initialLoadingError() =
      _StateInitialLoadingError;
  const factory MyCoursesState.loadMoreError() = _StateLoadMoreError;
  const factory MyCoursesState.requestError({String? errorText}) =
      _StateRequestError;
  const factory MyCoursesState.requestSuccess() = _StateRequestSuccess;
}
