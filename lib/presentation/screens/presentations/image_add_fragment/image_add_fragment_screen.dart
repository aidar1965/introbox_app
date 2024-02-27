import 'dart:typed_data';
import 'dart:html' as html;
import 'package:audioplayers/audioplayers.dart' as ap;

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:introbox/generated/locale_keys.g.dart';
import 'package:introbox/presentation/auto_router/app_router.dart';
import 'package:introbox/presentation/common/common_functions.dart';
import 'package:introbox/presentation/utils/responsive.dart';
import 'package:introbox/presentation/values/dynamic_palette.dart';

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
  bool isTitleOverImage = false;
  late String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                context.router.push(ImageCreatePresentationRoute());
              },
            ),
            title: Text(LocaleKeys.addSlide.tr())),
        body: Row(children: [
          if (Responsive.isMobile(context) == false) ...[
            Expanded(
              flex: 3,
              child: imageBytes != null
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.memory(imageBytes!),
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
                                            title,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        )),
                                  ),
                                ],
                              ))
                      ],
                    )
                  : const SizedBox(),
            ),
            const SizedBox(
              width: 24,
            ),
          ],
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(LocaleKeys.slideNameAndDescription.tr()),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: NameAndDescriptionWidget(
                        titleController: widget.titleController,
                        descriptionController: widget.descriptionController,
                        initialName: widget.titleController.text,
                        initialDescription: widget.descriptionController.text,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CheckboxListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          tileColor: DynamicPalette.light().accent,
                          title: Text(
                            LocaleKeys.titleOverImage.tr(),
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
                    if (Responsive.isMobile(context) && imageBytes != null) ...[
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.memory(imageBytes!),
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
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                title,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CommonElevatedButton(
                          text: imageBytes == null
                              ? LocaleKeys.addImage.tr()
                              : LocaleKeys.changeImage.tr(),
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
                    if (imageBytes != null)
                      if (audioBytes == null)
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 12,
                          ),
                          child: Text(LocaleKeys.noAudio.tr()),
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
                    // const SizedBox(
                    //   height: 12,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 12.0),
                    //   child: CommonElevatedButton(
                    //       text: 'Записать аудио',
                    //       onPressed: () async {
                    //         final result = await _showRecorder(context,
                    //             imageData: imageBytes!);
                    //         if (result != null && context.mounted) {
                    //           setState(() {
                    //             audioBytes = result.audioBytes;
                    //             audioPath = result.path;
                    //             duration = result.duration;
                    //           });
                    //         }
                    //       }),
                    // ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: CommonElevatedButton(
                          text: LocaleKeys.addAudioFromFile.tr(),
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
                              final extension = result.files.first.extension;

                              if (extension?.toLowerCase() != 'm4a' &&
                                  extension?.toLowerCase() != 'aac' &&
                                  extension?.toLowerCase() != 'mp3' &&
                                  extension?.toLowerCase() != 'm4b' &&
                                  extension?.toLowerCase() != 'm4p' &&
                                  extension?.toLowerCase() != 'wav' &&
                                  extension?.toLowerCase() != 'mp4') return;
                              final fileBytes = result.files.first.bytes;

                              // Преобразование Uint8List в Blob
                              final blob = html.Blob(
                                [fileBytes],
                              );

                              // Преобразование Blob в data URL
                              final dataUrl =
                                  html.Url.createObjectUrlFromBlob(blob);

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

                    const SizedBox(
                      height: 12,
                    ),

                    Padding(
                        padding: const EdgeInsets.only(right: 12.0, bottom: 64),
                        child: CommonElevatedButton(
                            text: LocaleKeys.buttonAdd.tr(),
                            onPressed: () {
                              if (widget.titleController.text.isNotEmpty) {
                                context.router.pop(ImageFragment(
                                    // Потом это значение в блоке пересчитывается
                                    isLandscape: false,
                                    imageBytes: imageBytes,
                                    title: widget.titleController.text,
                                    audioBytes: audioBytes,
                                    audioPath: audioPath,
                                    duration: duration,
                                    description:
                                        widget.descriptionController.text,
                                    isTitleOverImage: isTitleOverImage));
                              } else {
                                CommonFunctions.showMessage(
                                    context,
                                    LocaleKeys.slideTitleEmpty.tr(),
                                    Reason.error);
                              }
                            })),
                    const SizedBox(
                      width: 24,
                    )
                  ],
                ),
              ),
            ),
          )
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
