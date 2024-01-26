import 'dart:html' as html;

import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/screens/presentations/audio_recording/audio_recording_screen.dart';

import '../../../common/common_elevated_button.dart';
import '../../../values/dynamic_palette.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
import 'bloc/presentation_add_fragment_bloc.dart';

@RoutePage()
class PresentationAddFragmentScreen extends StatelessWidget {
  PresentationAddFragmentScreen({
    super.key,
    required this.displayOder,
    required this.presentationId,
    required this.fragmentsIds,
  });

  final int displayOder;
  final String presentationId;
  final List<String> fragmentsIds;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Добавление слайда'),
        ),
        body: BlocProvider(
            create: (context) => PresentationAddFragmentBloc(
                presentationId: presentationId,
                displayOrder: displayOder,
                fragmentsIds: fragmentsIds),
            child: BlocConsumer<PresentationAddFragmentBloc,
                    PresentationAddFragmentState>(
                listener: (context, state) => state.mapOrNull(
                      requestSuccess: (state) => onRequestSuccess(context),
                      requestError: (state) =>
                          onRequestError(context, state.errorText),
                    ),
                buildWhen: (previous, current) => current.maybeMap(
                    orElse: () => false, screenState: (_) => true),
                builder: (context, state) => state.maybeMap(
                      orElse: () => throw UnsupportedError(
                          'state not supporting building'),
                      screenState: (state) => _ScreenView(
                        isSavePending: state.isSavePending,
                        titleController: titleController,
                        descriptionController: descriptionController,
                        duration: state.duration,
                        image: state.imageBytes,
                        audioBytes: state.audioBytes,
                        audioPath: state.audioPath,
                      ),
                    ))));
  }

  void onRequestSuccess(BuildContext context) {
    context.router.pop(true);
  }

  void onRequestError(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(context,
        errorText ?? 'Произошла ошибка при сохранении данных', Reason.error);
  }
}

class _ScreenView extends StatefulWidget {
  _ScreenView(
      {super.key,
      required this.isSavePending,
      this.image,
      this.audioBytes,
      required this.titleController,
      required this.descriptionController,
      this.duration,
      this.audioPath});

  final bool isSavePending;
  final Uint8List? image;
  final Uint8List? audioBytes;
  final String? audioPath;
  final int? duration;

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  bool isTitleOverImage = false;

  @override
  Widget build(BuildContext context) {
    return widget.isSavePending
        ? const Center(child: Text('Сохранение данных...'))
        : Row(children: [
            Expanded(
                child: widget.image != null
                    ? Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.memory(widget.image!),
                          if (isTitleOverImage)
                            Positioned(
                                bottom: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Opacity(
                                      opacity: 0.5,
                                      child: DecoratedBox(
                                          decoration: const BoxDecoration(
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(
                                              widget.titleController.text,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                  ],
                                ))
                        ],
                      )
                    : const SizedBox()),
            const SizedBox(
              width: 24,
            ),
            SizedBox(
                width: 300,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text('Название и описание слайда'),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: NameAndDescriptionWidget(
                        titleController: widget.titleController,
                        descriptionController: widget.descriptionController,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CheckboxListTile(
                          tileColor: DynamicPalette.light().accent,
                          title: Text(
                            'Название поверх изображения',
                            style: TextStyle(
                                color: DynamicPalette.light().alwaysWhite),
                          ),
                          value: isTitleOverImage,
                          onChanged: (v) {
                            setState(() {
                              isTitleOverImage = !isTitleOverImage;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CommonElevatedButton(
                          text: widget.image == null
                              ? 'Добавить изображение'
                              : 'Изменить изображение',
                          onPressed: () async {
                            final result = await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: [
                                'jpg',
                                'jpeg',
                                'png',
                                'webp',
                                'gif'
                              ],
                            );
                            if (result != null) {
                              final fileBytes = result.files.first.bytes;

                              if (context.mounted) {
                                BlocProvider.of<PresentationAddFragmentBloc>(
                                        context)
                                    .add(
                                        PresentationAddFragmentEvent.imageAdded(
                                            imageBytes: fileBytes!));
                              }
                            }
                          }),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    if (widget.image != null) ...[
                      if (widget.audioBytes == null)
                        const Padding(
                          padding: EdgeInsets.only(
                            bottom: 12,
                          ),
                          child: Text('Аудио отсутствует'),
                        ),
                      if (widget.audioBytes != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: AudioPlayerWidget(
                              urlSource: widget.audioPath!,
                              duration: widget.duration!,
                              onDelete: () =>
                                  BlocProvider.of<PresentationAddFragmentBloc>(
                                          context)
                                      .add(const PresentationAddFragmentEvent
                                          .deleteAudio())),
                        ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                            text: 'Записать аудио',
                            onPressed: () async {
                              final result = await _showRecorder(context,
                                  imageData: widget.image!);
                              if (result != null && context.mounted) {
                                BlocProvider.of<PresentationAddFragmentBloc>(
                                        context)
                                    .add(
                                        PresentationAddFragmentEvent.audioAdded(
                                            audioBytes: result.audioBytes!,
                                            duration: result.duration!,
                                            audioPath: result.path!));
                              }
                            }),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                            text: 'Добавить аудио из файла',
                            onPressed: () async {
                              final result =
                                  await FilePicker.platform.pickFiles(
                                type: FileType.custom,
                                allowedExtensions: ['mp3', 'wav'],
                              );
                              if (result != null) {
                                final fileBytes = result.files.first.bytes;

                                // Преобразование Uint8List в Blob
                                final blob = html.Blob(
                                  [fileBytes],
                                );

                                // Преобразование Blob в data URL
                                final dataUrl =
                                    html.Url.createObjectUrlFromBlob(blob);
                                print(dataUrl);

                                final durationInSeconds =
                                    await getDuration(dataUrl);
                                if (context.mounted) {
                                  BlocProvider.of<PresentationAddFragmentBloc>(
                                          context)
                                      .add(PresentationAddFragmentEvent
                                          .audioAdded(
                                              audioBytes: fileBytes!,
                                              duration: durationInSeconds,
                                              audioPath: dataUrl));
                                }
                              }
                            }),
                      ),
                    ],
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CommonElevatedButton(
                          text: 'Сохранить',
                          onPressed: () =>
                              BlocProvider.of<PresentationAddFragmentBloc>(
                                      context)
                                  .add(PresentationAddFragmentEvent
                                      .fragmentSaveClicked(
                                title: widget.titleController.text,
                                description: widget.descriptionController.text,
                                isTitleOverImage: isTitleOverImage,
                              ))),
                    ),
                    const SizedBox(
                      width: 24,
                    )
                  ],
                ))
          ]);
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
