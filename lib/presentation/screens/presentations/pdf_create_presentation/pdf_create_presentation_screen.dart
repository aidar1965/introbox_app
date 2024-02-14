import 'dart:async';
import 'dart:html' as html;

import 'package:audioplayers/audioplayers.dart' as ap;

import 'package:auto_route/auto_route.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';

import 'package:path/path.dart';

import '../../../../domain/models/channel.dart';
import '../../../auto_router/app_router.dart';
import '../../../common/common_functions.dart';

import '../../../../../domain/models/pdf_fragment_sample.dart';

import '../../../common/common_elevated_button.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
import '../audio_recording/audio_recording_screen.dart';
import 'bloc/pdf_create_presentation_bloc.dart';

@RoutePage()
class PdfCreatePresentationScreen extends StatelessWidget {
  const PdfCreatePresentationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              context.router.push(const PresentationsRoute());
            },
          ),
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
                  saveError: (state) => CommonFunctions.showMessage(
                      context,
                      'Произошла ошибка при сохранении презентации',
                      Reason.error)),
              buildWhen: (previous, current) => current.map(
                  pending: (_) => true,
                  initialDataNotLoaded: (_) => true,
                  screenState: (c) => true,
                  saveSuccess: (c) => false,
                  saveError: (c) => false),
              builder: (context, state) => state.maybeMap(
                  orElse: () => throw UnsupportedError(
                      'wrong state for PdfCreatePresentationScreen'),
                  pending: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  initialDataNotLoaded: (_) => CommonLoadingErrorWidget(
                      onPressed: () => BlocProvider.of<
                              PdfCreatePresentationBloc>(context)
                          .add(
                              const PdfCreatePresentationEvent.initialDataRequested())),
                  screenState: (state) => _ScreenView(
                        channels: state.channels,
                        selectedChannel: state.selectedChanel,
                        isPending: state.isPending,
                        pdfFragmentList: state.pdfFragmentList,
                        countFileGenerated: state.countFileGenerated,
                      )))),
    );
  }
}

class _ScreenView extends StatefulWidget {
  const _ScreenView(
      {super.key,
      required this.channels,
      required this.selectedChannel,
      this.pdfFragmentList,
      required this.isPending,
      this.countFileGenerated});

  final List<Channel> channels;
  final Channel selectedChannel;
  final List<PdfFragmentSample>? pdfFragmentList;
  final bool isPending;
  final int? countFileGenerated;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  Uint8List? pdfFile;
  String? pdfFileName;
  List<Uint8List?> audioBytesList = [];
  List<String?> audioPathList = [];
  List<String?> extensionList = [];
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
    super.initState();
    title = titleController.text;
    titleController.addListener(() {
      title = titleController.text;
    });
    if (widget.pdfFragmentList != null) {
      for (var i = 0; i < widget.pdfFragmentList!.length; i++) {
        recordTitleControllerList.add(TextEditingController());
        recordDescriptionControllerList.add(TextEditingController());
        audioPathList.add(null);
        audioBytesList.add(null);
        audioDurationList.add(null);
        extensionList.add(null);
      }
    }
  }

  @override
  void didUpdateWidget(_ScreenView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.pdfFragmentList != null) {
      for (var i = 0; i < widget.pdfFragmentList!.length; i++) {
        recordTitleControllerList.add(TextEditingController());
        recordDescriptionControllerList.add(TextEditingController());
        audioPathList.add(null);
        audioBytesList.add(null);
        audioDurationList.add(null);
        extensionList.add(null);
      }
    }
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

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(width: 24),
      Expanded(
        flex: 1,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                Text('Канал'),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.channels.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      widget.channels.elementAt(index).title,
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Radio(
                      value: widget.channels.elementAt(index).id,
                      groupValue: widget.selectedChannel.id,
                      onChanged: (value) {
                        BlocProvider.of<PdfCreatePresentationBloc>(context).add(
                            PdfCreatePresentationEvent.channelSelected(
                                channel: widget.channels.elementAt(index)));
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                if (widget.pdfFragmentList?.isNotEmpty ?? false)
                  CommonElevatedButton(
                    isPending: widget.isPending,
                    onPressed: () {
                      final pdfFragmentList = <PdfFragmentSample>[];
                      for (int i = 0; i < widget.pdfFragmentList!.length; i++) {
                        pdfFragmentList.add(PdfFragmentSample(
                            image: widget.pdfFragmentList!.elementAt(i).image,
                            audioBytes: audioBytesList[i],
                            title: recordTitleControllerList.elementAt(i).text,
                            description: recordDescriptionControllerList
                                .elementAt(i)
                                .text,
                            duration: audioDurationList[i],
                            audioExtension: extensionList[i],
                            isTitleOverImage: isTitleOverImage));
                      }
                      BlocProvider.of<PdfCreatePresentationBloc>(context).add(
                          PdfCreatePresentationEvent.savePdfPresentation(
                              pdfFile: pdfFile!,
                              pdfFileName: pdfFileName!,
                              title: titleController.text,
                              description: descriptionController.text,
                              pdfFragmentList: pdfFragmentList,
                              isAudio: isAudio));

                      /// TODO
                    },
                    text: 'Создать презентацию',
                  ),
              ],
            ],
          ),
        ),
      ),
      const SizedBox(
        width: 12,
      ),
      if (Responsive.isMobile(context) == false) ...[
        Expanded(
          flex: 4,
          child: widget.countFileGenerated != null
              ? Center(
                  child:
                      Text('Генерация слайдов: ${widget.countFileGenerated}'))
              : widget.isPending
                  ? const Center(child: CircularProgressIndicator())
                  : _FragmentListView(
                      isAudio: isAudio,
                      pdfFragmentList: widget.pdfFragmentList ?? [],
                      titleControllerList: recordTitleControllerList,
                      descriptionControllerList:
                          recordDescriptionControllerList,
                      onPathChanged: (f, p, s, i, e) {
                        audioPathList[i] = p;
                        audioBytesList[i] = f;
                        audioDurationList[i] = s;
                        extensionList[i] = e;
                      },
                      isTitleOverImage: false,
                      title: title),
        ),
      ],
    ]);
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
  final Function(Uint8List?, String?, int?, int, String?) onPathChanged;
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
          onPathChanged: (f, p, s, e) {
            onPathChanged(f, p, s, index, e);
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

  final void Function(Uint8List?, String? path, int? seconds, String? extension)
      onPathChanged;

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
                              widget.onPathChanged(null, null, null, null);
                            },
                          ),
                        )
                      // : CommonElevatedButton(
                      //     onPressed: () async {
                      //       final result = await _showRecorder(context,
                      //           imageData: widget.imageData);
                      //       if (result != null) {
                      //         setState(() {
                      //           audioPath = result.path;
                      //           duration = result.duration;
                      //         });
                      //         final audioBytes = result.audioBytes;
                      //         showPlayer = true;

                      //         final durationInSeconds =
                      //             await getDuration(audioPath!);
                      //         print(durationInSeconds);
                      //         widget.onPathChanged(
                      //             audioBytes, audioPath, durationInSeconds);
                      //       }
                      //     },
                      //     text: 'Записать аудио'),
                      : const SizedBox(),
                  const SizedBox(height: 32),
                  CommonElevatedButton(
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: [
                            'mp3',
                            'aac',
                            'm4a',
                            'm4b',
                            'm4p',
                            'mp4',
                            'wav'
                          ],
                        );
                        if (result != null) {
                          final fileBytes = result.files.first.bytes;

                          final extension = result.files.first.extension;

                          if (extension?.toLowerCase() != 'm4a' &&
                              extension?.toLowerCase() != 'aac' &&
                              extension?.toLowerCase() != 'mp3' &&
                              extension?.toLowerCase() != 'm4b' &&
                              extension?.toLowerCase() != 'm4p' &&
                              extension?.toLowerCase() != 'wav' &&
                              extension?.toLowerCase() != 'mp4') return;

                          // Преобразование Uint8List в Blob
                          final blob = html.Blob(
                            [fileBytes],
                          );

                          // Преобразование Blob в data URL
                          final dataUrl =
                              html.Url.createObjectUrlFromBlob(blob);

                          final durationInSeconds = await getDuration(dataUrl);
                          setState(() {
                            audioPath = dataUrl;
                            duration = durationInSeconds;
                          });
                          showPlayer = true;

                          widget.onPathChanged(fileBytes, audioPath,
                              durationInSeconds, extension);
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
