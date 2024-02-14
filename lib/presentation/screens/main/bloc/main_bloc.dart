import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/interfaces/i_auth_controller.dart';

import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/presentation.dart';

part 'main_state.dart';
part 'main_event.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc()
      : super(const MainState.screenState(
            isAuthorized: false, presentations: [], isPending: true)) {
    on<MainEvent>(
      (event, emitter) =>
          event.map(initialDataRequested: (_) => initialDataRequested(emitter)),
    );
    add(const MainEvent.initialDataRequested());
  }

  final authController = getIt<IAuthController>();
  final api = getIt<IApi>();
  late _ScreenState _screenState;

  Future<void> initialDataRequested(Emitter<MainState> emitter) async {
    _screenState = _ScreenState(
        isAuthorized: authController.isAuthenticated,
        presentations: [],
        isPending: true);
    emitter(_screenState);
    try {
      final paginatedPresentation = await api.getPublicPresentations();
      _screenState = _screenState.copyWith(
          isPending: false,
          presentations: paginatedPresentation.presentations.toList());
      emitter(_screenState);
    } on Object {
      emitter(const MainState.initialLoadingError());
    }
  }
}
