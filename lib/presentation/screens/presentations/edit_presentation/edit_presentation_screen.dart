import 'dart:html' as html;
import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moki_tutor/presentation/common/common_elevated_button.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';

import '../../../../../domain/models/pdf_fragment.dart';
import '../../../../../domain/models/presentation.dart';

import '../../../auto_router/app_router.dart';
import '../../../common/common_loading_error_widget.dart';
import '../../../values/palette.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
import '../audio_recording/audio_recording_screen.dart';
import 'bloc/edit_presentation_bloc.dart';

@RoutePage()
class EditPresentationScreen extends StatelessWidget {
  const EditPresentationScreen({Key? key, required this.presentation})
      : super(key: key);

  final Presentation presentation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Редактирование темы'),
        ),
        body: BlocProvider(
          create: (context) => EditPresentationBloc(presentation),
          child: BlocConsumer<EditPresentationBloc, EditPresentationState>(
              listener: (context, state) => state.mapOrNull(
                  requestError: (state) =>
                      _showMessage(context, state.errorText),
                  requestSuccess: (_) => CommonFunctions.showMessage(
                      context, 'Двнные обновлены', Reason.neutral),
                  loadingError: (_) => CommonLoadingErrorWidget(
                        onPressed: () =>
                            BlocProvider.of<EditPresentationBloc>(context).add(
                                const EditPresentationEvent
                                    .initialDataRequested()),
                      )),
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
                        presentationUpdatePending:
                            state.presentationUpdatePending,
                        fragmentUpdatePending: state.fragmentUpdatePending,
                        fragmentDeletePending: state.deleteFragmentPending,
                        presentationId: presentation.id,
                        isAudio: presentation.isAudio,
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
      required this.presentationUpdatePending,
      required this.fragmentUpdatePending,
      required this.fragmentDeletePending,
      required this.presentationId,
      required this.isAudio});

  final List<PdfFragment> fragments;
  final PdfFragment selectedFragment;
  final String? title;
  final String? description;
  final bool presentationUpdatePending;
  final bool fragmentUpdatePending;
  final bool fragmentDeletePending;
  final String presentationId;
  final bool isAudio;

  final TextEditingController selectedFragmentTitleController =
      TextEditingController();
  final TextEditingController selectedFragmentDescriptionController =
      TextEditingController();

  final TextEditingController presentationTitleController =
      TextEditingController();
  final TextEditingController presentationDescriptionController =
      TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    selectedFragmentTitleController.text = selectedFragment.title;
    selectedFragmentDescriptionController.text =
        selectedFragment.description ?? '';
    presentationTitleController.text = title ?? '';
    presentationDescriptionController.text = description ?? '';

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
                      child:
                          selectedFragment.imagePath?.contains('http') ?? false
                              ? CachedNetworkImage(
                                  imageUrl: selectedFragment.imagePath!,
                                  fit: BoxFit.cover,
                                )
                              : Image.memory(selectedFragment.imageBytes!,
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
                      Text(
                        'Изменение названия и описания презентации',
                        style: context.style14w600$title4,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0, top: 12),
                        child: NameAndDescriptionWidget(
                          titleController: presentationTitleController,
                          descriptionController:
                              presentationDescriptionController,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CommonElevatedButton(
                          isPending: presentationUpdatePending,
                          text: 'Сохранить',
                          onPressed: () =>
                              BlocProvider.of<EditPresentationBloc>(context)
                                  .add(EditPresentationEvent.updatePresentation(
                                      title: presentationTitleController.text,
                                      description:
                                          presentationDescriptionController
                                              .text)),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Divider(),
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
                                if (context.mounted) {
                                  BlocProvider.of<EditPresentationBloc>(context)
                                      .add(EditPresentationEvent
                                          .reorderFragments(
                                              ids: result as List<String>));
                                }
                              }
                            }),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 12,
                      ),
                      Text('Редактирование слайда'),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: NameAndDescriptionWidget(
                          titleController: selectedFragmentTitleController,
                          descriptionController:
                              selectedFragmentDescriptionController,
                        ),
                      ),
                      if (isAudio) ...[
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
                                  BlocProvider.of<EditPresentationBloc>(context)
                                      .add(EditPresentationEvent.deleteAudio(
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
                                final result = await showDialog(
                                    context: context,
                                    builder: (context) => Dialog.fullscreen(
                                        child: AudioRecordingScreen(
                                            imageData:
                                                selectedFragment.imageBytes)));
                                if (result != null && context.mounted) {
                                  BlocProvider.of<EditPresentationBloc>(context)
                                      .add(EditPresentationEvent.audioAdded(
                                          fragment: selectedFragment,
                                          audioPath: result.path!,
                                          audioBytes: result.audioBytes!,
                                          duration: result.duration!));
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
                                  print(result.files.first.name);

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
                                    BlocProvider.of<EditPresentationBloc>(
                                            context)
                                        .add(EditPresentationEvent.audioAdded(
                                            fragment: selectedFragment,
                                            audioBytes: fileBytes!,
                                            audioPath: dataUrl,
                                            duration: durationInSeconds));
                                  }
                                }
                              }),
                        )
                      ],
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
                                final imageBytes = result.files.first.bytes;

                                if (context.mounted) {
                                  BlocProvider.of<EditPresentationBloc>(context)
                                      .add(EditPresentationEvent.imageAdded(
                                    fragment: selectedFragment,
                                    imageBytes: imageBytes!,
                                  ));
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
                            isPending: fragmentUpdatePending,
                            text: 'Сохранить',
                            onPressed: () {
                              BlocProvider.of<EditPresentationBloc>(context)
                                  .add(EditPresentationEvent.updateFragment(
                                      title:
                                          selectedFragmentTitleController.text,
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
                                      BlocProvider.of<EditPresentationBloc>(
                                              context)
                                          .add(const EditPresentationEvent
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
                      displayOrder: index == 0
                          ? 0
                          : fragments.elementAt(index - 1).displayOrder,
                      presentationId: presentationId,
                      isAudio: isAudio,
                    ),
                itemCount: fragments.length + 2),
          ),
        )
      ],
    );
  }

  Future<({Uint8List? audioBytes, String? path, int? duration})?>?
      _showRecorder(BuildContext context, {required String imagePath}) async {
    final result = await showDialog(
        context: context,
        builder: (context) => Dialog.fullscreen(
            child: AudioRecordingScreen(imagePath: imagePath)));
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

class _FragmentCard extends StatelessWidget {
  const _FragmentCard({super.key, required this.fragment});

  final PdfFragment fragment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () => BlocProvider.of<EditPresentationBloc>(context).add(
                EditPresentationEvent.fragmentSelected(fragment: fragment)),
            child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SizedBox(
                    width: 355,
                    child: fragment.imagePath?.contains('http') ?? false
                        ? CachedNetworkImage(
                            progressIndicatorBuilder: (context, _, __) =>
                                const Center(
                                    child: CircularProgressIndicator()),
                            imageUrl: fragment.imagePath!)
                        : Image.memory(fragment.imageBytes!)))),
      ],
    );
  }
}

class AddFragmentButtons extends StatelessWidget {
  const AddFragmentButtons({
    super.key,
    required this.displayOrder,
    required this.presentationId,
    required this.isAudio,
  });

  final int displayOrder;
  final String presentationId;
  final bool isAudio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          IconButton(
            onPressed: () async {
              final result = await context.router.push(
                  PresentationAddFragmentRoute(
                      displayOder: displayOrder,
                      presentationId: presentationId,
                      isAudio: isAudio));
              if (result != null && result == true) {
                if (context.mounted) {
                  BlocProvider.of<EditPresentationBloc>(context)
                      .add(const EditPresentationEvent.initialDataRequested());
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
