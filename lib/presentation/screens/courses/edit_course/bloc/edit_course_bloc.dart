import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_course_event.dart';
part 'edit_course_state.dart';
part 'edit_course_bloc.freezed.dart';

class EditCourseBloc extends Bloc<EditCourseEvent, EditCourseState> {
  EditCourseBloc() : super(_Initial()) {
    on<EditCourseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
