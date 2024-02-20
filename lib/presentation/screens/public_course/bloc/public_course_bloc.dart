import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/course.dart';

part 'public_course_state.dart';
part 'public_course_event.dart';
part 'public_course_bloc.freezed.dart';

class PublicCourseBloc extends Bloc<PublicCourseEvent, PublicCourseState> {
  PublicCourseBloc(this.id) : super(const PublicCourseState.pending()) {
    on<PublicCourseEvent>(
      (event, emitter) => event.map(
        initialDataRequested: (_) => initialDataRequested(emitter),
      ),
    );
    add(PublicCourseEvent.initialDataRequested(id));
  }

  final api = getIt<IApi>();
  late _ScreenState _screenState;
  final String id;

  Future<void> initialDataRequested(Emitter<PublicCourseState> emitter) async {
    emitter(const PublicCourseState.pending());
    try {
      final course = await api.getPublicCourse(id: id);
      _screenState = _ScreenState(course: course);
      emitter(_screenState);
    } on Object {
      emitter(const PublicCourseState.loadingError());
      rethrow;
    }
  }
}
