import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';

import '../../../pdf_subject/image_create_subject/image_fragment.dart';

part 'image_create_presentation_state.dart';
part 'image_create_presentation_event.dart';
part 'image_create_presentation_bloc.freezed.dart';

class ImageCreatePresentationBloc
    extends Bloc<ImageCreatePresentationEvent, ImageCreatePresentationState> {
  ImageCreatePresentationBloc() : super(const _ScreenState(fragments: [])) {
    on<ImageCreatePresentationEvent>((event, emitter) => event.map(
        fragmentAdded: (event) => onFragmentAdded(event, emitter),
        saveImageSubject: (event) => saveImageSubject(event, emitter),
        onReorderFragments: (event) => onReorderFragments(event, emitter),
        onDeleteFragment: (event) => onDeleteFragment(event, emitter)));
    _screenState = const _ScreenState(fragments: []);
  }

  late _ScreenState _screenState;
  final api = getIt<IApi>();

  void onFragmentAdded(_EventFragmentAdded event,
      Emitter<ImageCreatePresentationState> emitter) {
    final fragmentsList = _screenState.fragments.map((e) => e).toList();
    ImageFragment addedFragment = event.imageFragment;

    fragmentsList.add(ImageFragment(
        image: addedFragment.image,
        isLandscape: true,

        /// TODO
        title: addedFragment.title,
        description: addedFragment.description,
        audioPath: addedFragment.audioPath,
        duration: addedFragment.duration));
    _screenState = _screenState.copyWith(fragments: fragmentsList);
    emitter(_screenState);
  }

  Future<void> saveImageSubject(_EventSaveImageSubject event,
      Emitter<ImageCreatePresentationState> emitter) async {
    try {
      await api.addImageSubject(
          title: event.title,
          description: event.description,
          fragments: _screenState.fragments);
      emitter(const ImageCreatePresentationState.saveSuccess());
    } on Object {
      emitter(const ImageCreatePresentationState.saveError());
    }
  }

  void onReorderFragments(_EventOnReorderFragments event,
      Emitter<ImageCreatePresentationState> emitter) {
    _screenState = _screenState.copyWith(fragments: event.fragments);
    emitter(_screenState);
  }

  void onDeleteFragment(_EventOnDeleteFragment event,
      Emitter<ImageCreatePresentationState> emitter) {
    final updatedList = _screenState.fragments.map((e) => e).toList();
    updatedList.removeAt(event.index);
    _screenState = _screenState.copyWith(fragments: updatedList);
    emitter(_screenState);
  }
}