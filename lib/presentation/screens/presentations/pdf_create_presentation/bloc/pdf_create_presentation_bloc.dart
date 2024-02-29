import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:printing/printing.dart';

import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';
import '../../../../../../domain/models/pdf_fragment_sample.dart';
import '../../../../../domain/models/channel.dart';

part 'pdf_create_presentation_state.dart';
part 'pdf_create_presentation_event.dart';
part 'pdf_create_presentation_bloc.freezed.dart';

class PdfCreatePresentationBloc
    extends Bloc<PdfCreatePresentationEvent, PdfCreatePresentationState> {
  PdfCreatePresentationBloc()
      : super(const PdfCreatePresentationState.pending()) {
    on<PdfCreatePresentationEvent>((event, emitter) => event.map(
        channelSelected: (event) => _onChanneSelected(event, emitter),
        initialDataRequested: (_) => _initialDataRequested(emitter),
        convertPdf: (event) => _convertPdf(event, emitter),
        savePdfPresentation: (event) => _savePdfPresentation(event, emitter)));

    add(const PdfCreatePresentationEvent.initialDataRequested());
  }

  final api = getIt<IApi>();
  late _ScreenState _screenState;

  Future<void> _convertPdf(_EventConvertFile event,
      Emitter<PdfCreatePresentationState> emitter) async {
    _screenState = _screenState.copyWith(isPending: true);
    emitter(_screenState);
    int i = 0;
    final List<Uint8List> pdfImageList = [];

    final file = event.pdfFile;
    _screenState = _screenState.copyWith(countFileGenerated: i);
    emitter(_screenState);
    await for (var page in Printing.raster(file, dpi: 300)) {
      final image = await page.toPng();

      pdfImageList.add(image);
      _screenState = _screenState.copyWith(countFileGenerated: i);
      emitter(_screenState);
      i++;
    }
    _screenState = _screenState.copyWith(
        isPending: false,
        countFileGenerated: null,
        pdfFragmentList: pdfImageList
            .map((e) => PdfFragmentSample(image: e, isTitleOverImage: false))
            .toList());
    emitter(_screenState);
  }

  Future<void> _savePdfPresentation(_EventSavePdfPresentation event,
      Emitter<PdfCreatePresentationState> emitter) async {
    emitter(PdfCreatePresentationState.savingProcess(
        currentSlide: 0, totalSlides: event.pdfFragmentList.length));
    try {
      final presentationId = await api.addPdfPresentation(
        pdfFile: event.pdfFile,
        pdfFileName: event.pdfFileName,
        title: event.title,
        description: event.description,
        channelId: _screenState.selectedChanel.id,
      );

      int index = 1;
      for (final f in event.pdfFragmentList) {
        emitter(PdfCreatePresentationState.savingProcess(
            currentSlide: index, totalSlides: event.pdfFragmentList.length));
        await api.addPresentationFragment(
            presentationId: presentationId,
            displayOrder: index,
            title: f.title == null || f.title!.trim().isEmpty
                ? '$index'
                : f.title!,
            description: f.description ?? '',
            isLandscape: true,
            isTitleOverImage: f.isTitleOverImage,
            fragmentsIds: [],
            image: f.image,
            audio: f.audioBytes,
            duration: f.duration);
        index++;
      }
      emitter(const PdfCreatePresentationState.saveSuccess());
    } on Object {
      _screenState = _screenState.copyWith(
        isPending: false,
      );
      emitter(_screenState);
      emitter(const PdfCreatePresentationState.saveError());
      rethrow;
    }
  }

  Future<void> _initialDataRequested(
      Emitter<PdfCreatePresentationState> emitter) async {
    try {
      final channels = await api.getChannels();
      _screenState =
          _ScreenState(channels: channels, selectedChanel: channels.first);
      emitter(_screenState);
    } on Object {
      emitter(const PdfCreatePresentationState.initialDataNotLoaded());
      rethrow;
    }
  }

  void _onChanneSelected(_EventChannelSelected event,
      Emitter<PdfCreatePresentationState> emitter) {
    _screenState = _screenState.copyWith(selectedChanel: event.channel);
    emitter(_screenState);
  }
}
