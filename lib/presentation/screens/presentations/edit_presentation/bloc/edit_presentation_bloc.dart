import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:printing/printing.dart';

import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';
import '../../../../../../domain/models/pdf_fragment.dart';

import '../../../../../domain/models/presentation_link.dart';
import '../../../../../domain/models/presentation_with_fragments.dart';
import '../../../../../generated/locale_keys.g.dart';

part 'edit_presentation_state.dart';
part 'edit_presentation_event.dart';
part 'edit_presentation_bloc.freezed.dart';

class EditPresentationBloc
    extends Bloc<EditPresentationEvent, EditPresentationState> {
  EditPresentationBloc(this.id) : super(const _StatePending()) {
    on<EditPresentationEvent>((event, emitter) => event.map(
          initialDataRequested: (_) => onInitialDataRequested(emitter),
          fragmentSelected: (event) => onFragmentSelected(event, emitter),
          audioAdded: (event) => onAudioAdded(event, emitter),
          deleteAudio: (event) => onAudioDeleted(
            event,
            emitter,
          ),
          imageAdded: (event) => onImageAdded(event, emitter),
          updatePresentation: (event) => onUpdatePresentation(event, emitter),
          updateFragment: (event) => onUpdateFragment(event, emitter),
          deleteFragment: (_) => onDeleteFragment(emitter),
          reorderFragments: (event) => onReorderFragments(event, emitter),
          addLink: (event) => onAddLink(event, emitter),
          deleteLink: (event) => onDeleteLink(event, emitter),
        ));

    add(const EditPresentationEvent.initialDataRequested());
  }

  final String id;
  final api = getIt<IApi>();
  late _ScreenState _screenState;

  late PresentationWithFragments presentationWithfragments;
  String? audioExtension;
  PdfFragment? selectedFragment;

  Future<void> onInitialDataRequested(
      Emitter<EditPresentationState> emitter) async {
    try {
      presentationWithfragments = await api.getPresentation(id);
      _screenState = _ScreenState(
          title: presentationWithfragments.presentation.title,
          description: presentationWithfragments.presentation.description,
          fragments: presentationWithfragments.fragments,
          links: presentationWithfragments.presentation.links,
          selectedFragment:
              selectedFragment ?? presentationWithfragments.fragments.first,
          presentationUpdatePending: false,
          fragmentUpdatePending: false,
          deleteFragmentPending: false);
      emitter(_screenState);
    } on Object {
      emitter(const EditPresentationState.loadingError());
      rethrow;
    }
  }

  void onFragmentSelected(
      _EventFragmentSelected event, Emitter<EditPresentationState> emitter) {
    _screenState = _screenState.copyWith(
        selectedFragment: event.fragment,
        fragments: presentationWithfragments.fragments);
    emitter(_screenState);
  }

  void onAudioAdded(
      _EventAudioAdded event, Emitter<EditPresentationState> emitter) {
    emitter(const EditPresentationState.pending());
    audioExtension = event.extension;
    final selectedFragment = PdfFragment(
        id: event.fragment.id,
        title: _screenState.selectedFragment!.title,
        description: _screenState.selectedFragment!.description,
        imagePath: event.fragment.imagePath,
        imageBytes: event.fragment.imageBytes,
        isLandscape: _screenState.selectedFragment!.isLandscape,
        audioBytes: event.audioBytes,
        audioPath: event.audioPath,
        duration: event.duration,
        displayOrder: event.fragment.displayOrder);

    _screenState = _screenState.copyWith(selectedFragment: selectedFragment);
    emitter(_screenState);
  }

  void onAudioDeleted(
      _EventAudioDeleted event, Emitter<EditPresentationState> emitter) {
    emitter(const EditPresentationState.pending());
    final selectedFragment = PdfFragment(
        id: event.fragment.id,
        title: event.fragment.title,
        imagePath: event.fragment.imagePath,
        isLandscape: event.fragment.isLandscape,
        displayOrder: event.fragment.displayOrder);

    _screenState = _screenState.copyWith(selectedFragment: selectedFragment);
    emitter(_screenState);
  }

  Future<void> onImageAdded(
      _EventImageAdded event, Emitter<EditPresentationState> emitter) async {
    Uint8List? image;

    if (event.extension?.toLowerCase() == 'pdf') {
      print(event.extension?.toLowerCase());
      int i = 0;

      List<Uint8List> images = [];

      await for (var page in Printing.raster(event.imageBytes, dpi: 300)) {
        _screenState = _screenState.copyWith(countFileGenerated: i);
        emitter(_screenState);
        images.add(await page.toPng());
        i++;
      }
      image = images.first;
    } else {
      emitter(const EditPresentationState.pending());
      image = event.imageBytes;
    }

    final selectedFragment = PdfFragment(
      id: event.fragment.id,
      title: _screenState.selectedFragment!.title,
      description: _screenState.selectedFragment!.description,
      imagePath: null,
      imageBytes: image,
      isLandscape: true, // TODO
      audioPath: event.fragment.audioPath,
      duration: event.fragment.duration,
      displayOrder: event.fragment.displayOrder,
    );

    _screenState = _screenState.copyWith(
        selectedFragment: selectedFragment,
        countFileGenerated: null,
        fragments: _screenState.fragments.map((f) {
          if (f.id == selectedFragment.id) {
            return selectedFragment;
          } else {
            return f;
          }
        }).toList());
    print(_screenState.fragments.first.imageBytes != null);
    emitter(_screenState);
  }

  Future<void> onUpdateFragment(_EventUpdateFragment event,
      Emitter<EditPresentationState> emitter) async {
    _screenState = _screenState.copyWith(
      fragmentUpdatePending: true,
    );
    emitter(_screenState);
    try {
      final durationDifference =
          (_screenState.selectedFragment!.duration ?? 0) -
              (presentationWithfragments.fragments
                      .firstWhere((element) =>
                          element.id == _screenState.selectedFragment!.id)
                      .duration ??
                  0);

      await api.updatePresentationFragment(
        id: _screenState.selectedFragment!.id,
        title: event.title,
        isTitleOverImage: event.isTitleOverImage,
        description: event.description,
        audioBytes: _screenState.selectedFragment!.audioBytes,
        audioExtension: audioExtension,
        imageBytes: _screenState.selectedFragment!.imageBytes,
        duration: _screenState.selectedFragment!.duration,
        presentationDurationDifference: durationDifference,
        isLandscape: _screenState.selectedFragment!.isLandscape,
      );

      //  add(const EditPresentationEvent.initialDataRequested());
      _screenState = _screenState.copyWith(fragmentUpdatePending: false);
      emitter(_screenState);
      emitter(const EditPresentationState.requestSuccess());
    } on Object {
      _screenState = _screenState.copyWith(fragmentUpdatePending: false);
      emitter(const EditPresentationState.requestError());
      emitter(_screenState);
      rethrow;
    }
  }

  Future<void> onUpdatePresentation(_EventUpdatePresentation event,
      Emitter<EditPresentationState> emitter) async {
    selectedFragment = _screenState.selectedFragment;
    _screenState = _screenState.copyWith(
      presentationUpdatePending: true,
    );
    emitter(_screenState);
    try {
      await api.updatePresentation(
          id: id,
          title: event.title,
          description: event.description,
          links: _screenState.links);

      _screenState = _screenState.copyWith(
          presentationUpdatePending: false,
          title: event.title,
          description: event.description);
      emitter(_screenState);
      emitter(const EditPresentationState.requestSuccess());
    } on Object {
      _screenState = _screenState.copyWith(
        presentationUpdatePending: false,
      );
      emitter(_screenState);
      emitter(const EditPresentationState.requestError());
      rethrow;
    }
  }

  Future<void> onDeleteFragment(Emitter<EditPresentationState> emitter) async {
    if (_screenState.fragments.length > 1) {
      emitter(const EditPresentationState.pending());
      try {
        await api.deletePresentationFragment(
            id: _screenState.selectedFragment!.id);
        add(const EditPresentationEvent.initialDataRequested());
        emitter(const EditPresentationState.requestSuccess());
      } on Object {
        emitter(_screenState);
        emitter(const EditPresentationState.requestError());
        rethrow;
      }
    } else {
      emitter(EditPresentationState.requestError(
          errorText: LocaleKeys.slideDeleteUnable.tr()));
    }
  }

  Future<void> onReorderFragments(_EventReorderFragment event,
      Emitter<EditPresentationState> emitter) async {
    emitter(const EditPresentationState.pending());
    try {
      await api.reorderPresentationFragments(fragmentsIds: event.ids);
      add(const EditPresentationEvent.initialDataRequested());
      emitter(const EditPresentationState.requestSuccess());
    } on Object {
      emitter(_screenState);
      emitter(const EditPresentationState.requestError());
      rethrow;
    }
  }

  void onAddLink(_EventAddLink event, Emitter<EditPresentationState> emitter) {
    List<PresentationLink> oldList = _screenState.links ?? [];

    oldList = [
      ...oldList,
      event.link,
    ];

    _screenState = _screenState.copyWith(links: oldList);
    emitter(_screenState);
  }

  void onDeleteLink(
      _EventDeleteLink event, Emitter<EditPresentationState> emitter) {
    List<PresentationLink> oldList = _screenState.links ?? [];

    List<PresentationLink> newList = oldList.map((e) => e).toList();
    newList.removeAt(event.index);

    _screenState = _screenState.copyWith(links: newList);
    print('emitting new state');
    emitter(_screenState);
  }
}
