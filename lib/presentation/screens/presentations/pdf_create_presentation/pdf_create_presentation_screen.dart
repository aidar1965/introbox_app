import 'dart:async';
import 'dart:io';

// import 'dart:html' as html;

import 'package:audioplayers/audioplayers.dart' as ap;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbox/domain/models/presentation_link.dart';
import 'package:introbox/presentation/common/common_loading_error_widget.dart';

import 'package:path/path.dart';

import '../../../../domain/models/channel.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../auto_router/app_router.dart';
import '../../../common/common_functions.dart';

import '../../../../../domain/models/pdf_fragment_sample.dart';

import '../../../common/common_elevated_button.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/link_item.dart';
import '../../../widgets/name_and_description.dart';
import '../audio_recording/audio_recording_screen.dart';
import 'bloc/pdf_create_presentation_bloc.dart';

@RoutePage()
class PdfCreatePresentationScreen extends StatelessWidget {
  const PdfCreatePresentationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              context.router.push(PresentationsRoute());
            },
          ),
          title: Text(
            LocaleKeys.newPresentationFromPdf.tr(),
          )),
      body: BlocProvider<PdfCreatePresentationBloc>(
          create: (context) => PdfCreatePresentationBloc(),
          child: BlocConsumer<PdfCreatePresentationBloc,
                  PdfCreatePresentationState>(
              listener: (context, state) => state.mapOrNull(
                  saveSuccess: (_) {
                    CommonFunctions.showMessage(
                        context,
                        LocaleKeys.createPresentationSuccess.tr(),
                        Reason.neutral);
                    if (context.router.canPop()) {
                      context.router.pop(true);
                    } else {
                      context.router.push(PresentationsRoute());
                    }
                    return null;
                  },
                  saveError: (state) => CommonFunctions.showMessage(context,
                      LocaleKeys.commonRequestError.tr(), Reason.error)),
              buildWhen: (previous, current) => current.map(
                  savingProcess: (state) => true,
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
                      onPressed: () =>
                          BlocProvider.of<PdfCreatePresentationBloc>(context)
                              .add(const PdfCreatePresentationEvent
                                  .initialDataRequested())),
                  savingProcess: (state) => _SavingProcessWidget(
                      current: state.currentSlide, total: state.totalSlides),
                  screenState: (state) => _ScreenView(
                        channels: state.channels,
                        selectedChannel: state.selectedChanel,
                        isPending: state.isPending,
                        pdfFragmentList: state.pdfFragmentList,
                        countFileGenerated: state.countFileGenerated,
                        titleController: titleController,
                        descriptionController: descriptionController,
                        links: state.links,
                      )))),
    );
  }
}

class _ScreenView extends StatefulWidget {
  const _ScreenView({
    super.key,
    required this.channels,
    required this.selectedChannel,
    this.pdfFragmentList,
    required this.isPending,
    this.countFileGenerated,
    required this.titleController,
    required this.descriptionController,
    this.links,
  });

  final List<Channel> channels;
  final Channel selectedChannel;
  final List<PdfFragmentSample>? pdfFragmentList;
  final bool isPending;
  final int? countFileGenerated;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final List<PresentationLink>? links;

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

  @override
  void initState() {
    super.initState();
    title = widget.titleController.text;
    widget.titleController.addListener(() {
      title = widget.titleController.text;
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
      final extension = result.files.first.extension;

      if (extension?.toLowerCase() != 'pdf') return;

      final fileBytes = File(result.files.single.path!).readAsBytesSync();
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
                titleController: widget.titleController,
                descriptionController: widget.descriptionController,
              ),
              const SizedBox(height: 20),
              CommonElevatedButton(
                onPressed: () => _onSelectFile(context),
                text: LocaleKeys.selectPdfFile.tr(),
              ),
              const SizedBox(height: 20),
              if (pdfFile != null) ...[
                Text(basename(pdfFileName!)),
                const SizedBox(height: 20),
                Text(LocaleKeys.channel.tr()),
                const SizedBox(height: 20),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.channels.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 8,
                  ),
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      widget.channels.elementAt(index).title,
                      style: const TextStyle(color: Colors.black),
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
                if (Responsive.isMobile(context)) ...[
                  widget.countFileGenerated != null
                      ? Center(
                          child: Text(
                              '${LocaleKeys.slidesGeneration.tr()}${widget.countFileGenerated}'))
                      : widget.isPending
                          ? const SizedBox(
                              height: 100,
                              child: Center(child: CircularProgressIndicator()))
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
                              title: title,
                              audioPathList: audioPathList,
                              durationList: audioDurationList,
                            )
                ],
                const SizedBox(
                  height: 12,
                ),
                if (widget.links?.isNotEmpty ?? false) ...[
                  Text(LocaleKeys.links.tr()),
                  ListView.separated(
                    itemBuilder: (context, index) => LinkItem(
                      link: widget.links!.elementAt(index),
                      index: index,
                      onDelete: (i) =>
                          BlocProvider.of<PdfCreatePresentationBloc>(context)
                              .add(PdfCreatePresentationEvent.deleteLink(i)),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemCount: widget.links!.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                ],
                const SizedBox(
                  height: 12,
                ),
                CommonElevatedButton(
                    //TODO: locale
                    text: 'Add link',
                    onPressed: () async {
                      final result = await _showLinksDialog(context);
                      if (result is PresentationLink) {
                        if (mounted) {
                          BlocProvider.of<PdfCreatePresentationBloc>(context)
                              .add(PdfCreatePresentationEvent.addLink(
                                  link: result));
                        }
                      }
                    }),
                const SizedBox(
                  height: 12,
                ),
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
                      if (widget.titleController.text.trim().isEmpty) {
                        CommonFunctions.showMessage(context,
                            LocaleKeys.noPresentationTitle.tr(), Reason.error);

                        return;
                      }
                      BlocProvider.of<PdfCreatePresentationBloc>(context).add(
                          PdfCreatePresentationEvent.savePdfPresentation(
                              pdfFile: pdfFile!,
                              pdfFileName: pdfFileName!,
                              title: widget.titleController.text,
                              description: widget.descriptionController.text,
                              pdfFragmentList: pdfFragmentList,
                              isAudio: isAudio));

                      /// TODO
                    },
                    text: LocaleKeys.buttonSave.tr(),
                  ),
                const SizedBox(
                  height: 24,
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
                  child: Text(
                      '${LocaleKeys.slidesGeneration.tr()}${widget.countFileGenerated}'))
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
                      title: title,
                      audioPathList: audioPathList,
                      durationList: audioDurationList,
                    ),
        ),
        const SizedBox(
          width: 12,
        ),
      ],
    ]);
  }

  Future<PresentationLink?>? _showLinksDialog(BuildContext context) async {
    final linkController = TextEditingController();
    final descriptionController = TextEditingController();
    final result = await showDialog(
        context: context,
        builder: (context) => SizedBox(
              width: 500,
              child: SimpleDialog(
                  title: Text(LocaleKeys.addLink.tr()),
                  contentPadding: const EdgeInsets.all(24),
                  children: [
                    NameAndDescriptionWidget(
                        titleLabelName: LocaleKeys.link.tr(),
                        titleController: linkController,
                        descriptionController: descriptionController),
                    const SizedBox(
                      height: 12,
                    ),
                    CommonElevatedButton(
                        text: 'Add link',
                        onPressed: () {
                          context.router.pop(PresentationLink(
                            description: descriptionController.text,
                            link: linkController.text,
                          ));
                        }),
                    const SizedBox(
                      height: 12,
                    ),
                    TextButton(
                        onPressed: () => context.router.pop(),
                        child: Text(LocaleKeys.buttonCancel.tr()))
                  ]),
            ));

    return result;
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
    required this.audioPathList,
    required this.durationList,
  }) : super(key: key);

  final List<PdfFragmentSample> pdfFragmentList;

  final List<TextEditingController> titleControllerList;
  final List<TextEditingController> descriptionControllerList;
  final Function(Uint8List?, String?, int?, int, String?) onPathChanged;
  final bool isAudio;
  final bool isTitleOverImage;
  final String title;
  final List<String?> audioPathList;
  final List<int?> durationList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: Responsive.isMobile(context)
          ? const NeverScrollableScrollPhysics()
          : null,
      separatorBuilder: (context, index) => const SizedBox(
        height: 8,
      ),
      shrinkWrap: true,
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
          audioPath: audioPathList.elementAt(index),
          duration: durationList.elementAt(index),
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
    this.audioPath,
    this.duration,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final Uint8List imageData;
  final String? audioPath;
  final bool isAudio;
  final bool isTitleOverImage;
  final String title;
  final int? duration;

  final void Function(Uint8List?, String? path, int? seconds, String? extension)
      onPathChanged;

  @override
  State<FragmentListItem> createState() => _FragmentListItemState();
}

class _FragmentListItemState extends State<FragmentListItem> {
  late bool showPlayer;
  String? audioPath;
  Uint8List? audioBytes;
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
    if (Responsive.isMobile(context) == false) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Image.memory(widget.imageData),
                  if (isTitleOverImage)
                    Positioned(bottom: 0, child: Text(title))
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
                    widget.audioPath != null || audioPath != null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: AudioPlayerWidget(
                              duration: duration ?? widget.duration!,
                              urlSource: audioPath ?? widget.audioPath,
                              onDelete: () {
                                setState(() => showPlayer = false);
                                widget.onPathChanged(null, null, null, null);
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
                                  audioBytes = result.audioBytes;
                                  showPlayer = true;
                                });

                                final durationInSeconds =
                                    await getDuration(audioPath!);
                                print(durationInSeconds);
                                widget.onPathChanged(audioBytes, audioPath,
                                    durationInSeconds, 'aac');
                              }
                            },
                            text: LocaleKeys.buttonRecord.tr(),
                          ),
                    const SizedBox(height: 32),
                    CommonElevatedButton(
                        onPressed: () async {
                          final result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: [
                              'opus',
                              'ogg',
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
                            final fileBytes = File(result.files.first.path!)
                                .readAsBytesSync();

                            final extension = result.files.first.extension;

                            if (extension?.toLowerCase() != 'm4a' &&
                                extension?.toLowerCase() != 'ogg' &&
                                extension?.toLowerCase() != 'opus' &&
                                extension?.toLowerCase() != 'aac' &&
                                extension?.toLowerCase() != 'mp3' &&
                                extension?.toLowerCase() != 'm4b' &&
                                extension?.toLowerCase() != 'm4p' &&
                                extension?.toLowerCase() != 'mp4' &&
                                extension?.toLowerCase() != 'wav') return;

                            final file = result.files.first;

                            final durationInSeconds =
                                await getDuration(audioPath);
                            setState(() {
                              audioPath = file.path;
                              duration = durationInSeconds;
                              showPlayer = true;
                            });

                            widget.onPathChanged(fileBytes, audioPath,
                                durationInSeconds, extension);
                          }
                        },
                        text: LocaleKeys.addAudioFromFile.tr())
                  ],
                ],
              )),
          const SizedBox(width: 32),
        ],
      );
    } else {
      return Column(
        children: [
          Stack(
            children: [
              Image.memory(widget.imageData),
              if (isTitleOverImage) Positioned(bottom: 0, child: Text(title))
            ],
          ),
          const SizedBox(
            height: 12,
          ),
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

                        final durationInSeconds = await getDuration(audioPath!);

                        widget.onPathChanged(
                            audioBytes, audioPath, durationInSeconds, 'aac');
                      }
                    },
                    text: LocaleKeys.buttonRecord.tr(),
                  ),
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
                    final fileBytes =
                        File(result.files.first.path!).readAsBytesSync();

                    final extension = result.files.first.extension;

                    if (extension?.toLowerCase() != 'm4a' &&
                        extension?.toLowerCase() != 'ogg' &&
                        extension?.toLowerCase() != 'opus' &&
                        extension?.toLowerCase() != 'aac' &&
                        extension?.toLowerCase() != 'mp3' &&
                        extension?.toLowerCase() != 'm4b' &&
                        extension?.toLowerCase() != 'm4p' &&
                        extension?.toLowerCase() != 'mp4' &&
                        extension?.toLowerCase() != 'wav') return;

                    final durationInSeconds =
                        await getDuration(result.files.first.path);
                    setState(() {
                      audioPath = result.files.first.path;
                      duration = durationInSeconds;
                      showPlayer = true;
                    });

                    widget.onPathChanged(
                        fileBytes, audioPath, durationInSeconds, extension);
                  }
                },
                text: LocaleKeys.addAudioFromFile.tr())
          ],
        ],
      );
    }
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

class _SavingProcessWidget extends StatelessWidget {
  const _SavingProcessWidget(
      {super.key, required this.current, required this.total});

  final int current;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.awaitCreationFinished.tr(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          if (current == 0)
            Text(LocaleKeys.savingPresentation.tr())
          else
            Text(LocaleKeys.countSlides.tr(args: ['$current', '$total'])),
        ],
      ),
    );
  }
}
