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

import '../../../../../domain/models/pdf_fragment.dart';

import '../../../auto_router/app_router.dart';
import '../../../common/common_loading_error_widget.dart';
import '../../../utils/responsive.dart';
import '../../../values/dynamic_palette.dart';
import '../../../values/palette.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/name_and_description.dart';
//import '../audio_recording/audio_recording_screen.dart';
import 'bloc/edit_presentation_bloc.dart';

@RoutePage()
class EditPresentationScreen extends StatelessWidget {
  const EditPresentationScreen({Key? key, @pathParam required this.id})
      : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Редактирование темы'),
          leading: IconButton(
              onPressed: () => context.router.replace(PresentationsRoute()),
              icon: const Icon(Icons.arrow_back)),
        ),
        body: BlocProvider(
          create: (context) => EditPresentationBloc(id),
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
                        presentationId: id,
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

class _ScreenView extends StatefulWidget {
  _ScreenView({
    super.key,
    required this.fragments,
    required this.selectedFragment,
    this.title,
    this.description,
    required this.presentationUpdatePending,
    required this.fragmentUpdatePending,
    required this.fragmentDeletePending,
    required this.presentationId,
  });

  final List<PdfFragment> fragments;
  final PdfFragment selectedFragment;
  final String? title;
  final String? description;
  final bool presentationUpdatePending;
  final bool fragmentUpdatePending;
  final bool fragmentDeletePending;
  final String presentationId;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  final TextEditingController selectedFragmentTitleController =
      TextEditingController();

  final TextEditingController selectedFragmentDescriptionController =
      TextEditingController();

  final TextEditingController presentationTitleController =
      TextEditingController();

  final TextEditingController presentationDescriptionController =
      TextEditingController();

  final ScrollController scrollController = ScrollController();

  late bool isTitleOverImage;

  @override
  void initState() {
    super.initState();
    isTitleOverImage = widget.selectedFragment.isTitleOverImage;
  }

  @override
  void didUpdateWidget(_ScreenView oldWidget) {
    super.didUpdateWidget(oldWidget);
    isTitleOverImage = widget.selectedFragment.isTitleOverImage;
  }

  @override
  Widget build(BuildContext context) {
    selectedFragmentTitleController.text = widget.selectedFragment.title;
    selectedFragmentDescriptionController.text =
        widget.selectedFragment.description ?? '';
    presentationTitleController.text = widget.title ?? '';
    presentationDescriptionController.text = widget.description ?? '';
    if (Responsive.isMobile(context) == false) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 260,
                  child: widget.selectedFragment.imagePath?.contains('http') ??
                          false
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            CachedNetworkImage(
                              imageUrl: widget.selectedFragment.imagePath!,
                              fit: BoxFit.cover,
                            ),
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
                                                widget.selectedFragment.title,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ))
                          ],
                        )
                      : Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.memory(widget.selectedFragment.imageBytes!,
                                fit: BoxFit.cover),
                            if (widget.selectedFragment.isTitleOverImage)
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
                                                widget.selectedFragment.title,
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
              ),
              SizedBox(
                width: 360,
                height: MediaQuery.of(context).size.height - 260,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12, left: 24, right: 24, bottom: 24),
                  child: RawScrollbar(
                    thumbColor: Palette.hint,
                    thumbVisibility: true,
                    radius: const Radius.circular(4),
                    thickness: 8,
                    controller: scrollController,
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 12),
                          child: NameAndDescriptionWidget(
                            titleController: presentationTitleController,
                            descriptionController:
                                presentationDescriptionController,
                            titleLabelName: 'Название презентации',
                            descriptionLabelName: 'Описание презентации',
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: CommonElevatedButton(
                            isPending: widget.presentationUpdatePending,
                            text: 'Сохранить',
                            onPressed: () => BlocProvider.of<
                                    EditPresentationBloc>(context)
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
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: CommonElevatedButton(
                              text: 'Изменить порядок',
                              onPressed: () async {
                                final result = await context.router.push(
                                    FragmentsReorderRoute(
                                        fragments: widget.fragments));
                                if (result != null) {
                                  if (context.mounted) {
                                    BlocProvider.of<EditPresentationBloc>(
                                            context)
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
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: CheckboxListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              tileColor: DynamicPalette.light().accent,
                              title: Text(
                                'Название слайда поверх изображения',
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
                          child: NameAndDescriptionWidget(
                            titleController: selectedFragmentTitleController,
                            descriptionController:
                                selectedFragmentDescriptionController,
                            titleLabelName: 'Название слайда',
                            descriptionLabelName: 'Описание слайда',
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        if (widget.selectedFragment.audioPath == null)
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
                              urlSource: widget.selectedFragment.audioPath!,
                              duration: widget.selectedFragment.duration!,
                              onDelete: () =>
                                  BlocProvider.of<EditPresentationBloc>(context)
                                      .add(EditPresentationEvent.deleteAudio(
                                          fragment: widget.selectedFragment)),
                            ),
                          ),
                        // const SizedBox(
                        //   height: 12,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 12.0),
                        //   child: CommonElevatedButton(
                        //       text: 'Записать аудио',
                        //       onPressed: () async {
                        //         final result = await showDialog(
                        //             context: context,
                        //             builder: (context) => Dialog.fullscreen(
                        //                     child: AudioRecordingScreen(
                        //                   imageData: widget
                        //                       .selectedFragment.imageBytes,
                        //                   imagePath:
                        //                       widget.selectedFragment.imagePath,
                        //                 )));
                        //         if (result != null && context.mounted) {
                        //           BlocProvider.of<EditPresentationBloc>(context)
                        //               .add(EditPresentationEvent.audioAdded(
                        //                   fragment: widget.selectedFragment,
                        //                   extension: 'mp3',
                        //                   audioPath: result.path!,
                        //                   audioBytes: result.audioBytes!,
                        //                   duration: result.duration!));
                        //         }
                        //       }),
                        // ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: CommonElevatedButton(
                              text: 'Добавить аудио',
                              onPressed: () async {
                                final result =
                                    await FilePicker.platform.pickFiles(
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
                                  final fileBytes = result.files.first.bytes;

                                  final extension =
                                      result.files.first.extension;

                                  if (extension?.toLowerCase() != 'm4a' &&
                                      extension?.toLowerCase() != 'aac' &&
                                      extension?.toLowerCase() != 'mp3' &&
                                      extension?.toLowerCase() != 'm4b' &&
                                      extension?.toLowerCase() != 'm4p' &&
                                      extension?.toLowerCase() != 'wav' &&
                                      extension?.toLowerCase() != 'mp4') return;

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
                                    BlocProvider.of<EditPresentationBloc>(
                                            context)
                                        .add(EditPresentationEvent.audioAdded(
                                            fragment: widget.selectedFragment,
                                            extension: extension!,
                                            audioBytes: fileBytes!,
                                            audioPath: dataUrl,
                                            duration: durationInSeconds));
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
                                  final imageBytes = result.files.first.bytes;

                                  if (context.mounted) {
                                    BlocProvider.of<EditPresentationBloc>(
                                            context)
                                        .add(EditPresentationEvent.imageAdded(
                                      fragment: widget.selectedFragment,
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
                              isPending: widget.fragmentUpdatePending,
                              text: 'Сохранить',
                              onPressed: () {
                                BlocProvider.of<EditPresentationBloc>(context)
                                    .add(EditPresentationEvent.updateFragment(
                                        title: selectedFragmentTitleController
                                            .text,
                                        description:
                                            selectedFragmentDescriptionController
                                                .text,
                                        isTitleOverImage: isTitleOverImage));
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
                    if (index > 0 && index < widget.fragments.length + 1) {
                      return _FragmentCard(
                          fragment: widget.fragments.elementAt(index - 1));
                    } else {
                      return const SizedBox();
                    }
                  },
                  separatorBuilder: (context, index) => AddFragmentButtons(
                        displayOrder: index,
                        presentationId: widget.presentationId,
                        fragmentsIds:
                            widget.fragments.map((e) => e.id).toList(),
                      ),
                  itemCount: widget.fragments.length + 2),
            ),
          )
        ],
      );
    } else {
      return const Center(
        child: Text('Мобильная версия в разработке))'),
      );
    }
  }

  // Future<({Uint8List? audioBytes, String? path, int? duration})?>?
  //     _showRecorder(BuildContext context, {required String imagePath}) async {
  //   final result = await showDialog(
  //       context: context,
  //       builder: (context) => Dialog.fullscreen(
  //           child: AudioRecordingScreen(imagePath: imagePath)));

  //   return result as ({Uint8List? audioBytes, String path, int duration})?;
  // }

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
  const AddFragmentButtons(
      {super.key,
      required this.displayOrder,
      required this.presentationId,
      required this.fragmentsIds});

  final int displayOrder;
  final String presentationId;
  final List<String> fragmentsIds;

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
                      fragmentsIds: fragmentsIds));
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
