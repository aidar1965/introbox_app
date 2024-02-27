import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';
import '../../../../../data/api/models/requests/fragment_request_data.dart';
import '../../../../../domain/models/channel.dart';
import '../../../../../domain/models/image_fragment.dart';
import '../../../../../generated/locale_keys.g.dart';

part 'image_create_presentation_state.dart';
part 'image_create_presentation_event.dart';
part 'image_create_presentation_bloc.freezed.dart';

class ImageCreatePresentationBloc
    extends Bloc<ImageCreatePresentationEvent, ImageCreatePresentationState> {
  ImageCreatePresentationBloc() : super(const _StatePending()) {
    on<ImageCreatePresentationEvent>((event, emitter) => event.map(
        channelSelected: (event) => _onChanneSelected(event, emitter),
        initialDataRequested: (_) => _initialDataRequested(emitter),
        fragmentAdded: (event) => onFragmentAdded(event, emitter),
        saveImagePresentation: (event) => saveImagePresentation(event, emitter),
        onReorderFragments: (event) => onReorderFragments(event, emitter),
        onDeleteFragment: (event) => onDeleteFragment(event, emitter)));

    add(const ImageCreatePresentationEvent.initialDataRequested());
  }

  late _ScreenState _screenState;
  final api = getIt<IApi>();

  void onFragmentAdded(_EventFragmentAdded event,
      Emitter<ImageCreatePresentationState> emitter) {
    final fragmentsList = _screenState.fragments.map((e) => e).toList();
    ImageFragment addedFragment = event.imageFragment;

    fragmentsList.add(ImageFragment(
      imageBytes: addedFragment.imageBytes,
      isLandscape: true,

      /// TODO
      title: addedFragment.title,
      description: addedFragment.description,
      audioBytes: addedFragment.audioBytes,
      audioPath: addedFragment.audioPath,
      duration: addedFragment.duration,
      isTitleOverImage: addedFragment.isTitleOverImage,
    ));
    _screenState = _screenState.copyWith(
        fragments: fragmentsList,
        title: event.title,
        description: event.description);
    emitter(_screenState);
  }

  Future<void> saveImagePresentation(_EventSaveImagePresentation event,
      Emitter<ImageCreatePresentationState> emitter) async {
    if (event.title.isEmpty) {
      emitter(ImageCreatePresentationState.saveError(
          errorText: LocaleKeys.presentationTitleEmpty.tr()));
    }
    emitter(const ImageCreatePresentationState.pending());
    print('saving presentation');
    try {
      await api.addImagePresentation(
          channelId: _screenState.selectedChanel.id,
          title: event.title,
          description: event.description,
          fragments: _screenState.fragments
              .map((e) => FragmentRequestData(
                  title: e.title,
                  description: e.description ?? '',
                  image: e.imageBytes != null
                      ? (
                          file: e.imageBytes!,
                          isLandscape: true,
                          fileName: '',
                          isTitleOverImage: e.isTitleOverImage
                        )
                      : null,
                  audioBytes: e.audioBytes,
                  duration: e.duration))
              .toList());
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

  Future<void> _initialDataRequested(
      Emitter<ImageCreatePresentationState> emitter) async {
    try {
      final channels = await api.getChannels();
      _screenState = _ScreenState(
          channels: channels, selectedChanel: channels.first, fragments: []);
      emitter(_screenState);
    } on Object {
      emitter(const ImageCreatePresentationState.initialDataNotLoaded());
      rethrow;
    }
  }

  void _onChanneSelected(_EventChannelSelected event,
      Emitter<ImageCreatePresentationState> emitter) {
    _screenState = _screenState.copyWith(selectedChanel: event.channel);
    emitter(_screenState);
  }
}
