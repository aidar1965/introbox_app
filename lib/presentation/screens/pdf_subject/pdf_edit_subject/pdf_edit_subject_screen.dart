import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/domain/models/subject.dart';
import 'package:moki_tutor/presentation/common/common_elevated_button.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';

import '../../../../domain/models/pdf_fragment.dart';
import '../../../auto_router/app_router.dart';
import '../../../values/palette.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
import 'bloc/pdf_edit_subject_bloc.dart';

@RoutePage()
class PdfEditSubjectScreen extends StatelessWidget {
  const PdfEditSubjectScreen({Key? key, required this.subject})
      : super(key: key);

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Редактирование темы'),
        ),
        body: BlocProvider(
          create: (context) => PdfEditSubjectBloc(subject),
          child: BlocConsumer<PdfEditSubjectBloc, PdfEditSubjectState>(
              listener: (context, state) => state.mapOrNull(
                  requestError: (state) =>
                      _showMessage(context, state.errorText)),
              buildWhen: (previous, current) => current.maybeMap(
                  orElse: () => false,
                  pending: (current) => true,
                  screenState: (current) => true),
              builder: (context, state) => state.maybeMap(
                  orElse: () =>
                      throw UnsupportedError('state not support building'),
                  pending: (_) => const _PendingView(),
                  screenState: (state) => _ScreenView(
                        title: state.title,
                        description: state.description,
                        fragments: state.fragments,
                        selectedFragment: state.selectedFragment!,
                        subjectUpdatePending: state.subjectUpdatePending,
                        fragmentUpdatePending: state.fragmentUpdatePending,
                        fragmentDeletePending: state.deleteFragmentPending,
                        subjectId: subject.id,
                      ))),
        ));
  }

  void _showMessage(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(context,
        errorText ?? 'При выполнении запроса произошла ошибка', Reason.error);
  }
}

class _PendingView extends StatelessWidget {
  const _PendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _ScreenView extends StatelessWidget {
  _ScreenView(
      {super.key,
      required this.fragments,
      required this.selectedFragment,
      this.title,
      this.description,
      required this.subjectUpdatePending,
      required this.fragmentUpdatePending,
      required this.fragmentDeletePending,
      required this.subjectId});

  final List<PdfFragment> fragments;
  final PdfFragment selectedFragment;
  final String? title;
  final String? description;
  final bool subjectUpdatePending;
  final bool fragmentUpdatePending;
  final bool fragmentDeletePending;
  final int subjectId;

  final TextEditingController selectedFragmentTitleController =
      TextEditingController();
  final TextEditingController selectedFragmentDescriptionController =
      TextEditingController();

  final TextEditingController subjectTitleController = TextEditingController();
  final TextEditingController subjectDescriptionController =
      TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    selectedFragmentTitleController.text = selectedFragment.title;
    selectedFragmentDescriptionController.text =
        selectedFragment.description ?? '';
    subjectTitleController.text = title ?? '';
    subjectDescriptionController.text = description ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height - 260,
                      child: selectedFragment.imagePath!.contains('http')
                          ? CachedNetworkImage(
                              imageUrl: selectedFragment.imagePath!,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              File(
                                selectedFragment.imagePath!,
                              ),
                              fit: BoxFit.cover)),
                ],
              ),
            ),
            SizedBox(
              width: 360,
              height: MediaQuery.of(context).size.height - 260,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: RawScrollbar(
                  thumbColor: Palette.hint,
                  thumbVisibility: true,
                  radius: const Radius.circular(4),
                  thickness: 8,
                  controller: scrollController,
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Text('Назввание и описание темы'),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: NameAndDescriptionWidget(
                          titleController: subjectTitleController,
                          descriptionController: subjectDescriptionController,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                          isPending: subjectUpdatePending,
                          text: 'Сохранить',
                          onPressed: () =>
                              BlocProvider.of<PdfEditSubjectBloc>(context).add(
                                  PdfEditSubjectEvent.updateSubject(
                                      title: subjectTitleController.text,
                                      description:
                                          subjectDescriptionController.text)),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                            text: 'Изменить порядок',
                            onPressed: () async {
                              final result = await context.router.push(
                                  FragmentsReorderRoute(fragments: fragments));
                              if (result != null) {
                                BlocProvider.of<PdfEditSubjectBloc>(context)
                                    .add(PdfEditSubjectEvent.reorderFragments(
                                        ids: result as List<int>));
                              }
                            }),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text('Назввание и описание слайда'),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: NameAndDescriptionWidget(
                          titleController: selectedFragmentTitleController,
                          descriptionController:
                              selectedFragmentDescriptionController,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      if (selectedFragment.audioPath == null)
                        const Padding(
                          padding: EdgeInsets.only(
                            bottom: 12,
                          ),
                          child: Text('Аудио отсутствует'),
                        )
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: AudioPlayerWidget(
                            urlSource: selectedFragment.audioPath!,
                            duration: selectedFragment.duration!,
                            onDelete: () =>
                                BlocProvider.of<PdfEditSubjectBloc>(context)
                                    .add(PdfEditSubjectEvent.deleteAudio(
                                        fragment: selectedFragment)),
                          ),
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
                                  imagePath: selectedFragment.imagePath!);
                              if (result != null && context.mounted) {
                                BlocProvider.of<PdfEditSubjectBloc>(context)
                                    .add(PdfEditSubjectEvent.audioAdded(
                                        fragment: selectedFragment,
                                        title: selectedFragmentTitleController
                                            .text,
                                        description:
                                            selectedFragmentDescriptionController
                                                .text,
                                        path: result.path,
                                        duration: result.duration.toString()));
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
                                final audioPath = result.files.single.path!;

                                final durationInSeconds =
                                    await getDuration(audioPath);
                                if (context.mounted) {
                                  BlocProvider.of<PdfEditSubjectBloc>(context)
                                      .add(PdfEditSubjectEvent.audioAdded(
                                          fragment: selectedFragment,
                                          title: selectedFragmentTitleController
                                              .text,
                                          description:
                                              selectedFragmentDescriptionController
                                                  .text,
                                          path: audioPath,
                                          duration:
                                              durationInSeconds.toString()));
                                }
                              }
                            }),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                            text: 'Заменить изображение',
                            onPressed: () async {
                              final result =
                                  await FilePicker.platform.pickFiles(
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
                                  BlocProvider.of<PdfEditSubjectBloc>(context)
                                      .add(PdfEditSubjectEvent.imageAdded(
                                    title: selectedFragmentTitleController.text,
                                    description:
                                        selectedFragmentDescriptionController
                                            .text,
                                    fragment: selectedFragment,
                                    path: imagePath,
                                  ));
                                }
                              }
                            }),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      if (selectedFragment.audioPath?.contains('http') ==
                              false ||
                          selectedFragment.imagePath!.contains('http') == false)
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: CommonElevatedButton(
                              text: 'Сохранить',
                              onPressed: () {
                                BlocProvider.of<PdfEditSubjectBloc>(context)
                                    .add(PdfEditSubjectEvent.updateFragment(
                                        title: selectedFragmentTitleController
                                            .text,
                                        description:
                                            selectedFragmentDescriptionController
                                                .text));
                              }),
                        ),
                      const SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton.red(
                            text: 'Удалить слайд',
                            onPressed: () {
                              CommonFunctions.showStyledDialog(
                                  context: context,
                                  message:
                                      'Вы действительно хотите удалить слайд?',
                                  positiveButtonText: 'Удалить',
                                  negativeButtonText: 'Отмена',
                                  onPositiveTap: () =>
                                      BlocProvider.of<PdfEditSubjectBloc>(
                                              context)
                                          .add(const PdfEditSubjectEvent
                                              .deleteFragment()));
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 190,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            }),
            child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index > 0 && index < fragments.length + 1) {
                    return _FragmentCard(
                        fragment: fragments.elementAt(index - 1));
                  } else {
                    return const SizedBox();
                  }
                },
                separatorBuilder: (context, index) => AddFragmentButtons(
                      index: index - 1,
                      subjectId: subjectId,
                    ),
                itemCount: fragments.length + 2),
          ),
        )
      ],
    );
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

class _FragmentCard extends StatelessWidget {
  const _FragmentCard({super.key, required this.fragment});

  final PdfFragment fragment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () => BlocProvider.of<PdfEditSubjectBloc>(context)
                .add(PdfEditSubjectEvent.fragmentSelected(fragment: fragment)),
            child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SizedBox(
                    width: 355,
                    child: fragment.imagePath!.contains('http')
                        ? CachedNetworkImage(
                            progressIndicatorBuilder: (context, _, __) =>
                                const Center(
                                    child: CircularProgressIndicator()),
                            imageUrl: fragment.imagePath!)
                        : Image.file(File(fragment.imagePath!))))),
      ],
    );
  }
}

class AddFragmentButtons extends StatelessWidget {
  const AddFragmentButtons({
    super.key,
    required this.index,
    required this.subjectId,
  });

  final int index;
  final int subjectId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          IconButton(
            onPressed: () async {
              final result = await context.router.push(PdfAddFragmentRoute(
                  displayOder: index + 1, subjectId: subjectId));
              if (result != null && result == true) {
                if (context.mounted) {
                  BlocProvider.of<PdfEditSubjectBloc>(context)
                      .add(const PdfEditSubjectEvent.initialDataRequested());
                }
              }
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
