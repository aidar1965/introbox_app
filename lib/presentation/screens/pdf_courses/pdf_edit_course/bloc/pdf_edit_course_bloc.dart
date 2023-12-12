import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/locator/locator.dart';
import 'package:moki_tutor/domain/models/course.dart';

import '../../../../../domain/interfaces/i_api.dart';
import '../../../../../domain/models/subject.dart';

part 'pdf_edit_course_state.dart';
part 'pdf_edit_course_event.dart';
part 'pdf_edit_course_bloc.freezed.dart';

class PdfEditCourseBloc extends Bloc<PdfEditCourseEvent, PdfEditCourseState> {
  PdfEditCourseBloc({required this.course})
      : super(PdfEditCourseState.screenState(
            subjects: [],
            selectedSubjects: course.subjects ?? [],
            isLoadingSubjects: true)) {
    on<PdfEditCourseEvent>((event, emitter) => event.map(
        dataRequested: (_) => dataRequested(emitter),
        subjectSelected: (event) => subjectSelected(event, emitter),
        subjectUnSelected: (event) => subjectUnSelected(event, emitter),
        onReorderSubjects: (event) => onReorderSubjects(event, emitter),
        onSaveCourseClicked: (event) => onSaveCourseClicked(event, emitter)));

    _screenState = _ScreenState(
        subjects: [],
        selectedSubjects: course.subjects ?? [],
        isLoadingSubjects: true);

    add(const PdfEditCourseEvent.dataRequested());
  }

  final Course course;
  final api = getIt<IApi>();

  late _ScreenState _screenState;
  int limit = 50;
  int offset = 0;
  int? total;

  void subjectSelected(
      _EventSubjectSelected event, Emitter<PdfEditCourseState> emitter) {
    var selectedSubjects = _screenState.selectedSubjects.map((e) => e).toList();
    if (selectedSubjects.map((e) => e.id).toList().contains(event.subject.id) ==
        false) {
      selectedSubjects.add(event.subject);
    }
    _screenState = _screenState.copyWith(selectedSubjects: selectedSubjects);
    emitter(_screenState);
  }

  Future<void> dataRequested(Emitter<PdfEditCourseState> emitter) async {
    if (total != null && total! <= _screenState.subjects.length) {
      return;
    }
    _screenState = _screenState.copyWith(isLoadingSubjects: true);
    emitter(_screenState);
    try {
      final paginatedSubjects =
          await api.getSubjects(offset: offset, limit: limit);
      final subjectsList = _screenState.subjects.map((e) => e).toList();
      subjectsList.addAll(paginatedSubjects.subjects.toList());

      _screenState = _screenState.copyWith(
          isLoadingSubjects: false, subjects: subjectsList);
      offset = paginatedSubjects.offset;
      total = paginatedSubjects.count;
      emitter(_screenState);
    } on Object {
      _screenState =
          _screenState.copyWith(isLoadingError: true, isLoadingSubjects: false);
      emitter(_screenState);
      rethrow;
    }
  }

  void onReorderSubjects(
      _EventReorderSubject event, Emitter<PdfEditCourseState> emitter) {
    final reorderedSubjects = event.selectedSubjects;
    _screenState = _screenState.copyWith(selectedSubjects: reorderedSubjects);
    emitter(_screenState);
  }

  Future<void> onSaveCourseClicked(_EventOnSaveCourseClicked event,
      Emitter<PdfEditCourseState> emitter) async {
    emitter(_screenState);
    try {
      await api.updateCourse(
          id: course.id,
          title: event.title,
          description: event.description,
          subjectsIds: _screenState.selectedSubjects.map((e) => e.id).toList(),
          locale: Locale.fromSubtags(languageCode: 'ru'));
      emitter(const PdfEditCourseState.saveSuccess());
    } on Object {
      emitter(const PdfEditCourseState.requestError());
    }
  }

  void subjectUnSelected(
      _EventSubjectUnSelected event, Emitter<PdfEditCourseState> emitter) {
    var selectedSubjects = _screenState.selectedSubjects.map((e) => e).toList();
    selectedSubjects.removeWhere((element) => element.id == event.subject.id);
    _screenState = _screenState.copyWith(selectedSubjects: selectedSubjects);
    emitter(_screenState);
  }
}
