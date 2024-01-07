import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/models/pdf_fragment.dart';
import 'package:moki_tutor/domain/models/presentation_with_fragments.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/locator/locator.dart';

part 'presentation_event.dart';
part 'presentation_state.dart';
part 'presentation_bloc.freezed.dart';

class PresentationBloc extends Bloc<PresentationEvent, PresentationState> {
  PresentationBloc(this.id) : super(const _StatePending()) {
    on<PresentationEvent>((event, emitter) => event.map(
        initialDataRequested: (_) => initialDataRequested(emitter),
        nextSlideClicked: (_) => nextSlideClicked(emitter),
        previousSlideClicked: (_) => previousSlideClicked(emitter)));

    add(const PresentationEvent.initialDataRequested());
  }

  final int id;
  final api = getIt<IApi>();
  late PresentationWithFragments presentationWithFragments;

  late _ScreenState _screenState;

  Future<void> initialDataRequested(Emitter<PresentationState> emitter) async {
    emitter(const PresentationState.pending());
    try {
      presentationWithFragments = await api.getPresentation(id);
      print(presentationWithFragments.fragments.length);
      _screenState = _ScreenState(
          selectedFragment: presentationWithFragments.fragments.first,
          isFirst: presentationWithFragments.fragments.length > 1,
          isLast: presentationWithFragments.fragments.length == 1,
          presentationTitle: presentationWithFragments.presentation.title,
          presentationDescription:
              presentationWithFragments.presentation.description);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationState.loadingError());
    }
  }

  void nextSlideClicked(Emitter<PresentationState> emitter) {
    final currentIndex = presentationWithFragments.fragments.indexOf(
        presentationWithFragments.fragments.firstWhere(
            (element) => element.id == _screenState.selectedFragment.id));
    print('presentation bloc audio:');
    print(presentationWithFragments.fragments
        .elementAt(currentIndex + 1)
        .audioPath);

    _screenState = _screenState.copyWith(
        selectedFragment:
            presentationWithFragments.fragments.elementAt(currentIndex + 1),
        isFirst: false,
        isLast: currentIndex == presentationWithFragments.fragments.length - 2);
    emitter(_screenState);
  }

  void previousSlideClicked(Emitter<PresentationState> emitter) {
    final currentIndex = presentationWithFragments.fragments.indexOf(
        presentationWithFragments.fragments.firstWhere(
            (element) => element.id == _screenState.selectedFragment.id));

    _screenState = _screenState.copyWith(
        selectedFragment:
            presentationWithFragments.fragments.elementAt(currentIndex - 1),
        isFirst: currentIndex == 1,
        isLast: false);
    emitter(_screenState);
  }
}
