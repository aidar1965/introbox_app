import 'dart:async';
import 'dart:html' as html;

import 'package:audioplayers/audioplayers.dart' as ap;

import 'package:auto_route/auto_route.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:path/path.dart';

import '../../../common/common_functions.dart';

import '../../../../../domain/models/pdf_fragment_sample.dart';

import '../../../common/common_elevated_button.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
import '../audio_recording/audio_recording_screen.dart';
import 'bloc/pdf_create_presentation_bloc.dart';

@RoutePage()
class PdfCreatePresentationScreen extends StatefulWidget {
  const PdfCreatePresentationScreen({Key? key}) : super(key: key);

  @override
  State<PdfCreatePresentationScreen> createState() =>
      _PdfCreatePresentationScreenState();
}

class _PdfCreatePresentationScreenState
    extends State<PdfCreatePresentationScreen> {
  Uint8List? pdfFile;
  String? pdfFileName;
  List<Uint8List?> audioBytesList = [];
  List<String?> audioPathList = [];
  List<TextEditingController> recordTitleControllerList = [];
  List<TextEditingController> recordDescriptionControllerList = [];
  List<int?> audioDurationList = [];
  bool isAudio = true;
  bool isTitleOverImage = false;
  late String title;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    title = titleController.text;
    titleController.addListener(() {
      title = titleController.text;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Новая презентация из PDF файла',
      )),
      body: BlocProvider<PdfCreatePresentationBloc>(
          create: (context) => PdfCreatePresentationBloc(),
          child: BlocConsumer<PdfCreatePresentationBloc,
                  PdfCreatePresentationState>(
              listener: (context, state) => state.mapOrNull(
                  saveSuccess: (_) {
                    CommonFunctions.showMessage(
                        context, 'Презентация создана', Reason.neutral);
                    context.router.pop(true);
                    return null;
                  },
                  saveError: (_) => CommonFunctions.showMessage(
                      context,
                      'Произошла ошибка при сохранении презентации',
                      Reason.error)),
              buildWhen: (previous, current) => current.map(
                  screenState: (c) => true,
                  saveSuccess: (c) => false,
                  saveError: (c) => false),
              builder: (context, state) => state.maybeMap(
                  orElse: () => throw UnsupportedError(
                      'wrong state for PdfCreatePresentationScreen'),
                  screenState: (state) {
                    if (state.pdfFragmentList != null) {
                      for (var i = 0; i < state.pdfFragmentList!.length; i++) {
                        recordTitleControllerList.add(TextEditingController());
                        recordDescriptionControllerList
                            .add(TextEditingController());
                        audioPathList.add(null);
                        audioBytesList.add(null);
                        audioDurationList.add(null);
                      }
                    }

                    return Row(children: [
                      const SizedBox(width: 24),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            NameAndDescriptionWidget(
                              titleController: titleController,
                              descriptionController: descriptionController,
                            ),
                            const SizedBox(height: 20),
                            CommonElevatedButton(
                              onPressed: () => _onSelectFile(context),
                              text: 'Выберите PDF файл',
                            ),
                            const SizedBox(height: 20),
                            if (pdfFile != null) ...[
                              Text(basename(pdfFileName!)),
                              const SizedBox(height: 20),
                              CommonElevatedButton(
                                isPending: state.isPending,
                                onPressed: () {
                                  final pdfFragmentList = <PdfFragmentSample>[];
                                  for (int i = 0;
                                      i < state.pdfFragmentList!.length;
                                      i++) {
                                    pdfFragmentList.add(PdfFragmentSample(
                                        image: state.pdfFragmentList!
                                            .elementAt(i)
                                            .image,
                                        audioBytes: audioBytesList[i],
                                        title: recordTitleControllerList
                                            .elementAt(i)
                                            .text,
                                        description:
                                            recordDescriptionControllerList
                                                .elementAt(i)
                                                .text,
                                        duration: audioDurationList[i],
                                        isTitleOverImage: isTitleOverImage));
                                  }
                                  BlocProvider.of<PdfCreatePresentationBloc>(
                                          context)
                                      .add(PdfCreatePresentationEvent
                                          .savePdfPresentation(
                                              pdfFile: pdfFile!,
                                              pdfFileName: pdfFileName!,
                                              title: titleController.text,
                                              description:
                                                  descriptionController.text,
                                              pdfFragmentList: pdfFragmentList,
                                              isAudio: isAudio));

                                  /// TODO
                                },
                                text: 'Создать тему',
                              ),
                            ],
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      if (Responsive.isMobile(context) == false) ...[
                        Expanded(
                          flex: 4,
                          child: state.countFileGenerated != null
                              ? Center(
                                  child: Text(
                                      'Генерация слайдов: ${state.countFileGenerated}'))
                              : state.isPending
                                  ? const Center(
                                      child: CircularProgressIndicator())
                                  : _FragmentListView(
                                      isAudio: isAudio,
                                      pdfFragmentList:
                                          state.pdfFragmentList ?? [],
                                      titleControllerList:
                                          recordTitleControllerList,
                                      descriptionControllerList:
                                          recordDescriptionControllerList,
                                      onPathChanged: (f, p, s, i) {
                                        audioPathList[i] = p;
                                        audioBytesList[i] = f;
                                        audioDurationList[i] = s;
                                      },
                                      isTitleOverImage: false,
                                      title: title),
                        ),
                      ],
                    ]);
                  }))),
    );
  }

  Future<void> _onSelectFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
      ],
    );

    if (result != null && result.files.isNotEmpty) {
      final fileBytes = result.files.first.bytes;
      pdfFileName = result.files.first.name;
      setState(() {
        pdfFile = fileBytes;
        pdfFileName = result.files.first.name;
      });
      if (mounted) {
        BlocProvider.of<PdfCreatePresentationBloc>(context)
            .add(PdfCreatePresentationEvent.convertPdf(pdfFile: fileBytes!));
      }
    } else {
      // User canceled the picker
    }
  }
}

class _FragmentListView extends StatelessWidget {
  const _FragmentListView({
    Key? key,
    required this.pdfFragmentList,
    required this.titleControllerList,
    required this.descriptionControllerList,
    required this.onPathChanged,
    required this.isAudio,
    required this.isTitleOverImage,
    required this.title,
  }) : super(key: key);

  final List<PdfFragmentSample> pdfFragmentList;

  final List<TextEditingController> titleControllerList;
  final List<TextEditingController> descriptionControllerList;
  final Function(Uint8List?, String?, int?, int) onPathChanged;
  final bool isAudio;
  final bool isTitleOverImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pdfFragmentList.length,
      itemBuilder: (context, index) {
        return FragmentListItem(
          titleController: titleControllerList.elementAt(index),
          descriptionController: descriptionControllerList.elementAt(index),
          imageData: pdfFragmentList.elementAt(index).image,
          isAudio: isAudio,
          onPathChanged: (
            f,
            p,
            s,
          ) {
            onPathChanged(f, p, s, index);
          },
          isTitleOverImage: isTitleOverImage,
          title: title,
        );
      },
    );
  }
}

class FragmentListItem extends StatefulWidget {
  const FragmentListItem({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.imageData,
    required this.onPathChanged,
    required this.isAudio,
    required this.isTitleOverImage,
    required this.title,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final Uint8List imageData;
  final bool isAudio;
  final bool isTitleOverImage;
  final String title;

  final void Function(Uint8List?, String? path, int? seconds) onPathChanged;

  @override
  State<FragmentListItem> createState() => _FragmentListItemState();
}

class _FragmentListItemState extends State<FragmentListItem> {
  late bool showPlayer;
  String? audioPath;
  int? duration;
  late bool isAudio;
  late bool isTitleOverImage;
  late String title;
  @override
  void initState() {
    super.initState();
    showPlayer = false;
    isAudio = widget.isAudio;
    isTitleOverImage = widget.isTitleOverImage;
    title = widget.title;
  }

  @override
  void didUpdateWidget(FragmentListItem oldWidget) {
    isAudio = widget.isAudio;
    isTitleOverImage = widget.isTitleOverImage;
    title = widget.title;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 3,
            child: Stack(
              children: [
                Image.memory(widget.imageData),
                if (isTitleOverImage) Positioned(bottom: 0, child: Text(title))
              ],
            )),
        const SizedBox(width: 32),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 32,
                    bottom: 32,
                  ),
                  child: NameAndDescriptionWidget(
                      titleController: widget.titleController,
                      descriptionController: widget.descriptionController),
                ),
                if (isAudio) ...[
                  showPlayer
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: AudioPlayerWidget(
                            duration: duration ?? 0,
                            urlSource: audioPath,
                            onDelete: () {
                              setState(() => showPlayer = false);
                              widget.onPathChanged(null, null, null);
                            },
                          ),
                        )
                      : CommonElevatedButton(
                          onPressed: () async {
                            final result = await _showRecorder(context,
                                imageData: widget.imageData);
                            if (result != null) {
                              setState(() {
                                audioPath = result.path;
                                duration = result.duration;
                              });
                              final audioBytes = result.audioBytes;
                              showPlayer = true;

                              final durationInSeconds =
                                  await getDuration(audioPath!);
                              print(durationInSeconds);
                              widget.onPathChanged(
                                  audioBytes, audioPath, durationInSeconds);
                            }
                          },
                          text: 'Записать аудио'),
                  const SizedBox(height: 32),
                  CommonElevatedButton(
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ['mp3', 'wav'],
                        );
                        if (result != null) {
                          final fileBytes = result.files.first.bytes;
                          print(result.files.first.name);

                          // Преобразование Uint8List в Blob
                          final blob = html.Blob(
                            [fileBytes],
                          );

                          // Преобразование Blob в data URL
                          final dataUrl =
                              html.Url.createObjectUrlFromBlob(blob);
                          print(dataUrl);

                          final durationInSeconds = await getDuration(dataUrl);
                          setState(() {
                            audioPath = dataUrl;
                            duration = durationInSeconds;
                          });
                          showPlayer = true;

                          widget.onPathChanged(
                              fileBytes, audioPath, durationInSeconds);
                        }
                      },
                      text: 'Прикрепить аудио')
                ],
              ],
            )),
        const SizedBox(width: 32),
      ],
    );
  }

  Future<({Uint8List? audioBytes, String? path, int? duration})?> _showRecorder(
      BuildContext context,
      {required Uint8List imageData}) async {
    final result = await showDialog(
        context: context,
        builder: (context) => Dialog.fullscreen(
            child: AudioRecordingScreen(imageData: imageData)));
    return result as ({Uint8List? audioBytes, String path, int duration})?;
  }

  Future<int> getDuration(String? audioPath) async {
    Duration? duration;
    final aup = ap.AudioPlayer();

    await aup.setSourceDeviceFile(audioPath!);

    duration = await aup.getDuration();
    return duration?.inSeconds ?? 0;
  }
}
