import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/auto_router/app_router.dart';
import 'package:path/path.dart';

import 'package:audioplayers/audioplayers.dart' as ap;

import '../../../widgets/name_and_description.dart';
import '../../../widgets/audio_player.dart';
import 'bloc/pdf_create_subject_bloc.dart';

@RoutePage()
class PdfCreateSubjectScreen extends StatefulWidget {
  const PdfCreateSubjectScreen({Key? key}) : super(key: key);

  @override
  State<PdfCreateSubjectScreen> createState() => _PdfCreateSubjectScreenState();
}

class _PdfCreateSubjectScreenState extends State<PdfCreateSubjectScreen> {
  File? pdfFile;
  List<String?> audioPathList = [];
  List<TextEditingController> recordTitleControllerList = [];
  List<TextEditingController> recordDescriptionControllerList = [];
  List<int?> audioDurationList = [];

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Новая тема из PDF файла',
      )),
      body: BlocProvider<PdfCreateSubjectBloc>(
          create: (context) => PdfCreateSubjectBloc(),
          child: BlocConsumer<PdfCreateSubjectBloc, PdfCreateSubjectState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              buildWhen: (previous, current) => current.map(
                  screenState: (c) => true,
                  saveSuccess: (c) => false,
                  saveError: (c) => false),
              builder: (context, state) => state.maybeMap(
                  orElse: () => throw UnsupportedError(
                      'wrong state for PdfCreateSubjectScreen'),
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
                              NameAndDescriptionWidget(
                                titleController: titleController,
                                descriptionController: descriptionController,
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () => _onSelectFile(context),
                                child: Text('PDF'),
                              ),
                              const SizedBox(height: 20),
                              if (pdfFile != null) ...[
                                Text(basename(pdfFile!.path)),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    final pdfFragmentList = <PdfFragment>[];
                                    for (int i = 0;
                                        i < state.pdfFragmentList!.length;
                                        i++) {
                                      pdfFragmentList.add(PdfFragment(
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
                                    BlocProvider.of<PdfCreateSubjectBloc>(
                                            context)
                                        .add(PdfCreateSubjectEvent
                                            .savePdfSubject(
                                                pdfFile: pdfFile!.path,
                                                title: titleController.text,
                                                description:
                                                    descriptionController.text,
                                                pdfFragmentList:
                                                    pdfFragmentList));
                                  },
                                  child: Text('Создать тему'),
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
        BlocProvider.of<PdfCreateSubjectBloc>(context)
            .add(PdfCreateSubjectEvent.convertPdf(pdfFilePath: pdfFile!.path));
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
  }) : super(key: key);

  final List<PdfFragment> pdfFragmentList;

  final List<TextEditingController> titleControllerList;
  final List<TextEditingController> descriptionControllerList;
  final Function(String?, int?, int) onPathChanged;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pdfFragmentList.length,
      itemBuilder: (context, index) {
        return FragmentListItem(
          titleController: titleControllerList.elementAt(index),
          descriptionController: descriptionControllerList.elementAt(index),
          imageData: pdfFragmentList.elementAt(index).image,
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
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final Uint8List imageData;

  final void Function(String?, int?) onPathChanged;

  @override
  State<FragmentListItem> createState() => _FragmentListItemState();
}

class _FragmentListItemState extends State<FragmentListItem> {
  late bool showPlayer;
  String? audioPath;
  @override
  void initState() {
    super.initState();
    showPlayer = false;
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
                showPlayer
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: AudioPlayerWidget(
                          source: audioPath!,
                          onDelete: () {
                            setState(() => showPlayer = false);
                            widget.onPathChanged(null, null);
                          },
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () async {
                          final result = await _showRecorder(context,
                              imageData: widget.imageData);
                          if (result != null) {
                            setState(() {
                              audioPath = result;
                            });
                            showPlayer = true;

                            final durationInSeconds =
                                await getDuration(audioPath!);
                            print(durationInSeconds);
                            widget.onPathChanged(audioPath, durationInSeconds);
                          }
                        },
                        child: Text('Записать аудио')),
                const SizedBox(height: 32),
                ElevatedButton(
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
                        final durationInSeconds = await getDuration(audioPath!);
                        print(durationInSeconds);
                        widget.onPathChanged(audioPath, durationInSeconds);
                      }
                    },
                    child: Text('Прикрепить аудио')),
              ],
            )),
        const SizedBox(width: 32),
      ],
    );
  }

  Future<String?> _showRecorder(BuildContext context,
      {required Uint8List imageData}) async {
    final result =
        await context.router.push(AudioRecordingRoute(imageData: imageData));
    return result as String?;
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
