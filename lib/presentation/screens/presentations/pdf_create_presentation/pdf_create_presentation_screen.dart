import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/theme/dynamic_theme.dart';
import 'package:path/path.dart';

import 'package:moki_tutor/presentation/auto_router/app_router.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';

import '../../../../../domain/models/pdf_fragment_sample.dart';

import '../../../common/common_elevated_button.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
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
  File? pdfFile;
  List<String?> audioPathList = [];
  List<TextEditingController> recordTitleControllerList = [];
  List<TextEditingController> recordDescriptionControllerList = [];
  List<int?> audioDurationList = [];
  bool isAudio = false;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

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
              listener: (context, state) => state.mapOrNull(saveSuccess: (_) {
                    CommonFunctions.showMessage(
                        context, 'Saved', Reason.neutral);
                    context.router.pop(true);
                    return null;
                  }),
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
                        audioDurationList.add(null);
                      }
                    }

                    return Row(
                      children: [
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
                              CheckboxListTile(
                                  side: BorderSide(
                                      color: DynamicTheme.paletteOf(context)
                                          .accent),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  title: Text('Презентация с аудио'),
                                  value: isAudio,
                                  onChanged: (v) {
                                    setState(() {
                                      isAudio = v!;
                                    });
                                  }),
                              const SizedBox(height: 20),
                              CommonElevatedButton(
                                onPressed: () => _onSelectFile(context),
                                text: 'Выберите PDF файл',
                              ),
                              const SizedBox(height: 20),
                              if (pdfFile != null) ...[
                                Text(basename(pdfFile!.path)),
                                const SizedBox(height: 20),
                                CommonElevatedButton(
                                  onPressed: () {
                                    final pdfFragmentList =
                                        <PdfFragmentSample>[];
                                    for (int i = 0;
                                        i < state.pdfFragmentList!.length;
                                        i++) {
                                      pdfFragmentList.add(PdfFragmentSample(
                                        image: state.pdfFragmentList!
                                            .elementAt(i)
                                            .image,
                                        audioPath: audioPathList[i],
                                        title: recordTitleControllerList
                                            .elementAt(i)
                                            .text,
                                        description:
                                            recordDescriptionControllerList
                                                .elementAt(i)
                                                .text,
                                        duration: audioDurationList[i],
                                      ));
                                    }
                                    BlocProvider.of<PdfCreatePresentationBloc>(
                                            context)
                                        .add(PdfCreatePresentationEvent
                                            .savePdfPresentation(
                                                pdfFile: pdfFile!.path,
                                                title: titleController.text,
                                                description:
                                                    descriptionController.text,
                                                pdfFragmentList:
                                                    pdfFragmentList,
                                                isAudio: isAudio));

                                    /// TODO
                                  },
                                  text: 'Создать тему',
                                ),
                              ],
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: state.isPending
                              ? const Center(child: CircularProgressIndicator())
                              : _FragmentListView(
                                  isAudio: isAudio,
                                  pdfFragmentList: state.pdfFragmentList ?? [],
                                  titleControllerList:
                                      recordTitleControllerList,
                                  descriptionControllerList:
                                      recordDescriptionControllerList,
                                  onPathChanged: (p, s, i) {
                                    audioPathList[i] = p;
                                    audioDurationList[i] = s;
                                  },
                                ),
                        ),
                      ],
                    );
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

    if (result != null) {
      final File file = File(result.files.single.path!);
      setState(() {
        pdfFile = file;
      });
      if (mounted) {
        BlocProvider.of<PdfCreatePresentationBloc>(context).add(
            PdfCreatePresentationEvent.convertPdf(pdfFilePath: pdfFile!.path));
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
  }) : super(key: key);

  final List<PdfFragmentSample> pdfFragmentList;

  final List<TextEditingController> titleControllerList;
  final List<TextEditingController> descriptionControllerList;
  final Function(String?, int?, int) onPathChanged;
  final bool isAudio;

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
          onPathChanged: (p, s) {
            onPathChanged(p, s, index);
          },
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
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final Uint8List imageData;
  final bool isAudio;

  final void Function(String?, int?) onPathChanged;

  @override
  State<FragmentListItem> createState() => _FragmentListItemState();
}

class _FragmentListItemState extends State<FragmentListItem> {
  late bool showPlayer;
  String? audioPath;
  int? duration;
  late bool isAudio;
  @override
  void initState() {
    super.initState();
    showPlayer = false;
    isAudio = widget.isAudio;
  }

  @override
  void didUpdateWidget(FragmentListItem oldWidget) {
    isAudio = widget.isAudio;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: Image.memory(widget.imageData)),
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
                            duration: duration!,
                            source: audioPath!,
                            onDelete: () {
                              setState(() => showPlayer = false);
                              widget.onPathChanged(null, null);
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
                              showPlayer = true;

                              final durationInSeconds =
                                  await getDuration(audioPath!);
                              print(durationInSeconds);
                              widget.onPathChanged(
                                  audioPath, durationInSeconds);
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
                          setState(() {
                            audioPath = result.files.single.path!;
                          });
                          showPlayer = true;
                          final durationInSeconds =
                              await getDuration(audioPath!);
                          print(durationInSeconds);
                          widget.onPathChanged(audioPath, durationInSeconds);
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

  Future<({String? path, int? duration})?> _showRecorder(BuildContext context,
      {required Uint8List imageData}) async {
    final result =
        await context.router.push(AudioRecordingRoute(imageData: imageData));
    return result as ({String path, int duration});
  }

  Future<int> getDuration(String path) async {
    Duration? duration;
    final aup = ap.AudioPlayer();
    await aup.play(
      DeviceFileSource(
        audioPath!,
      ),
      volume: 0,
    );
    await aup.getDuration().then((value) {
      aup.stop();
      aup.dispose();
      duration = value;
    });
    return duration?.inSeconds ?? 0;
  }
}
