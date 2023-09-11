import 'dart:async';
import 'dart:io';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/images_list.dart';

import '../../../domain/di/di.dart';
import 'bloc/recording_bloc.dart';
import '../../player/player_widget.dart';
import '../widgets/add_category_form.dart';
import '../widgets/category_list.dart';

@RoutePage()
class RecordingScreen extends StatefulWidget {
  const RecordingScreen({Key? key}) : super(key: key);

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  Image? image;
  File? audio;
  String? imagePath;
  Map<String, int> imagesMap = {};
  String? recordPath;
  double? imageHeight;
  double? imagewidth;
  FilePickerResult? file;

  RecordingBloc? _bloc;

  final player = AudioPlayer();
  Timer? timer;

  String? recordDuration;
  int? recordDurationInSeconds;
  bool isPending = false;
  PlayerStatus? playerStatus;
  double? progress; // 0-1
  int secondsPassed = 0;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  ScrollController secondScrollController = ScrollController();

  @override
  void dispose() {
    player.stop();
    player.dispose();
    timer?.cancel();
    titleController.dispose();
    descriptionController.dispose();
    _bloc?.close();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _bloc = Di.of(context).builRecordingBloc();

    super.didChangeDependencies();
  }

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc!,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    const Text('Новая запись'),
                    const Divider(),
                    TextFormField(
                      controller: titleController,
                      decoration:
                          const InputDecoration(hintText: 'Название записи'),
                    ),
                    TextFormField(
                      controller: descriptionController,
                      maxLines: null,
                      decoration:
                          const InputDecoration(hintText: 'Описание записи'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Категории'),
                    const Divider(),
                    BlocConsumer<RecordingBloc, RecordingState>(
                      listener: (context, state) => () {},
                      buildWhen: (context, state) => state.map(
                        pending: (_) => true,
                        dataReceived: (_) => true,
                      ),
                      builder: (context, state) => state.map(
                          pending: (_) => const CircularProgressIndicator(),
                          dataReceived: (state) => CategoryList(
                                categories: state.categoties,
                                selectedCategories: state.selectedCategoties,
                                selectCategory: (category) =>
                                    BlocProvider.of<RecordingBloc>(context).add(
                                        RecordingEvent.selectCategory(
                                            category)),
                              )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () async {
                            Map<String, String>? map =
                                await showDialog<Map<String, String>>(
                                    context: context,
                                    builder: (context) =>
                                        const Dialog(child: AddCategoryForm()));
                            String? categoryName = map?['name'];

                            if (map != null) {
                              _bloc!.add(
                                  RecordingEvent.addCategory(categoryName!));
                            }
                          },
                          child: const Text('Добавить категорию')),
                    ),
                  ],
                ),
              ),
              const VerticalDivider(),
              SizedBox(
                width: 550,
                child: SingleChildScrollView(
                  controller: secondScrollController,
                  child: Column(
                    children: [
                      ImagesList(
                        imagesMap: imagesMap,
                        onDelete: (mapEntry) {
                          setState(() {
                            imagesMap.remove(mapEntry.key);
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: ElevatedButton(
                                onPressed: () async {
                                  file = await FilePicker.platform.pickFiles(
                                    type: FileType.custom,
                                    allowedExtensions: [
                                      'jpg',
                                      'jpeg',
                                      'svg',
                                      'png'
                                    ],
                                  );
                                  if (file != null) {
                                    var decodedImage =
                                        await decodeImageFromList(
                                            File(file!.paths.first!)
                                                .readAsBytesSync());
                                    imagePath = file!.paths.first!;

                                    setState(() {
                                      image =
                                          Image.file(File(file!.paths.first!));
                                      imageHeight =
                                          decodedImage.height.toDouble();
                                      imagewidth =
                                          decodedImage.width.toDouble();
                                    });
                                  }
                                },
                                child: const Text('Выбрать изображение'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        child: Stack(children: [
                          image != null
                              ? Column(
                                  children: [
                                    ConstrainedBox(
                                        constraints: const BoxConstraints(
                                            maxWidth: 530, maxHeight: 530),
                                        child: image),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Показ на секунде: '),
                                        SizedBox(
                                            width: 80,
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: controller,
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              if (controller.text.trim() !=
                                                  '') {
                                                setState(() {
                                                  imagesMap[imagePath!] =
                                                      int.parse(
                                                          controller.text);
                                                  image = null;
                                                  controller.text = '';
                                                });
                                              }
                                            },
                                            child: Text('Добавить'))
                                      ],
                                    )
                                  ],
                                )
                              : const SizedBox(),
                          image != null
                              ? Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    color: Colors.white,
                                    child: IconButton(
                                        color: Colors.red,
                                        onPressed: () {
                                          setState(() {
                                            image = null;
                                            imagewidth = null;
                                            imageHeight = null;
                                            file = null;
                                          });
                                        },
                                        icon: const Icon(Icons.close)),
                                  ))
                              : const SizedBox()
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                                onPressed: () async {
                                  file = await FilePicker.platform.pickFiles(
                                    type: FileType.custom,
                                    allowedExtensions: ['mp3', 'm4a', 'wav'],
                                  );
                                  if (file != null) {
                                    recordPath = file!.paths.first!;
                                    setState(() {
                                      playerStatus = PlayerStatus.stop;
                                      audio = File(file!.paths.first!);
                                      secondsPassed = 0;
                                      progress = 0;
                                    });
                                    await player.stop();
                                    if (timer != null) timer!.cancel();
                                    await player
                                        .setSourceDeviceFile(audio!.path);
                                    player.onDurationChanged
                                        .listen((Duration d) {
                                      recordDurationInSeconds = d.inSeconds;

                                      setState(() {
                                        recordDurationInSeconds = d.inSeconds;
                                        recordDuration =
                                            '${d.inMinutes}:${d.inSeconds % 60}';
                                      });
                                    });

                                    await player.play(
                                        DeviceFileSource(audio!.path),
                                        volume: 0);
                                    await Future<void>.delayed(
                                        const Duration(milliseconds: 1000));

                                    await player.stop();
                                  }
                                },
                                child: Text(audio == null
                                    ? 'Добавить аудио'
                                    : 'Изменить аудио')),
                          ),
                        ],
                      ),
                      audio != null
                          ? Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(children: [
                                Text(audio!.path.split('\\').last),
                                const SizedBox(height: 20),
                                SizedBox(
                                  width: 260,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () async {
                                          if (playerStatus ==
                                                  PlayerStatus.stop ||
                                              playerStatus ==
                                                  PlayerStatus.pause) {
                                            timer = Timer.periodic(
                                                const Duration(seconds: 1),
                                                (timer) {
                                              setState(() {
                                                progress = secondsPassed /
                                                    recordDurationInSeconds!;
                                                if (secondsPassed <=
                                                    recordDurationInSeconds!) {
                                                  secondsPassed++;
                                                }
                                                playerStatus =
                                                    PlayerStatus.play;
                                              });
                                            });

                                            await player.play(
                                                DeviceFileSource(audio!.path),
                                                volume: 100);
                                            player.onDurationChanged
                                                .listen((Duration d) {
                                              setState(() {
                                                progress = d.inSeconds /
                                                    recordDurationInSeconds!;
                                              });
                                            });
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.play_circle,
                                          size: 36,
                                        ),
                                        color:
                                            playerStatus == PlayerStatus.stop ||
                                                    playerStatus ==
                                                        PlayerStatus.pause
                                                ? Colors.red
                                                : Colors.grey,
                                      ),
                                      IconButton(
                                        onPressed: () async {
                                          if (playerStatus ==
                                              PlayerStatus.play) {
                                            timer!.cancel();
                                            setState(() {
                                              playerStatus = PlayerStatus.pause;
                                            });
                                            await player.pause();
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.pause_circle,
                                          size: 36,
                                        ),
                                        color: playerStatus == PlayerStatus.play
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                      IconButton(
                                        onPressed: () async {
                                          if (playerStatus ==
                                              PlayerStatus.play) {
                                            if (timer != null) timer!.cancel();
                                            setState(() {
                                              playerStatus = PlayerStatus.stop;
                                              secondsPassed = 0;
                                              progress = 0;
                                            });
                                            await player.stop();
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.stop_circle,
                                          size: 36,
                                        ),
                                        color: playerStatus == PlayerStatus.play
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 260,
                                  child: ProgressBar(
                                    progress: Duration(seconds: secondsPassed),
                                    buffered:
                                        const Duration(milliseconds: 2000),
                                    total: Duration(
                                        seconds: recordDurationInSeconds ?? 0),
                                    onDragUpdate: (details) {
                                      setState(() {
                                        secondsPassed =
                                            details.timeStamp.inSeconds;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 260,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('$secondsPassed'),
                                      const Text('')
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                audio != null
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                if (titleController.text
                                                        .trim() ==
                                                    '') {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              'Необходимо заполнить поле названия')));
                                                  return;
                                                }
                                                if (recordPath == null) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              ' Необходимо добавить аудио')));
                                                  return;
                                                }
                                                _bloc!.add(RecordingEvent.saveRecord(
                                                    title: titleController.text,
                                                    description:
                                                        descriptionController
                                                            .text,
                                                    images: imagesMap,
                                                    audioPath: recordPath!,
                                                    recordDuration:
                                                        recordDurationInSeconds!));
                                                setState(() {
                                                  imagePath = null;
                                                  recordPath = null;
                                                  playerStatus = null;
                                                  progress = null;
                                                  image = null;
                                                  audio = null;
                                                  titleController.text = '';
                                                  descriptionController.text =
                                                      '';
                                                });
                                                context.router.pop();
                                              },
                                              child: const Text('Создать')),
                                        ],
                                      )
                                    : const SizedBox()
                              ]),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
