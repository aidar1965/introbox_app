import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/locator/locator.dart';

import '../image_fragment.dart';

part 'image_create_subject_event.dart';
part 'image_create_subject_state.dart';
part 'image_create_subject_bloc.freezed.dart';

class ImageCreateSubjectBloc
    extends Bloc<ImageCreateSubjectEvent, ImageCreateSubjectState> {
  ImageCreateSubjectBloc() : super(const _ScreenState(fragments: [])) {
    on<ImageCreateSubjectEvent>((event, emitter) => event.map(
        fragmentAdded: (event) => onFragmentAdded(event, emitter),
        saveImageSubject: (event) => saveImageSubject(event, emitter),
        onReorderFragments: (event) => onReorderFragments(event, emitter),
        onDeleteFragment: (event) => onDeleteFragment(event, emitter)));
    _screenState = const _ScreenState(fragments: []);
  }

  late _ScreenState _screenState;
  final api = getIt<IApi>();

  void onFragmentAdded(
      _EventFragmentAdded event, Emitter<ImageCreateSubjectState> emitter) {
    final fragmentsList = _screenState.fragments.map((e) => e).toList();
    ImageFragment addedFragment = event.imageFragment;
    final size =
        ImageSizeGetter.getSize(FileInput(File(event.imageFragment.image)));
    final isLandscape = size.width > size.height;

    fragmentsList.add(ImageFragment(
        image: addedFragment.image,
        isLandscape: isLandscape,
        title: addedFragment.title,
        description: addedFragment.description,
        audioPath: addedFragment.audioPath,
        duration: addedFragment.duration));
    _screenState = _screenState.copyWith(fragments: fragmentsList);
    emitter(_screenState);
  }

  Future<void> saveImageSubject(_EventSaveImageSubject event,
      Emitter<ImageCreateSubjectState> emitter) async {
    try {
      await api.addImageSubject(
          title: event.title,
          description: event.description,
          fragments: _screenState.fragments);
      emitter(const ImageCreateSubjectState.saveSuccess());
    } on Object {
      emitter(const ImageCreateSubjectState.saveError());
    }
  }

  void onReorderFragments(_EventOnReorderFragments event,
      Emitter<ImageCreateSubjectState> emitter) {
    _screenState = _screenState.copyWith(fragments: event.fragments);
    emitter(_screenState);
  }

  void onDeleteFragment(
      _EventOnDeleteFragment event, Emitter<ImageCreateSubjectState> emitter) {
    final updatedList = _screenState.fragments.map((e) => e).toList();
    updatedList.removeAt(event.index);
    _screenState = _screenState.copyWith(fragments: updatedList);
    emitter(_screenState);
  }
}
