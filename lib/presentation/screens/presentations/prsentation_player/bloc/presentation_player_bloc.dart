import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';
import '../../../../../../domain/models/pdf_fragment.dart';
import '../../../../../../domain/models/presentation.dart';

part 'presentation_player_state.dart';
part 'presentation_player_event.dart';
part 'presentation_player_bloc.freezed.dart';

class PresentationPlayerBloc
    extends Bloc<PresentationPlayerEvent, PresentationPlayerState> {
  PresentationPlayerBloc(this.presentation) : super(const _StatePending()) {
    on<PresentationPlayerEvent>((event, emitter) => event.map(
          dataRequested: (_) => dataRequested(emitter),
        ));
    _screenState = const _ScreenState(fragments: []);
    add(const PresentationPlayerEvent.dataRequested());
  }

  final Presentation presentation;

  late _ScreenState _screenState;

  final api = getIt<IApi>();

  Future<void> dataRequested(Emitter<PresentationPlayerState> emitter) async {
    emitter(const PresentationPlayerState.pending());
    try {
      final fragments = await api.getPresentationFragments(id: presentation.id);
      _screenState = _screenState.copyWith(fragments: fragments);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationPlayerState.loadingError());
      rethrow;
    }
  }
}
