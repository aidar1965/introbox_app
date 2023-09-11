import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/course.dart';

part 'course_player_event.dart';
part 'course_player_state.dart';
part 'course_player_bloc.freezed.dart';

class CoursePlayerBloc extends Bloc<CoursePlayerEvent, CoursePlayerState> {
  CoursePlayerBloc(this.course) : super(_Initial()) {
    on<CoursePlayerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final Course course;
}
