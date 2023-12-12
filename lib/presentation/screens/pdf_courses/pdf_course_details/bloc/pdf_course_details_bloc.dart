import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/locator/locator.dart';

import '../../../../../domain/models/course.dart';
import '../../../../../domain/models/subject.dart';

part 'pdf_course_details_event.dart';
part 'pdf_course_details_state.dart';
part 'pdf_course_details_bloc.freezed.dart';

class PdfCourseDetailsBloc
    extends Bloc<PdfCourseDetailsEvent, PdfCourseDetailsState> {
  PdfCourseDetailsBloc({required this.course}) : super(const _StatePending()) {
    on<PdfCourseDetailsEvent>((event, emitter) =>
        event.map(dataRequested: (_) => onDataRequested(emitter)));
    _screenState = const _ScreenState(subjects: []);
    add(const PdfCourseDetailsEvent.dataRequested());
  }

  final api = getIt<IApi>();
  final Course course;

  late _ScreenState _screenState;

  Future<void> onDataRequested(Emitter<PdfCourseDetailsState> emitter) async {
    emitter(const PdfCourseDetailsState.pending());
    try {
      final courseDetails = await api.getCourse(id: course.id);
      _screenState =
          _screenState.copyWith(subjects: courseDetails.subjects ?? []);
      emitter(_screenState);
    } on Object {
      emitter(const PdfCourseDetailsState.loadingError());
      rethrow;
    }
  }
}
