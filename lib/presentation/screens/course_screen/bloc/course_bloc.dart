import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/locator/locator.dart';

import '../../../../domain/models/course.dart';

part 'course_state.dart';
part 'course_event.dart';
part 'course_bloc.freezed.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc(this.id) : super(const CourseState.pending()) {
    on<CourseEvent>(
      (event, emitter) => event.map(
          initialDataRequested: (_) => initialDataRequested(emitter),
          reorderPresentations: (event) => reorderPresentations(event, emitter),
          removePresentationFromCourse: (event) =>
              removePresentationFromCourse(event, emitter)),
    );
    add(CourseEvent.initialDataRequested(id));
  }

  final api = getIt<IApi>();
  late _ScreenState _screenState;
  final String id;

  Future<void> initialDataRequested(Emitter<CourseState> emitter) async {
    emitter(const CourseState.pending());
    try {
      final course = await api.getCourse(id: id);
      _screenState = _ScreenState(course: course);
      emitter(_screenState);
    } on Object {
      emitter(const CourseState.loadingError());
      rethrow;
    }
  }

  Future<void> reorderPresentations(
      _EventReorderPresentations event, Emitter<CourseState> emitter) async {
    emitter(const CourseState.pending());
    try {
      await api.reorderPresentations(presentationsIds: event.ids);
      add(CourseEvent.initialDataRequested(id));
    } on Object {
      emitter(const CourseState.requestError());
      emitter(_screenState);
      rethrow;
    }
  }

  Future<void> removePresentationFromCourse(
      _EventRemovePresentationFromCourse event,
      Emitter<CourseState> emitter) async {
    emitter(const CourseState.pending());
    try {
      await api.removePresentationFromCourse(presentationId: event.id);
      add(CourseEvent.initialDataRequested(id));
    } on Object {
      emitter(const CourseState.requestError());
      emitter(_screenState);
      rethrow;
    }
  }
}
