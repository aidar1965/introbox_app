import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/interfaces/i_user_repository.dart';
import '../../../../domain/models/user.dart';
import '../../../player/player_widget.dart';

import '../../../../domain/models/course.dart';
import '../../../../domain/models/record.dart';
import '../../../../domain/models/subject.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.userRepository, required this.api})
      : super(const _StateNotInitialized()) {
    on<HomeEvent>((event, emitter) => event.map(
          initialize: (event) async => await _initialize(event, emitter),
          userChanged: (event) => _userChanged(event, emitter),
          openPlayer: (event) => _openPlayer(event, emitter),
          closePlayer: (event) => _closePlayer(event, emitter),
          openSubjectPlayer: (event) => _openSubjectPlayer(event, emitter),
          closeSubjectPlayer: (event) => _closeSubjectPlayer(event, emitter),
          openCoursePlayer: (event) => _openCoursePlayer(event, emitter),
          closeCoursePlayer: (event) => _closeCoursePlayer(event, emitter),
        ));
    userRepository.addChangeListener(() {
      _user = userRepository.user;
      if (!isClosed) add(const HomeEvent.initialize());
    });
    add(const HomeEvent.initialize());
  }

  final IUserRepository userRepository;
  final IApi api;

  User? _user;

  PlayerStatus? playerStatus;
  bool isFirstLoad = true;

  bool isPlayerScreenOpened = false;
  bool isSubjectPlayerOpened = false;
  bool isCoursePlayerOpened = false;

  Future<void> _initialize(_EventInitialize event, Emitter emitter) async {
    _user = userRepository.user;
    if (isFirstLoad) {
      isFirstLoad = false;
    }
    emitter(HomeState.initializationCompleted(
        isAuthorized: _user != null,
        isPlayerScreenOpened: isPlayerScreenOpened,
        isSubjectPlayerScreeinOpened: isSubjectPlayerOpened,
        isCoursePlayerScreenOpened: isCoursePlayerOpened));
  }

  void _userChanged(_UserChanged event, Emitter emitter) {
    // emitter(HomeState.initializationCompleted(
    //     isAuthorized: _user != null,
    //     isRefreshed: true,
    //     isPlayerScreenOpened: isPlayerScreenOpened,
    //     isSubjectPlayerScreeinOpened: isSubjectPlayerOpened,
    //     isCoursePlayerScreenOpened: isCoursePlayerOpened));
  }

  void _openPlayer(_OpenPlayer event, Emitter emitter) {
    isPlayerScreenOpened = true;
    emitter(HomeState.initializationCompleted(
      isAuthorized: _user != null,
      isRefreshed: false,
      isPlayerScreenOpened: true,
      isSubjectPlayerScreeinOpened: false,
      isCoursePlayerScreenOpened: false,
      record: event.record,
    ));
  }

  void _closePlayer(_ClosePlayer event, Emitter emitter) {
    isPlayerScreenOpened = false;
    emitter(HomeState.initializationCompleted(
        isAuthorized: _user != null,
        isRefreshed: false,
        isPlayerScreenOpened: false,
        isSubjectPlayerScreeinOpened: false,
        isCoursePlayerScreenOpened: false));
  }

  void _openSubjectPlayer(_OpenSubjectPlayer event, Emitter emitter) {
    isPlayerScreenOpened = true;
    emitter(HomeState.initializationCompleted(
        isAuthorized: _user != null,
        isRefreshed: false,
        isPlayerScreenOpened: false,
        isSubjectPlayerScreeinOpened: true,
        subject: event.subject,
        isCoursePlayerScreenOpened: false));
  }

  void _closeSubjectPlayer(_CloseSubjectPlayer event, Emitter emitter) {
    isPlayerScreenOpened = false;
    emitter(HomeState.initializationCompleted(
        isAuthorized: _user != null,
        isRefreshed: false,
        isPlayerScreenOpened: false,
        isSubjectPlayerScreeinOpened: false,
        isCoursePlayerScreenOpened: false));
  }

  void _openCoursePlayer(_OpenCoursePlayer event, Emitter emitter) {
    isPlayerScreenOpened = true;
    emitter(HomeState.initializationCompleted(
        isAuthorized: _user != null,
        isRefreshed: false,
        isPlayerScreenOpened: false,
        isSubjectPlayerScreeinOpened: false,
        course: event.course,
        isCoursePlayerScreenOpened: true,
        remote: event.remote));
  }

  void _closeCoursePlayer(_CloseCoursePlayer event, Emitter emitter) {
    isPlayerScreenOpened = false;
    emitter(HomeState.initializationCompleted(
        isAuthorized: _user != null,
        isRefreshed: false,
        isPlayerScreenOpened: false,
        isSubjectPlayerScreeinOpened: false,
        isCoursePlayerScreenOpened: false));
  }
}
