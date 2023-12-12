import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/locator/locator.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/models/course.dart';

part 'pdf_courses_event.dart';
part 'pdf_courses_state.dart';
part 'pdf_courses_bloc.freezed.dart';

class PdfCoursesBloc extends Bloc<PdfCoursesEvent, PdfCoursesState> {
  PdfCoursesBloc() : super(const _StatePending()) {
    on<PdfCoursesEvent>((event, emitter) => event.map(
        dataRequested: (_) => dataRequested(emitter),
        courseDetailsClicked: (event) => courseDetailsClicked(event, emitter),
        editCourseClicked: (event) => editCourseClicked(event, emitter),
        reloadPage: (_) => reloadPage(emitter),
        publishCourse: (event) => publishCourse(event, emitter),
        deleteCourse: (event) => deleteCourse(event, emitter)));
    _screenState = const _ScreenState(courses: []);
    add(const PdfCoursesEvent.dataRequested());
  }

  late _ScreenState _screenState;
  final api = getIt<IApi>();
  late int total;
  int offset = 0;
  static const int limit = 50;

  Future<void> dataRequested(Emitter<PdfCoursesState> emitter) async {
    emitter(const PdfCoursesState.pending());
    try {
      final paginatedCourses =
          await api.getCourses(offset: offset, limit: limit);
      total = paginatedCourses.count;
      offset = paginatedCourses.offset;
      _screenState =
          _screenState.copyWith(courses: paginatedCourses.courses.toList());
      emitter(_screenState);
    } on Object {
      emitter(const PdfCoursesState.loadingError());
      rethrow;
    }
  }

  Future<void> courseDetailsClicked(_EventCourseDetailsClicked event,
      Emitter<PdfCoursesState> emitter) async {}

  Future<void> editCourseClicked(
      _EvenEditCourseClicked event, Emitter<PdfCoursesState> emitter) async {}

  reloadPage(Emitter<PdfCoursesState> emitter) {
    offset = 0;
    add(const PdfCoursesEvent.dataRequested());
  }

  Future<void> publishCourse(
      _EventPublishCourse event, Emitter<PdfCoursesState> emitter) async {
    try {
      await api.publishCourse(id: event.course.id);
      add(const PdfCoursesEvent.reloadPage());
    } on Object {
      emitter(const PdfCoursesState.requestError());
      rethrow;
    }
  }

  Future<void> deleteCourse(
      _EventDeleteCourse event, Emitter<PdfCoursesState> emitter) async {
    try {
      await api.deleteCourse(id: event.course.id);
      add(const PdfCoursesEvent.reloadPage());
    } on Object {
      emitter(const PdfCoursesState.requestError());
      rethrow;
    }
  }
}
