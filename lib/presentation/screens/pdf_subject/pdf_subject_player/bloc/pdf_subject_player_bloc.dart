import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/interfaces/i_api.dart';
import '../../../../../domain/locator/locator.dart';

import '../../../../../domain/models/pdf_fragment.dart';
import '../../../../../domain/models/subject.dart';

part 'pdf_subject_player_event.dart';
part 'pdf_subject_player_state.dart';
part 'pdf_subject_player_bloc.freezed.dart';

class PdfSubjectPlayerBloc
    extends Bloc<PdfSubjectPlayerEvent, PdfSubjectPlayerState> {
  PdfSubjectPlayerBloc(this.subject) : super(const _StatePending()) {
    on<PdfSubjectPlayerEvent>((event, emitter) => event.map(
          dataRequested: (_) => dataRequested(emitter),
        ));
    _screenState = const _ScreenState(fragments: []);
    add(const PdfSubjectPlayerEvent.dataRequested());
  }

  final Subject subject;

  late _ScreenState _screenState;

  final api = getIt<IApi>();

  Future<void> dataRequested(Emitter<PdfSubjectPlayerState> emitter) async {
    emitter(const PdfSubjectPlayerState.pending());
    try {
      final fragments = await api.getSubjectFragments(id: subject.id);
      _screenState = _screenState.copyWith(fragments: fragments);
      emitter(_screenState);
    } on Object {
      emitter(const PdfSubjectPlayerState.loadingError());
    }
  }
}
