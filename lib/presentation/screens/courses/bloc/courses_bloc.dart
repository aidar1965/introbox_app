import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/locator/locator.dart';

import '../../../../domain/models/course.dart';

part 'courses_state.dart';
part 'courses_event.dart';
part 'courses_bloc.freezed.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  CoursesBloc() : super(const CoursesState.pending()) {
    on<CoursesEvent>(
      (event, emitter) => event.map(
        initialDataRequested: (_) => initialDataRequested(event, emitter),
        loadMore: (event) => onLoadMore(event, emitter),
      ),
    );
    add(const CoursesEvent.initialDataRequested());
    _screenState = const _ScreenState(
      courses: [],
    );
  }

  final api = getIt<IApi>();
  late _ScreenState _screenState;
  final int limit = 20;
  int offset = 0;
  late int total;

  Future<void> initialDataRequested(
      CoursesEvent event, Emitter<CoursesState> emitter) async {
    offset = 0;
    _screenState = _screenState.copyWith(courses: []);
    add(const CoursesEvent.loadMore());
  }

  Future<void> onLoadMore(
      _EventLoadMore event, Emitter<CoursesState> emitter) async {
    emitter(const CoursesState.pending());
    try {
      final paginatedCourses =
          await api.getPublicCourses(limit: limit, offset: offset);
      final courses = <Course>[
        ..._screenState.courses,
        ...paginatedCourses.courses.toList()
      ];
      total = paginatedCourses.count;
      offset = paginatedCourses.offset;
      _screenState = _screenState.copyWith(courses: courses);
      emitter(_screenState);
    } on Object {
      if (offset == 0) {
        emitter(const CoursesState.loadingError());
      } else {
        emitter(const CoursesState.loadMoreError());
      }
    }
  }
}
