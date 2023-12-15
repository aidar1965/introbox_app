import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/locator/locator.dart';

import '../../../../../domain/interfaces/i_api.dart';
import '../../../../../domain/models/subject.dart';

part 'pdf_add_course_event.dart';
part 'pdf_add_course_state.dart';
part 'pdf_add_course_bloc.freezed.dart';

class PdfAddCourseBloc extends Bloc<PdfAddCourseEvent, PdfAddCourseState> {
  PdfAddCourseBloc() : super(const _StatePending()) {
    on<PdfAddCourseEvent>((event, emitter) => event.map(
        dataRequested: (_) => dataRequested(emitter),
        subjectSelected: (event) => subjectSelected(event, emitter),
        subjectUnSelected: (event) => subjectUnSelected(event, emitter),
        onReorderSubjects: (event) => onReorderSubjects(event, emitter),
        onSaveCourseClicked: (event) => onSaveCourseClicked(event, emitter)));

    _screenState = const _ScreenState(subjects: [], selectedSubjects: []);
    add(const PdfAddCourseEvent.dataRequested());
  }

  final api = getIt<IApi>();

  late _ScreenState _screenState;

  Future<void> dataRequested(Emitter<PdfAddCourseState> emitter) async {
    try {
      final paginatedSubjects = await api.getSubjects();
      _screenState =
          _screenState.copyWith(subjects: paginatedSubjects.subjects.toList());
      emitter(_screenState);
    } on Object {
      emitter(const PdfAddCourseState.loadingError());
    }
  }

  void subjectSelected(
      _EventSubjectSelected event, Emitter<PdfAddCourseState> emitter) {
    var selectedSubjects = _screenState.selectedSubjects.map((e) => e).toList();
    if (selectedSubjects.map((e) => e.id).toList().contains(event.subject.id) ==
        false) {
      selectedSubjects.add(event.subject);
    }
    _screenState = _screenState.copyWith(selectedSubjects: selectedSubjects);
    emitter(_screenState);
  }

  void subjectUnSelected(
      _EventSubjectUnSelected event, Emitter<PdfAddCourseState> emitter) {
    var selectedSubjects = _screenState.selectedSubjects.map((e) => e).toList();
    selectedSubjects.removeWhere((element) => element.id == event.subject.id);
    _screenState = _screenState.copyWith(selectedSubjects: selectedSubjects);
    emitter(_screenState);
  }

  void onReorderSubjects(
      _EventReorderSubject event, Emitter<PdfAddCourseState> emitter) {
    final reorderedSubjects = event.selectedSubjects;
    _screenState = _screenState.copyWith(selectedSubjects: reorderedSubjects);
    emitter(_screenState);
  }

  Future<void> onSaveCourseClicked(_EventOnSaveCourseClicked event,
      Emitter<PdfAddCourseState> emitter) async {
    if (event.title.trim().isEmpty) {
      emitter(const PdfAddCourseState.requestError(
          errorText: 'Поле названия должно быть заполнено'));
      return;
    }
    if (_screenState.selectedSubjects.isEmpty) {
      emitter(const PdfAddCourseState.requestError(
          errorText: 'Вы не выбрали темы публикации'));
      return;
    }
    try {
      await api.addCourse(
          title: event.title,
          description: event.description,
          subjectsIds: _screenState.selectedSubjects.map((e) => e.id).toList(),
          locale: Locale.fromSubtags(languageCode: 'ru'));
    } on Object {
      emitter(const PdfAddCourseState.requestError());
      rethrow;
    }
  }
}
