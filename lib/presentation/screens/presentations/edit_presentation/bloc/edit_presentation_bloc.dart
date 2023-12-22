import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/models/presentation.dart';
import 'package:path/path.dart' as p;
import 'package:printing/printing.dart';

import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';
import '../../../../../../domain/models/pdf_fragment.dart';

part 'edit_presentation_state.dart';
part 'edit_presentation_event.dart';
part 'edit_presentation_bloc.freezed.dart';

class EditPresentationBloc
    extends Bloc<EditPresentationEvent, EditPresentationState> {
  EditPresentationBloc(this.presentation) : super(const _StatePending()) {
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
        deleteFragment: (_) => onDeletePresentation(emitter),
        reorderFragments: (event) => onReorderFragments(event, emitter)));
    _screenState = _ScreenState(
        title: presentation.title,
        description: presentation.description ?? '',
        fragments: []);
    add(const EditPresentationEvent.initialDataRequested());
  }
  final Presentation presentation;
  final api = getIt<IApi>();

  Future<void> onInitialDataRequested(
      Emitter<EditPresentationState> emitter) async {
    try {
      fragments = await api.getPresentationFragments(id: presentation.id);
      _screenState = _screenState.copyWith(
          fragments: fragments, selectedFragment: fragments.first);
      emitter(_screenState);
    } on Object {
      emitter(const EditPresentationState.loadingError());
      rethrow;
    }
  }

  void onFragmentSelected(
      _EventFragmentSelected event, Emitter<EditPresentationState> emitter) {
    _screenState = _screenState.copyWith(
        selectedFragment: event.fragment, fragments: fragments);
    emitter(_screenState);
  }

  void onAudioAdded(
      _EventAudioAdded event, Emitter<EditPresentationState> emitter) {
    emitter(const EditPresentationState.pending());
    final selectedFragment = PdfFragment(
        id: event.fragment.id,
        title: event.title,
        description: event.description,
        imagePath: event.fragment.imagePath,
        isLandscape: event.fragment.isLandscape,
        audioPath: event.path,
        duration: int.parse(
          event.duration,
        ),
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
    emitter(const EditPresentationState.pending());
    Uint8List? image;

    if (p.extension(event.path) == '.pdf') {
      final file = File(event.path);

      List<Uint8List> images = [];

      await for (var page
          in Printing.raster(file.readAsBytesSync(), dpi: 300)) {
        images.add(await page.toPng());
      }
      image = images.first;
    }
    final selectedFragment = PdfFragment(
      id: event.fragment.id,
      title: event.title,
      description: event.description,
      image: image != null ? File.fromRawPath(image) : File(event.path),
      isLandscape: true, // TODO
      audioPath: event.fragment.audioPath,
      duration: event.fragment.duration,
      displayOrder: event.fragment.displayOrder,
    );

    _screenState = _screenState.copyWith(
        selectedFragment: selectedFragment,
        fragments: _screenState.fragments.map((f) {
          if (f.id == selectedFragment.id) {
            return selectedFragment;
          } else {
            return f;
          }
        }).toList());
    emitter(_screenState);
  }

  Future<void> onUpdateFragment(_EventUpdateFragment event,
      Emitter<EditPresentationState> emitter) async {
    _screenState = _screenState.copyWith(fragmentUpdatePending: true);
    emitter(_screenState);
    try {
      await api.updateFragment(
          id: _screenState.selectedFragment!.id,
          title: event.title,
          description: event.description,
          audioPath:
              _screenState.selectedFragment!.audioPath?.contains('http') ==
                      false
                  ? _screenState.selectedFragment!.audioPath
                  : null,
          imagePath:
              _screenState.selectedFragment!.imagePath?.contains('http') ==
                      false
                  ? _screenState.selectedFragment!.imagePath
                  : null,
          duration:
              _screenState.selectedFragment!.audioPath?.contains('http') ==
                      false
                  ? _screenState.selectedFragment!.duration
                  : null,
          subjectDurationDifference: (_screenState.selectedFragment!.duration ??
                  0) -
              (fragments
                      .firstWhere((element) =>
                          element.id == _screenState.selectedFragment!.id)
                      .duration ??
                  0),
          isLandscape: _screenState.selectedFragment!.isLandscape);

      add(const EditPresentationEvent.initialDataRequested());
    } catch (e) {}
  }

  Future<void> onUpdatePresentation(_EventUpdatePresentation event,
      Emitter<EditPresentationState> emitter) async {
    _screenState = _screenState.copyWith(
        presentationUpdatePending: true,
        title: event.title,
        description: event.description);
    emitter(_screenState);
    try {
      await api.updatePresentation(
          id: presentation.id,
          title: event.title,
          description: event.description);

      _screenState = _screenState.copyWith(
        presentationUpdatePending: false,
      );
      emitter(_screenState);
    } catch (e) {}
  }

  Future<void> onDeletePresentation(
      Emitter<EditPresentationState> emitter) async {
    if (_screenState.fragments.length > 1) {
      emitter(const EditPresentationState.pending());
      try {
        await api.deletePresentationFragment(
            id: _screenState.selectedFragment!.id);
        add(const EditPresentationEvent.initialDataRequested());
      } on Object {
        emitter(_screenState);
        emitter(const EditPresentationState.requestError());
        rethrow;
      }
    } else {
      emitter(const EditPresentationState.requestError(
          errorText: 'Вы не можете удалить единственный слайд'));
    }
  }

  Future<void> onReorderFragments(_EventReorderFragment event,
      Emitter<EditPresentationState> emitter) async {
    emitter(const EditPresentationState.pending());
    try {
      await api.reorderPresentationFragments(fragmentsIds: event.ids);
      add(const EditPresentationEvent.initialDataRequested());
    } on Object {
      emitter(_screenState);
      emitter(const EditPresentationState.requestError());
      rethrow;
    }
  }

  late _ScreenState _screenState;
  late List<PdfFragment> fragments;

  /// Когда мы изменяем фрагмент, нужно сделать так, чтобы
  /// иметь возможность отменить изменения, поэтому мы должны
  /// иметь экземпляр фрагмента, который был до сохраниения
  late PdfFragment unchangedFragment;
}
