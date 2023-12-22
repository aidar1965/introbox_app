import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/screens/pdf_subject/image_create_subject/image_fragment.dart';

import '../../../../auto_router/app_router.dart';
import '../../../../common/common_elevated_button.dart';
import '../../../../widgets/audio_player.dart';
import '../../../../widgets/name_and_description.dart';

@RoutePage()
class ImageAddFragmentScreen extends StatefulWidget {
  ImageAddFragmentScreen({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  State<ImageAddFragmentScreen> createState() => _ImageAddFragmentScreenState();
}

class _ImageAddFragmentScreenState extends State<ImageAddFragmentScreen> {
  String? imagePath;
  String? audioPath;
  int? duration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Создание эпизода')),
        body: Row(children: [
          Expanded(
            child: imagePath != null
                ? Image.file(File(imagePath!))
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
                  Text('Назввание и описание слайда'),
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
                        text: imagePath == null
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
                              imagePath = result.files.single.path!;
                            });
                          }
                        }),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  if (imagePath != null) ...[
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
                            onDelete: () {
                              setState(() {
                                audioPath = null;
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
                                imagePath: imagePath!);
                            if (result != null && context.mounted) {
                              setState(() {
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
                              final audioPathFromFile =
                                  result.files.single.path!;

                              final durationInSeconds =
                                  await getDuration(audioPathFromFile);
                              if (context.mounted) {
                                setState(() {
                                  audioPath = audioPathFromFile;
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
                  if (imagePath != null)
                    Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                            text: 'Сохранить',
                            onPressed: () {
                              if (widget.titleController.text.isNotEmpty) {
                                context.router.pop(ImageFragment(
                                    // Потом это значение в блоке пересчитывается
                                    isLandscape: false,
                                    image: imagePath!,
                                    title: widget.titleController.text,
                                    audioPath: audioPath,
                                    duration: duration,
                                    description:
                                        widget.descriptionController.text));
                              } else {
                                CommonFunctions.showMessage(
                                    context,
                                    'Название эпизода не пожет быть пустым',
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

  Future<({String path, int duration})?> _showRecorder(BuildContext context,
      {required String imagePath}) async {
    final result =
        await context.router.push(AudioRecordingRoute(imagePath: imagePath));
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
