import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/interfaces/i_subject_repository.dart';
import '../../../../../domain/locator/locator.dart';
import '../../../../../domain/models/subject.dart';

part 'pdf_subject_event.dart';
part 'pdf_subject_state.dart';
part 'pdf_subject_bloc.freezed.dart';

class PdfSubjectBloc extends Bloc<PdfSubjectEvent, PdfSubjectState> {
  PdfSubjectBloc() : super(const _StatePending()) {
    on<PdfSubjectEvent>((event, emitter) =>
        event.map(dataChanged: (_) => _dataChanged(emitter)));
    add(const PdfSubjectEvent.dataChanged());
    subjectsRepository.addChangeListener(onSubjectsChanged);
  }

  final subjectsRepository = getIt<ISubjectsRepository>();

  final _screenState =
      const PdfSubjectState.screenState(subjects: []) as _ScreenState;

  void onSubjectsChanged() {
    add(const PdfSubjectEvent.dataChanged());
  }

  void _dataChanged(Emitter<PdfSubjectState> emitter) {
    emitter(_screenState.copyWith(subjects: subjectsRepository.subjects));
  }

  @override
  Future<void> close() {
    subjectsRepository.removeChangeListener(onSubjectsChanged);
    return super.close();
  }
}
