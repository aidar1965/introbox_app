import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../domain/models/fragment.dart';
import '../../../../domain/models/fragment_category.dart';

import '../../../../domain/models/subject.dart';
import '../../home_screen/bloc/home_bloc.dart';
import 'bloc/edit_subject_bloc.dart';
import '../../../player/player_widget.dart';

import '../../widgets/add_subject_category_form.dart';

@RoutePage()
class EditSubjectScreen extends StatefulWidget {
  const EditSubjectScreen({Key? key, required this.subject}) : super(key: key);

  final Subject subject;

  @override
  State<EditSubjectScreen> createState() => _EditSubjectScreenState();
}

class _EditSubjectScreenState extends State<EditSubjectScreen> {
  final player = AudioPlayer();

  final ScrollController secondListController = ScrollController();

  final ScrollController thirdListController = ScrollController();

  final TextEditingController titleController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.text = widget.subject.title;
    descriptionController.text = widget.subject.description ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Редактирование темы',
      )),
      body: BlocProvider(
        create: (context) => EditSubjectBloc(subject: widget.subject),
        child: BlocConsumer<EditSubjectBloc, EditSubjectState>(
          listener: (context, state) {
            state.mapOrNull(dataReceived: (state) async {
              if (state.playerStatus == PlayerStatus.play) {
                await player
                    .play(DeviceFileSource(state.playingFragment!.audioPath));
              }
            });
          },
          builder: (context, state) => state.map(
              pending: (_) => const Center(
                    child: Text('Новая запись'),
                  ),
              dataReceived: (state) => Row(
                    children: [
                      SizedBox(
                          width: 330,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 20),
                              const Text('Новая тема'),
                              const Divider(),
                              TextFormField(
                                controller: titleController,
                                decoration:
                                    const InputDecoration(hintText: 'Название'),
                              ),
                              TextFormField(
                                controller: descriptionController,
                                maxLines: null,
                                decoration:
                                    const InputDecoration(hintText: 'Описание'),
                              ),
                              const SizedBox(height: 20),
                              Flexible(
                                  child: ListView.builder(
                                      itemCount: state.subjectCategories.length,
                                      itemBuilder: (context, index) => CheckboxListTile(
                                          title: Text(state.subjectCategories
                                              .elementAt(index)
                                              .name),
                                          value: state.selectedSubjectCategories
                                              .contains(state.subjectCategories
                                                  .elementAt(index)),
                                          onChanged: (value) =>
                                              BlocProvider.of<EditSubjectBloc>(context).add(
                                                  EditSubjectEvent.selectSubjectCategory(
                                                      state.subjectCategories.elementAt(index)))))),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    var bloc = BlocProvider.of<EditSubjectBloc>(
                                        context);
                                    Map<String, dynamic>? response =
                                        await showDialog<Map<String, dynamic>>(
                                            context: context,
                                            builder: (context) => const Dialog(
                                                child:
                                                    AddSubjectCategoryForm()));
                                    if (response != null) {
                                      if (response['action'] == 'edit') {
                                        var categoryName =
                                            response['name'] as String?;
                                        if (categoryName != null &&
                                            categoryName.trim() != '') {
                                          bloc.add(EditSubjectEvent
                                              .addSubjectCategory(
                                                  categoryName));
                                        }
                                      } else {
                                        if (response['action'] == 'delete') {}
                                      }
                                    }
                                  },
                                  child: const Text('Добавить категорию')),
                              const SizedBox(
                                height: 20,
                              ),
                              state.subjectFragments.isNotEmpty
                                  ? Flexible(
                                      flex: 3,
                                      child: ReorderableListView.builder(
                                        itemCount:
                                            state.subjectFragments.length,
                                        itemBuilder: (context, index) {
                                          var record = state.subjectFragments
                                              .elementAt(index);

                                          return ListTile(
                                            key: ValueKey(record.id),
                                            leading: SizedBox(
                                              height: 50,
                                              width: 50,
                                              child: record.imagePath != ''
                                                  ? Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8,
                                                              bottom: 8),
                                                      child: Image.file(File(
                                                          record.imagePath
                                                              .replaceAll(
                                                                  '\\\\',
                                                                  '\\'))),
                                                    )
                                                  : null,
                                            ),
                                            title: GestureDetector(
                                              onTap: () =>
                                                  BlocProvider.of<HomeBloc>(
                                                          context)
                                                      .add(HomeEvent.openPlayer(
                                                          record: record)),
                                              child: MouseRegion(
                                                cursor:
                                                    SystemMouseCursors.click,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    record.duration % 60 > 9
                                                        ? Expanded(
                                                            child: Text(
                                                              '${index + 1}. ${record.title}  ${Duration(seconds: record.duration).inMinutes}:${record.duration % 60}',
                                                            ),
                                                          )
                                                        : Expanded(
                                                            child: Text(
                                                              '${index + 1}. ${record.title}  ${Duration(seconds: record.duration).inMinutes}:0${record.duration % 60}',
                                                            ),
                                                          ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 20),
                                                      child: IconButton(
                                                          onPressed: () => BlocProvider
                                                                  .of<EditSubjectBloc>(
                                                                      context)
                                                              .add(EditSubjectEvent
                                                                  .addFragment(
                                                                      record)),
                                                          icon: const Icon(
                                                            Icons.remove_circle,
                                                            color: Colors.red,
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        onReorder: (oldIndex, newIndex) {
                                          BlocProvider.of<EditSubjectBloc>(
                                                  context)
                                              .add(EditSubjectEvent.onReorder(
                                                  oldIndex, newIndex));
                                        },
                                      ),
                                    )
                                  : const Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (titleController.text.trim() == '') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    'Необходимо заполнить поле названия')));
                                        return;
                                      }

                                      BlocProvider.of<EditSubjectBloc>(context)
                                          .add(EditSubjectEvent.saveSubject(
                                        title: titleController.text,
                                        description: descriptionController.text,
                                      ));
                                    },
                                    child: const Text('Редактировать тему')),
                              )
                            ],
                          )),
                      const VerticalDivider(),
                      SizedBox(
                        width: 250,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('Категории'),
                            const Divider(),
                            _CategoryList(
                                categories: state.categories,
                                selectedCategories: state.selectedCategories),
                          ],
                        ),
                      ),
                      const VerticalDivider(),
                      SizedBox(
                          width: 370,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text('Записи'),
                              const Divider(
                                height: 20,
                              ),
                              state.records!.isNotEmpty
                                  ? Expanded(
                                      child: ListView.builder(
                                          controller: secondListController,
                                          itemCount: state.records!.length,
                                          itemBuilder: (context, index) {
                                            var record =
                                                state.records!.elementAt(index);
                                            return CheckboxListTile(
                                              dense: true,
                                              title: Row(
                                                children: [
                                                  SizedBox(
                                                    height: 50,
                                                    width: 50,
                                                    child: SizedBox(
                                                      height: 50,
                                                      width: 50,
                                                      child:
                                                          record.imagePath != ''
                                                              ? Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top: 8,
                                                                      bottom:
                                                                          8),
                                                                  child: Image.file(File(record
                                                                      .imagePath
                                                                      .replaceAll(
                                                                          '\\\\',
                                                                          '\\'))),
                                                                )
                                                              : null,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20),
                                                  Expanded(
                                                    child: Text(
                                                        '${record.title} ${DateFormat('dd.MM.yy').format(record.date)}'),
                                                  ),
                                                ],
                                              ),
                                              value: containsFragment(
                                                  state.subjectFragments,
                                                  record),
                                              onChanged: (value) {
                                                BlocProvider.of<
                                                            EditSubjectBloc>(
                                                        context)
                                                    .add(EditSubjectEvent
                                                        .addFragment(record));
                                              },
                                            );
                                          }),
                                    )
                                  : const Center(child: Text('Нет записей'))
                            ],
                          )),
                    ],
                  )),
        ),
      ),
    );
  }

  bool containsFragment(List<Fragment> records, Fragment record) {
    bool contains = false;
    for (var r in records) {
      if (r.id == record.id) {
        contains = true;
        break;
      }
    }
    return contains;
  }
}

class _CategoryList extends StatelessWidget {
  _CategoryList({
    Key? key,
    this.categories,
    this.selectedCategories,
  }) : super(key: key);

  final List<FragmentCategory>? categories;
  final List<FragmentCategory>? selectedCategories;
  final ScrollController firstListController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return categories != null
        ? SizedBox(
            //height: 60,
            child: ListView.builder(
              controller: firstListController,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: categories!.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 30,
                  child: CheckboxListTile(
                    title: Text(categories!.elementAt(index).name),
                    value: selectedCategories!
                        .contains(categories!.elementAt(index)),
                    onChanged: (value) {
                      BlocProvider.of<EditSubjectBloc>(context).add(
                          EditSubjectEvent.selectCategory(
                              categories!.elementAt(index)));
                    },
                  ),
                );
              },
            ),
          )
        : const SizedBox();
  }
}

class _AudioPlayerView extends StatefulWidget {
  const _AudioPlayerView(
      {Key? key,
      required this.playerStatus,
      required this.record,
      required this.player,
      this.secondsPassed})
      : super(key: key);
  final PlayerStatus playerStatus;
  final AudioPlayer player;
  final Fragment record;

  final int? secondsPassed;

  @override
  State<_AudioPlayerView> createState() => _AudioPlayerViewState();
}

double progress = 0;

class _AudioPlayerViewState extends State<_AudioPlayerView> {
  late String recordDuration;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Duration d = Duration(seconds: widget.record.duration);
    recordDuration = '${d.inMinutes}:${d.inSeconds % 60}';
    if (d.inSeconds % 60 < 10) {
      recordDuration = '${d.inMinutes}:0${d.inSeconds % 60}';
    }
    if (widget.playerStatus == PlayerStatus.stop) {
      widget.player.stop();
    }
    if (widget.secondsPassed != null) {
      progress = widget.secondsPassed! / widget.record.duration;
    } else {
      progress = 0;
    }
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 260,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () async {
                  if (widget.playerStatus == PlayerStatus.stop ||
                      widget.playerStatus == PlayerStatus.pause) {
                    BlocProvider.of<EditSubjectBloc>(context).add(
                        const EditSubjectEvent.setPlayerStatus(
                            PlayerStatus.play));
                    BlocProvider.of<EditSubjectBloc>(context)
                        .add(const EditSubjectEvent.startTimer());

                    await widget.player.play(
                        DeviceFileSource(widget.record.audioPath),
                        volume: 100);
                  }
                },
                icon: const Icon(
                  Icons.play_circle,
                  size: 36,
                ),
                color: widget.playerStatus == PlayerStatus.stop ||
                        widget.playerStatus == PlayerStatus.pause
                    ? Colors.red
                    : Colors.grey,
              ),
              IconButton(
                onPressed: () async {
                  if (widget.playerStatus == PlayerStatus.play) {
                    BlocProvider.of<EditSubjectBloc>(context).add(
                        const EditSubjectEvent.setPlayerStatus(
                            PlayerStatus.pause));
                    BlocProvider.of<EditSubjectBloc>(context)
                        .add(const EditSubjectEvent.stopTimer());

                    await widget.player.pause();
                  }
                },
                icon: const Icon(
                  Icons.pause_circle,
                  size: 36,
                ),
                color: widget.playerStatus == PlayerStatus.play
                    ? Colors.black
                    : Colors.grey,
              ),
              IconButton(
                onPressed: () async {
                  if (widget.playerStatus == PlayerStatus.play) {
                    BlocProvider.of<EditSubjectBloc>(context).add(
                        const EditSubjectEvent.setPlayerStatus(
                            PlayerStatus.stop));
                    BlocProvider.of<EditSubjectBloc>(context)
                        .add(const EditSubjectEvent.clearTimer());
                    await widget.player.stop();
                  }
                },
                icon: const Icon(
                  Icons.stop_circle,
                  size: 36,
                ),
                color: widget.playerStatus == PlayerStatus.play
                    ? Colors.red
                    : Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          LinearProgressIndicator(value: progress),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text(''), Text(recordDuration)],
          )
        ]),
      ),
    );
  }
}
