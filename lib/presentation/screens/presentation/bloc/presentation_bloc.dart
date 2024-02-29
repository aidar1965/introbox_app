import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/domain/interfaces/i_auth_controller.dart';
import 'package:introbox/domain/models/pdf_fragment.dart';
import 'package:introbox/domain/models/presentation_with_fragments.dart';

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
        previousSlideClicked: (_) => previousSlideClicked(emitter),
        fragmentClicked: (event) => fragmentClicked(event, emitter)));

    add(const PresentationEvent.initialDataRequested());
  }

  final String id;
  final api = getIt<IApi>();
  final authColtroller = getIt<IAuthController>();
  late PresentationWithFragments presentationWithFragments;

  late _ScreenState _screenState;

  Future<void> initialDataRequested(Emitter<PresentationState> emitter) async {
    emitter(const PresentationState.pending());
    try {
      presentationWithFragments = await api.getPresentation(id);

      _screenState = _ScreenState(
          selectedFragment: presentationWithFragments.fragments.first,
          isFirst: presentationWithFragments.fragments.length > 1,
          isLast: presentationWithFragments.fragments.length == 1,
          presentationTitle: presentationWithFragments.presentation.title,
          presentationDescription:
              presentationWithFragments.presentation.description,
          pdfFile: presentationWithFragments.presentation.pdfFile,
          fragments: presentationWithFragments.fragments);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationState.loadingError());
      rethrow;
    }
  }

  void nextSlideClicked(Emitter<PresentationState> emitter) {
    final currentIndex = presentationWithFragments.fragments.indexOf(
        presentationWithFragments.fragments.firstWhere(
            (element) => element.id == _screenState.selectedFragment.id));

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

  void fragmentClicked(
      _EventFragmentClicked event, Emitter<PresentationState> emitter) {
    _screenState = _screenState.copyWith(
      selectedFragment:
          presentationWithFragments.fragments.elementAt(event.index),
      isLast: event.index == presentationWithFragments.fragments.length - 1,
      isFirst: event.index == 0,
    );
    emitter(_screenState);
  }
}
