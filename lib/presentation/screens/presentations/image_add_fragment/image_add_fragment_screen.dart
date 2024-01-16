import 'dart:typed_data';
import 'dart:html' as html;
import 'package:audioplayers/audioplayers.dart' as ap;

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';

import '../../../../domain/models/image_fragment.dart';

import '../../../common/common_elevated_button.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
import '../audio_recording/audio_recording_screen.dart';

@RoutePage()
class ImageAddFragmentScreen extends StatefulWidget {
  ImageAddFragmentScreen({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  State<ImageAddFragmentScreen> createState() => _ImageAddFragmentScreenState();
}

class _ImageAddFragmentScreenState extends State<ImageAddFragmentScreen> {
  Uint8List? imageBytes;
  Uint8List? audioBytes;
  String? audioPath;
  int? duration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Создание слайда')),
        body: Row(children: [
          Expanded(
            child: imageBytes != null
                ? Image.memory(imageBytes!)
                : const SizedBox(),
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
                    child: CommonElevatedButton(
                        text: imageBytes == null
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
                            setState(() {
                              imageBytes = result.files.single.bytes!;
                            });
                          }
                        }),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  if (imageBytes != null) ...[
                    if (audioBytes == null)
                      const Padding(
                        padding: EdgeInsets.only(
                          bottom: 12,
                        ),
                        child: Text('Аудио отсутствует'),
                      ),
                    if (audioBytes != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: AudioPlayerWidget(
                            urlSource: audioPath!,
                            duration: duration!,
                            onDelete: () {
                              setState(() {
                                audioBytes = null;
                              });
                            }),
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
                                imageData: imageBytes!);
                            if (result != null && context.mounted) {
                              setState(() {
                                audioBytes = result.audioBytes;
                                audioPath = result.path;
                                duration = result.duration;
                              });
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
                                setState(() {
                                  audioBytes = fileBytes;
                                  audioPath = dataUrl;
                                  duration = durationInSeconds;
                                });
                              }
                            }
                          }),
                    ),
                  ],
                  const SizedBox(
                    height: 12,
                  ),
                  if (imageBytes != null)
                    Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                            text: 'Добавить',
                            onPressed: () {
                              if (widget.titleController.text.isNotEmpty) {
                                context.router.pop(ImageFragment(
                                    // Потом это значение в блоке пересчитывается
                                    isLandscape: false,
                                    imageBytes: imageBytes!,
                                    title: widget.titleController.text,
                                    audioBytes: audioBytes,
                                    audioPath: audioPath,
                                    duration: duration,
                                    description:
                                        widget.descriptionController.text));
                              } else {
                                CommonFunctions.showMessage(
                                    context,
                                    'Название слайда не может быть пустым',
                                    Reason.error);
                              }
                            })),
                  const SizedBox(
                    width: 24,
                  )
                ],
              ))
        ]));
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