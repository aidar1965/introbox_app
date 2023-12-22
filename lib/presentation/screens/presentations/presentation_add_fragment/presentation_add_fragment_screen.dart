import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';

import '../../../auto_router/app_router.dart';
import '../../../common/common_elevated_button.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
import 'bloc/presentation_add_fragment_bloc.dart';

@RoutePage()
class PresentationAddFragmentScreen extends StatelessWidget {
  PresentationAddFragmentScreen(
      {super.key, required this.displayOder, required this.presentationId});

  final int displayOder;
  final int presentationId;
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
                presentationId: presentationId, displayOrder: displayOder),
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
                          'state not supporting vuilding'),
                      screenState: (state) => _ScreenView(
                        isSavePending: state.isSavePending,
                        titleController: titleController,
                        descriptionController: descriptionController,
                        duration: state.duration,
                        image: state.image,
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

class _ScreenView extends StatelessWidget {
  _ScreenView(
      {super.key,
      required this.isSavePending,
      this.image,
      this.audioPath,
      required this.titleController,
      required this.descriptionController,
      this.duration});

  final bool isSavePending;
  final File? image;
  final String? audioPath;
  final int? duration;

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: image != null ? Image.file(image!) : const SizedBox(),
      ),
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
              Text('Назввание и описание слайда'),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: NameAndDescriptionWidget(
                  titleController: titleController,
                  descriptionController: descriptionController,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: CommonElevatedButton(
                    text: image == null
                        ? 'Добавить изображение'
                        : 'Изменить изображение',
                    onPressed: () async {
                      final result = await FilePicker.platform.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: [
                          'pdf',
                          'jpg',
                          'jpeg',
                          'png',
                          'webp',
                          'gif'
                        ],
                      );
                      if (result != null) {
                        final imagePath = result.files.single.path!;

                        if (context.mounted) {
                          BlocProvider.of<PresentationAddFragmentBloc>(context)
                              .add(PresentationAddFragmentEvent.imageAdded(
                                  imagePath: imagePath));
                        }
                      }
                    }),
              ),
              const SizedBox(
                height: 12,
              ),
              if (image != null) ...[
                if (audioPath == null)
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 12,
                    ),
                    child: Text('Аудио отсутствует'),
                  ),
                if (audioPath != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: AudioPlayerWidget(
                        urlSource: audioPath!,
                        duration: duration!,
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
                        final result =
                            await _showRecorder(context, image: image!);
                        if (result != null && context.mounted) {
                          BlocProvider.of<PresentationAddFragmentBloc>(context)
                              .add(PresentationAddFragmentEvent.audioAdded(
                                  audioPath: result.path,
                                  duration: result.duration));
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
                        final result = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ['mp3', 'wav'],
                        );
                        if (result != null) {
                          final audioPathFromFile = result.files.single.path!;

                          final durationInSeconds =
                              await getDuration(audioPathFromFile);
                          if (context.mounted) {
                            BlocProvider.of<PresentationAddFragmentBloc>(
                                    context)
                                .add(PresentationAddFragmentEvent.audioAdded(
                                    audioPath: audioPathFromFile,
                                    duration: durationInSeconds));
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
                    onPressed: () => BlocProvider.of<
                            PresentationAddFragmentBloc>(context)
                        .add(PresentationAddFragmentEvent.fragmentSaveClicked(
                            title: titleController.text,
                            description: descriptionController.text))),
              ),
              const SizedBox(
                width: 24,
              )
            ],
          ))
    ]);
  }

  Future<({String path, int duration})?> _showRecorder(BuildContext context,
      {required File image}) async {
    final result =
        await context.router.push(AudioRecordingRoute(imagePath: image.path));
    return result as ({String path, int duration})?;
  }

  Future<int> getDuration(String path) async {
    Duration? duration;
    final aup = AudioPlayer();
    await aup.play(
      DeviceFileSource(
        path,
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
