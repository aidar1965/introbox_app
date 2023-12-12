import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';

import '../../../../../domain/locator/locator.dart';
import '../../../../../domain/models/subject.dart';

part 'pdf_subject_event.dart';
part 'pdf_subject_state.dart';
part 'pdf_subject_bloc.freezed.dart';

class PdfSubjectBloc extends Bloc<PdfSubjectEvent, PdfSubjectState> {
  PdfSubjectBloc() : super(const _StatePending()) {
    on<PdfSubjectEvent>((event, emitter) => event.map(
        deleteSubject: (event) => onDeleteSubject(event, emitter),
        initialDataRequested: (_) => onInitialDataRequested(emitter),
        reloadData: (_) => reloadData(),
        loadMore: (_) => loadMore()));

    add(const PdfSubjectEvent.initialDataRequested());
    _screenState = const _ScreenState(subjects: []);
  }

  final api = getIt<IApi>();

  late _ScreenState _screenState;

  int limit = 50;
  int offset = 0;
  int? total;

  Future<void> onDeleteSubject(
      _EventDeleteSubject event, Emitter<PdfSubjectState> emitter) async {
    try {
      await api.deleteSubject(id: event.id);
      final oldSubjects = _screenState.subjects.map((e) => e).toList();
      oldSubjects.removeWhere((element) => element.id == event.id);
      _screenState = _screenState.copyWith(subjects: oldSubjects);
      emitter(_screenState);
    } on Object {
      emitter(const PdfSubjectState.requestError());
      rethrow;
    }
  }

  Future<void> onInitialDataRequested(Emitter<PdfSubjectState> emitter) async {
    if (total != null && total! <= _screenState.subjects.length) {
      return;
    }
    emitter(const PdfSubjectState.pending());
    try {
      final paginatedSubjects =
          await api.getSubjects(offset: offset, limit: limit);
      final oldSubjects = _screenState.subjects.map((e) => e).toList();
      oldSubjects.addAll(paginatedSubjects.subjects);
      offset = paginatedSubjects.offset;
      total = paginatedSubjects.count;
      _screenState = _screenState.copyWith(subjects: oldSubjects);
      emitter(_screenState);
    } on Object {
      emitter(const PdfSubjectState.loadingError());
      rethrow;
    }
  }

  void reloadData() {
    offset = 0;
    total = null;
    add(const PdfSubjectEvent.initialDataRequested());
  }

  loadMore() {}
}
