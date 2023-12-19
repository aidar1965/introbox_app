import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';

import '../../../../../domain/locator/locator.dart';
import '../../../../../domain/models/presentation.dart';

part 'presentations_event.dart';
part 'presentations_state.dart';
part 'presentations_bloc.freezed.dart';

class PresentationBloc extends Bloc<PresentationEvent, PresentationState> {
  PresentationBloc() : super(const _StatePending()) {
    on<PresentationEvent>((event, emitter) => event.map(
        deletePresentation: (event) => onDeletePresentation(event, emitter),
        initialDataRequested: (_) => onInitialDataRequested(emitter),
        reloadData: (_) => reloadData(),
        loadMore: (_) => loadMore()));

    add(const PresentationEvent.initialDataRequested());
    _screenState = const _ScreenState(presentations: []);
  }

  final api = getIt<IApi>();

  late _ScreenState _screenState;

  int limit = 50;
  int offset = 0;
  int? total;

  Future<void> onDeletePresentation(_EventDeletePresentation event,
      Emitter<PresentationState> emitter) async {
    try {
      await api.deletePresentation(id: event.id);
      final oldPresentations =
          _screenState.presentations.map((e) => e).toList();
      oldPresentations.removeWhere((element) => element.id == event.id);
      _screenState = _screenState.copyWith(presentations: oldPresentations);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationState.requestError());
      rethrow;
    }
  }

  Future<void> onInitialDataRequested(
      Emitter<PresentationState> emitter) async {
    if (total != null && total! <= _screenState.presentations.length) {
      return;
    }
    emitter(const PresentationState.pending());
    try {
      final paginatedPresentations =
          await api.getPresentations(offset: offset, limit: limit);
      final oldPresentations =
          _screenState.presentations.map((e) => e).toList();
      oldPresentations.addAll(paginatedPresentations.presentations);
      offset = paginatedPresentations.offset;
      total = paginatedPresentations.count;
      _screenState = _screenState.copyWith(presentations: oldPresentations);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationState.loadingError());
      rethrow;
    }
  }

  void reloadData() {
    offset = 0;
    total = null;
    _screenState = _screenState.copyWith(presentations: []);
    add(const PresentationEvent.initialDataRequested());
  }

  loadMore() {}
}
