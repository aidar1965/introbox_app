import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/domain/interfaces/i_api.dart';
import 'package:introbox/domain/interfaces/i_auth_controller.dart';

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
      (event, emitter) => event.map(
          initialDataRequested: (event) => initialDataRequested(event, emitter),
          reloadData: (_) => reloadData(emitter)),
    );
    add(const MainEvent.initialDataRequested());
    _screenState = _ScreenState(
        isAuthorized: authController.isAuthenticated,
        presentations: [],
        isPending: true);
  }

  final authController = getIt<IAuthController>();
  final api = getIt<IApi>();
  late _ScreenState _screenState;

  int limit = 10;
  int offset = 0;
  int? total;
  bool isFirstLoad = true;
  String searchText = '';

  Future<void> initialDataRequested(
      _EventInitialDataRequested event, Emitter<MainState> emitter) async {
    if (event.searchText != searchText) {
      offset = 0;
      total = null;
      isFirstLoad = true;
      _screenState = _screenState.copyWith(
        presentations: [],
      );
      searchText = event.searchText ?? '';
    }
    if (total != null && total! <= _screenState.presentations.length) {
      print(total);
      print(_screenState.presentations.length);
      return;
    }
    if (isFirstLoad) {
      _screenState = _screenState.copyWith(isPending: true);
      print('main bloc pending');
      emitter(_screenState);
    }

    try {
      print('get first data main bloc');
      final paginatedPresentations = await api.getPublicPresentations(
          offset: offset, limit: limit, searchText: event.searchText);

      final oldPresentations =
          _screenState.presentations.map((e) => e).toList();
      oldPresentations.addAll(paginatedPresentations.presentations);
      offset = paginatedPresentations.offset;
      total = paginatedPresentations.count;
      _screenState = _screenState.copyWith(
          isPending: false, presentations: oldPresentations);
      isFirstLoad = false;
      emitter(_screenState);
    } on Object {
      emitter(const MainState.initialLoadingError());
    }
  }

  Future<void> reloadData(Emitter<MainState> emitter) async {
    offset = 0;
    isFirstLoad = true;
    _screenState = _screenState.copyWith(presentations: []);
    add(const MainEvent.initialDataRequested());
  }
}
