import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:moki_tutor/data/api/http_client/request_exception.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/locator/locator.dart';

import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';

import '../../../../../domain/models/pdf_fragment.dart';
import '../../../../../domain/models/subject.dart';
import 'package:path/path.dart' as p;

part 'pdf_edit_subject_event.dart';
part 'pdf_edit_subject_state.dart';
part 'pdf_edit_subject_bloc.freezed.dart';

class PdfEditSubjectBloc
    extends Bloc<PdfEditSubjectEvent, PdfEditSubjectState> {
  PdfEditSubjectBloc(this.subject) : super(const _StatePending()) {
    on<PdfEditSubjectEvent>((event, emitter) => event.map(
        initialDataRequested: (_) => onInitialDataRequested(emitter),
        fragmentSelected: (event) => onFragmentSelected(event, emitter),
        audioAdded: (event) => onAudioAdded(event, emitter),
        deleteAudio: (event) => onAudioDeleted(
              event,
              emitter,
            ),
        imageAdded: (event) => onImageAdded(event, emitter),
        updateSubject: (event) => onUpdateSubject(event, emitter),
        updateFragment: (event) => onUpdateFragment(event, emitter),
        deleteFragment: (_) => onDeleteSubject(emitter),
        reorderFragments: (event) => onReorderDragments(event, emitter)));
    _screenState = _ScreenState(
        title: subject.title,
        description: subject.description ?? '',
        fragments: []);
    add(const PdfEditSubjectEvent.initialDataRequested());
  }
  final Subject subject;
  final api = getIt<IApi>();

  late _ScreenState _screenState;
  late List<PdfFragment> fragments;

  /// Когда мы изменяем фрагмент, нужно сделать так, чтобы
  /// иметь возможность отменить изменения, поэтому мы должны
  /// иметь экземпляр фрагмента, который был до сохраниения
  late PdfFragment unchangedFragment;

  Future<void> onInitialDataRequested(
      Emitter<PdfEditSubjectState> emitter) async {
    try {
      fragments = await api.getSubjectFragments(id: subject.id);
      _screenState = _screenState.copyWith(
          fragments: fragments, selectedFragment: fragments.first);
      emitter(_screenState);
    } on RequestException catch (e) {
      emitter(PdfEditSubjectState.requestError(
          errorText: e.response?['message'] as String?));
    } on Object {
      emitter(const PdfEditSubjectState.requestError());
      rethrow;
    }
  }

  void onFragmentSelected(
      _EventFragmentSelected event, Emitter<PdfEditSubjectState> emitter) {
    _screenState = _screenState.copyWith(
        selectedFragment: event.fragment, fragments: fragments);
    emitter(_screenState);
  }

  void onAudioAdded(
      _EventAudioAdded event, Emitter<PdfEditSubjectState> emitter) {
    emitter(const PdfEditSubjectState.pending());
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
      _EventAudioDeleted event, Emitter<PdfEditSubjectState> emitter) {
    emitter(const PdfEditSubjectState.pending());
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
      _EventImageAdded event, Emitter<PdfEditSubjectState> emitter) async {
    emitter(const PdfEditSubjectState.pending());
    late File tempFile;
    late Size size;
    if (p.extension(event.path) == '.pdf') {
      final file = File(event.path);
      late final Uint8List image;

      List<Uint8List> images = [];

      await for (var page
          in Printing.raster(file.readAsBytesSync(), dpi: 300)) {
        images.add(await page.toPng());
      }
      image = images.first;
      Directory tempDir = await getTemporaryDirectory();

      final filePath = '${tempDir.path}/temp.png';

      tempFile = await File(filePath).writeAsBytes(image);
    } else {
      tempFile = File(event.path);
    }
    size = ImageSizeGetter.getSize(FileInput(tempFile));
    final selectedFragment = PdfFragment(
      id: event.fragment.id,
      title: event.title,
      description: event.description,
      imagePath: tempFile.path,
      isLandscape: size.width > size.height,
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

  Future<void> onUpdateFragment(
      _EventUpdateFragment event, Emitter<PdfEditSubjectState> emitter) async {
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

      add(const PdfEditSubjectEvent.initialDataRequested());
    } catch (e) {}
  }

  Future<void> onUpdateSubject(
      _EventUpdateSubject event, Emitter<PdfEditSubjectState> emitter) async {
    _screenState = _screenState.copyWith(
        subjectUpdatePending: true,
        title: event.title,
        description: event.description);
    emitter(_screenState);
    try {
      await api.updateSubject(
          id: subject.id, title: event.title, description: event.description);

      _screenState = _screenState.copyWith(
        subjectUpdatePending: false,
      );
      emitter(_screenState);
    } catch (e) {}
  }

  Future<void> onDeleteSubject(Emitter<PdfEditSubjectState> emitter) async {
    if (_screenState.fragments.length > 1) {
      emitter(const PdfEditSubjectState.pending());
      try {
        await api.deleteFragment(id: _screenState.selectedFragment!.id);
        add(const PdfEditSubjectEvent.initialDataRequested());
      } catch (e) {}
    } else {
      emitter(const PdfEditSubjectState.requestError(
          errorText: 'Вы не можете удалить единственный слайд'));
    }
  }

  Future<void> onReorderDragments(
      _EventReorderFragment event, Emitter<PdfEditSubjectState> emitter) async {
    emitter(const PdfEditSubjectState.pending());
    try {
      await api.reorderFragments(
          subjectId: subject.id, fragmentsIds: event.ids);
      add(const PdfEditSubjectEvent.initialDataRequested());
    } catch (e) {}
  }
}
