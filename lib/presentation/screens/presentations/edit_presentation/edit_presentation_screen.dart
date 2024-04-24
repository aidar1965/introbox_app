// import 'dart:html' as html;
import 'dart:io';

import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as p;

import 'package:introbox/presentation/common/common_elevated_button.dart';
import 'package:introbox/presentation/common/common_functions.dart';

import '../../../../../domain/models/pdf_fragment.dart';

import '../../../../domain/models/presentation_link.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../auto_router/app_router.dart';
import '../../../common/common_loading_error_widget.dart';
import '../../../utils/responsive.dart';
import '../../../values/dynamic_palette.dart';
import '../../../values/palette.dart';
import '../../../widgets/audio_player.dart';
import '../../../widgets/link_item.dart';
import '../../../widgets/name_and_description.dart';
//import '../audio_recording/audio_recording_screen.dart';
import '../audio_recording/audio_recording_screen.dart';
import 'bloc/edit_presentation_bloc.dart';

@RoutePage()
class EditPresentationScreen extends StatelessWidget {
  const EditPresentationScreen({Key? key, @pathParam required this.id})
      : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    final TextEditingController presentationTitleController =
        TextEditingController();

    final TextEditingController presentationDescriptionController =
        TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.editPresentation.tr()),
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
                  requestSuccess: (_) => CommonFunctions.showMessage(context,
                      LocaleKeys.commonSaveSuccess.tr(), Reason.neutral),
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
                        countFilesGenerated: state.countFileGenerated,
                        links: state.links,
                        presentationTitleController:
                            presentationTitleController,
                        presentationDescriptionController:
                            presentationDescriptionController,
                      ))),
        ));
  }

  void _showMessage(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(
        context, errorText ?? LocaleKeys.commonRequestError.tr(), Reason.error);
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
  const _ScreenView({
    super.key,
    required this.fragments,
    required this.selectedFragment,
    required this.presentationUpdatePending,
    required this.fragmentUpdatePending,
    required this.fragmentDeletePending,
    required this.presentationId,
    this.countFilesGenerated,
    required this.title,
    this.description,
    this.links,
    required this.presentationTitleController,
    required this.presentationDescriptionController,
  });

  final List<PdfFragment> fragments;
  final PdfFragment selectedFragment;

  final bool presentationUpdatePending;
  final bool fragmentUpdatePending;
  final bool fragmentDeletePending;
  final String presentationId;
  final int? countFilesGenerated;
  final String title;
  final String? description;
  final List<PresentationLink>? links;

  final TextEditingController presentationTitleController;

  final TextEditingController presentationDescriptionController;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  final TextEditingController selectedFragmentTitleController =
      TextEditingController();

  final TextEditingController selectedFragmentDescriptionController =
      TextEditingController();

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
    widget.presentationTitleController.text = widget.title;
    widget.presentationDescriptionController.text = widget.description ?? '';
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
                  child: widget.countFilesGenerated == null
                      ? widget.selectedFragment.imagePath != null
                          ? widget.selectedFragment.imagePath
                                      ?.contains('http') ??
                                  false
                              ? Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl:
                                          widget.selectedFragment.imagePath!,
                                      fit: BoxFit.cover,
                                    ),
                                    if (isTitleOverImage)
                                      Positioned(
                                          bottom: 20,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Opacity(
                                                opacity: 0.5,
                                                child: DecoratedBox(
                                                    decoration:
                                                        const BoxDecoration(
                                                            color:
                                                                Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16.0),
                                                      child: Text(
                                                        widget.selectedFragment
                                                            .title,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
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
                                    Image.memory(
                                        widget.selectedFragment.imageBytes!,
                                        fit: BoxFit.cover),
                                    if (widget
                                        .selectedFragment.isTitleOverImage)
                                      Positioned(
                                          bottom: 20,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Opacity(
                                                opacity: 0.5,
                                                child: DecoratedBox(
                                                    decoration:
                                                        const BoxDecoration(
                                                            color:
                                                                Colors.black),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              16.0),
                                                      child: Text(
                                                        widget.selectedFragment
                                                            .title,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ))
                                  ],
                                )
                          : widget.selectedFragment.imageBytes != null
                              ? Image.memory(
                                  widget.selectedFragment.imageBytes!)
                              : Center(
                                  child: Text(widget.selectedFragment.title))
                      : Center(
                          child: Text(
                              '${LocaleKeys.slidesGeneration.tr()}${widget.countFilesGenerated}')),
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 12.0, top: 12),
                            child: NameAndDescriptionWidget(
                              titleController:
                                  widget.presentationTitleController,
                              descriptionController:
                                  widget.presentationDescriptionController,
                              titleLabelName: LocaleKeys.presentationName.tr(),
                              descriptionLabelName:
                                  LocaleKeys.presentationDescription.tr(),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          if (widget.links?.isNotEmpty ?? false) ...[
                            Text(LocaleKeys.links.tr()),
                            ListView.separated(
                              itemBuilder: (context, index) => LinkItem(
                                link: widget.links!.elementAt(index),
                                index: index,
                                onDelete: (i) {
                                  BlocProvider.of<EditPresentationBloc>(context)
                                      .add(EditPresentationEvent.deleteLink(i));
                                },
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                height: 12,
                              ),
                              itemCount: widget.links!.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                            ),
                          ],
                          const SizedBox(
                            height: 12,
                          ),
                          CommonElevatedButton(
                              text: 'Add link',
                              onPressed: () async {
                                final result = await _showLinksDialog(context);
                                if (result is PresentationLink) {
                                  if (mounted) {
                                    BlocProvider.of<EditPresentationBloc>(
                                            context)
                                        .add(EditPresentationEvent.addLink(
                                            link: result));
                                  }
                                }
                              }),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: CommonElevatedButton(
                              isPending: widget.presentationUpdatePending,
                              text: LocaleKeys.buttonSave.tr(),
                              onPressed: () => BlocProvider.of<
                                      EditPresentationBloc>(context)
                                  .add(EditPresentationEvent.updatePresentation(
                                      title: widget
                                          .presentationTitleController.text,
                                      description: widget
                                          .presentationDescriptionController
                                          .text)),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: CommonElevatedButton(
                                text: LocaleKeys.buttonChangeOrder.tr(),
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
                            child: NameAndDescriptionWidget(
                              titleController: selectedFragmentTitleController,
                              descriptionController:
                                  selectedFragmentDescriptionController,
                              titleLabelName: LocaleKeys.slideName.tr(),
                              descriptionLabelName:
                                  LocaleKeys.slideDescription.tr(),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          if (widget.selectedFragment.audioPath == null)
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 12,
                              ),
                              child: Text(LocaleKeys.noAudio.tr()),
                            )
                          else
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: AudioPlayerWidget(
                                fileBites: widget.selectedFragment.audioBytes,
                                urlSource: widget.selectedFragment.audioPath!,
                                duration: widget.selectedFragment.duration!,
                                onDelete: () =>
                                    BlocProvider.of<EditPresentationBloc>(
                                            context)
                                        .add(EditPresentationEvent.deleteAudio(
                                            fragment: widget.selectedFragment)),
                              ),
                            ),
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: CommonElevatedButton(
                                text: LocaleKeys.buttonRecord.tr(),
                                onPressed: () async {
                                  final result = await showDialog(
                                      context: context,
                                      builder: (context) => Dialog.fullscreen(
                                              child: AudioRecordingScreen(
                                            imageData: widget
                                                .selectedFragment.imageBytes,
                                            imagePath: widget
                                                .selectedFragment.imagePath,
                                          )));
                                  if (result != null && context.mounted) {
                                    BlocProvider.of<EditPresentationBloc>(
                                            context)
                                        .add(EditPresentationEvent.audioAdded(
                                            fragment: widget.selectedFragment,
                                            extension: 'aac',
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
                                text: widget.selectedFragment.audioPath == null
                                    ? LocaleKeys.addAudio.tr()
                                    : LocaleKeys.changeAudio.tr(),
                                onPressed: () async {
                                  final result =
                                      await FilePicker.platform.pickFiles(
                                    type: FileType.custom,
                                    allowedExtensions: [
                                      'opus',
                                      'ogg',
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
                                    final extension =
                                        result.files.first.extension;

                                    if (extension?.toLowerCase() != 'm4a' &&
                                        extension?.toLowerCase() != 'ogg' &&
                                        extension?.toLowerCase() != 'opus' &&
                                        extension?.toLowerCase() != 'aac' &&
                                        extension?.toLowerCase() != 'mp3' &&
                                        extension?.toLowerCase() != 'm4b' &&
                                        extension?.toLowerCase() != 'm4p' &&
                                        extension?.toLowerCase() != 'mp4' &&
                                        extension?.toLowerCase() != 'wav')
                                      return;

                                    final file = result.files.first;

                                    final fileBytes =
                                        File(result.files.first.path!)
                                            .readAsBytesSync();

                                    final durationInSeconds =
                                        await getDuration(file.path);
                                    if (context.mounted) {
                                      BlocProvider.of<EditPresentationBloc>(
                                              context)
                                          .add(EditPresentationEvent.audioAdded(
                                              fragment: widget.selectedFragment,
                                              extension: extension!,
                                              audioBytes: fileBytes,
                                              audioPath: file.path!,
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
                                text: LocaleKeys.changeImage.tr(),
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
                                              extension: result
                                                  .files.first.extension));
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
                                  LocaleKeys.titleOverImage.tr(),
                                  style: TextStyle(
                                      color:
                                          DynamicPalette.light().alwaysWhite),
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
                                isPending: widget.fragmentUpdatePending,
                                text: LocaleKeys.buttonSave.tr(),
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
                                text: LocaleKeys.deleteSlide.tr(),
                                onPressed: () {
                                  CommonFunctions.showStyledDialog(
                                      context: context,
                                      message: LocaleKeys
                                          .deleteSlideConfirmationMessage
                                          .tr(),
                                      positiveButtonText:
                                          LocaleKeys.buttonDelete.tr(),
                                      negativeButtonText:
                                          LocaleKeys.buttonCancel.tr(),
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
                      return DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    widget.fragments.elementAt(index - 1).id ==
                                            widget.selectedFragment.id
                                        ? Colors.black
                                        : Colors.white)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '$index',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            _FragmentCard(
                                fragment:
                                    widget.fragments.elementAt(index - 1)),
                          ],
                        ),
                      );
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
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NameAndDescriptionWidget(
                titleController: widget.presentationTitleController,
                descriptionController: widget.presentationDescriptionController,
                titleLabelName: LocaleKeys.presentationName.tr(),
                descriptionLabelName: LocaleKeys.presentationDescription.tr(),
              ),
              const SizedBox(
                height: 12,
              ),
              CommonElevatedButton(
                isPending: widget.presentationUpdatePending,
                text: LocaleKeys.buttonSave.tr(),
                onPressed: () => BlocProvider.of<EditPresentationBloc>(context)
                    .add(EditPresentationEvent.updatePresentation(
                        title: widget.presentationTitleController.text,
                        description:
                            widget.presentationDescriptionController.text)),
              ),
              const SizedBox(
                height: 12,
              ),
              CommonElevatedButton(
                  text: LocaleKeys.buttonChangeOrder.tr(),
                  onPressed: () async {
                    final result = await context.router.push(
                        FragmentsReorderRoute(fragments: widget.fragments));
                    if (result != null) {
                      if (context.mounted) {
                        BlocProvider.of<EditPresentationBloc>(context).add(
                            EditPresentationEvent.reorderFragments(
                                ids: result as List<String>));
                      }
                    }
                  }),
              const SizedBox(
                height: 12,
              ),
              ListView.separated(
                  padding: const EdgeInsets.only(bottom: 64),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (index > 0 && index < widget.fragments.length + 1) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _VerticalFragmentCard(
                              fragment: widget.fragments.elementAt(index - 1)),
                          if (widget.fragments.elementAt(index - 1).id ==
                              widget.selectedFragment.id) ...[
                            const SizedBox(
                              height: 12,
                            ),
                            NameAndDescriptionWidget(
                              titleController: selectedFragmentTitleController,
                              descriptionController:
                                  selectedFragmentDescriptionController,
                              titleLabelName: LocaleKeys.slideName.tr(),
                              descriptionLabelName:
                                  LocaleKeys.slideDescription.tr(),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            if (widget.selectedFragment.audioPath == null)
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 12,
                                ),
                                child: Text(LocaleKeys.noAudio.tr()),
                              )
                            else
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: AudioPlayerWidget(
                                  urlSource: widget.selectedFragment.audioPath!,
                                  fileBites: widget.selectedFragment.audioBytes,
                                  duration: widget.selectedFragment.duration!,
                                  onDelete: () => BlocProvider.of<
                                          EditPresentationBloc>(context)
                                      .add(EditPresentationEvent.deleteAudio(
                                          fragment: widget.selectedFragment)),
                                ),
                              ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: CommonElevatedButton(
                                  text: LocaleKeys.buttonRecord.tr(),
                                  onPressed: () async {
                                    final result = await showDialog(
                                        context: context,
                                        builder: (context) => Dialog.fullscreen(
                                                child: AudioRecordingScreen(
                                              imageData: widget
                                                  .selectedFragment.imageBytes,
                                              imagePath: widget
                                                  .selectedFragment.imagePath,
                                            )));
                                    if (result != null && context.mounted) {
                                      BlocProvider.of<EditPresentationBloc>(
                                              context)
                                          .add(EditPresentationEvent.audioAdded(
                                              fragment: widget.selectedFragment,
                                              extension:
                                                  p.extension(result.path),
                                              audioPath: result.path!,
                                              audioBytes: result.audioBytes!,
                                              duration: result.duration!));
                                    }
                                  }),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            CommonElevatedButton(
                                text: widget.selectedFragment.audioPath == null
                                    ? LocaleKeys.addAudio.tr()
                                    : LocaleKeys.changeAudio.tr(),
                                onPressed: () async {
                                  final result =
                                      await FilePicker.platform.pickFiles(
                                    type: FileType.custom,
                                    allowedExtensions: [
                                      'opus',
                                      'ogg',
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
                                    final extension =
                                        result.files.first.extension;

                                    if (extension?.toLowerCase() != 'm4a' &&
                                        extension?.toLowerCase() != 'ogg' &&
                                        extension?.toLowerCase() != 'opus' &&
                                        extension?.toLowerCase() != 'aac' &&
                                        extension?.toLowerCase() != 'mp3' &&
                                        extension?.toLowerCase() != 'm4b' &&
                                        extension?.toLowerCase() != 'm4p' &&
                                        extension?.toLowerCase() != 'wav' &&
                                        extension?.toLowerCase() != 'mp4' &&
                                        extension?.toLowerCase() != 'wav') {
                                      return;
                                    }

                                    final fileBytes =
                                        File(result.files.single.path!)
                                            .readAsBytesSync();

                                    final durationInSeconds = await getDuration(
                                        result.files.single.path);
                                    if (context.mounted) {
                                      BlocProvider.of<EditPresentationBloc>(
                                              context)
                                          .add(EditPresentationEvent.audioAdded(
                                              fragment: widget.selectedFragment,
                                              extension: extension!,
                                              audioBytes: fileBytes,
                                              audioPath:
                                                  result.files.single.path!,
                                              duration: durationInSeconds));
                                    }
                                  }
                                }),
                            const SizedBox(
                              height: 12,
                            ),
                            CommonElevatedButton(
                                text: LocaleKeys.changeImage.tr(),
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
                                              extension: result
                                                  .files.first.extension));
                                    }
                                  }
                                }),
                            const SizedBox(
                              height: 12,
                            ),
                            CheckboxListTile(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                tileColor: DynamicPalette.light().accent,
                                title: Text(
                                  LocaleKeys.titleOverImage.tr(),
                                  style: TextStyle(
                                      color:
                                          DynamicPalette.light().alwaysWhite),
                                ),
                                value: isTitleOverImage,
                                onChanged: (v) {
                                  setState(() {
                                    isTitleOverImage = !isTitleOverImage;
                                  });
                                }),
                            const SizedBox(
                              height: 12,
                            ),
                            CommonElevatedButton(
                                isPending: widget.fragmentUpdatePending,
                                text: LocaleKeys.buttonSave.tr(),
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
                            const SizedBox(
                              height: 32,
                            ),
                            CommonElevatedButton.red(
                                text: LocaleKeys.deleteSlide.tr(),
                                onPressed: () {
                                  CommonFunctions.showStyledDialog(
                                      context: context,
                                      message: LocaleKeys
                                          .deleteSlideConfirmationMessage
                                          .tr(),
                                      positiveButtonText:
                                          LocaleKeys.buttonDelete.tr(),
                                      negativeButtonText:
                                          LocaleKeys.buttonCancel.tr(),
                                      onPositiveTap: () =>
                                          BlocProvider.of<EditPresentationBloc>(
                                                  context)
                                              .add(const EditPresentationEvent
                                                  .deleteFragment()));
                                }),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ],
                      );
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
                  itemCount: widget.fragments.length + 2)
            ],
          ),
        ),
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

  Future<PresentationLink?>? _showLinksDialog(BuildContext context) async {
    final linkController = TextEditingController();
    final descriptionController = TextEditingController();
    final result = await showDialog(
        context: context,
        builder: (context) => SizedBox(
              width: 500,
              child: SimpleDialog(
                  title: Text(LocaleKeys.addLink.tr()),
                  contentPadding: const EdgeInsets.all(24),
                  children: [
                    NameAndDescriptionWidget(
                        titleLabelName: LocaleKeys.link.tr(),
                        titleController: linkController,
                        descriptionController: descriptionController),
                    const SizedBox(
                      height: 12,
                    ),
                    CommonElevatedButton(
                        text: 'Add link',
                        onPressed: () {
                          context.router.pop(PresentationLink(
                            description: descriptionController.text,
                            link: linkController.text,
                          ));
                        }),
                    const SizedBox(
                      height: 12,
                    ),
                    TextButton(
                        onPressed: () => context.router.pop(),
                        child: Text(LocaleKeys.buttonCancel.tr()))
                  ]),
            ));

    return result;
  }
}

class _VerticalFragmentCard extends StatelessWidget {
  const _VerticalFragmentCard({super.key, required this.fragment});

  final PdfFragment fragment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              BlocProvider.of<EditPresentationBloc>(context).add(
                  EditPresentationEvent.fragmentSelected(fragment: fragment));
            },
            child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: fragment.imagePath?.contains('http') ?? false
                    ? CachedNetworkImage(
                        progressIndicatorBuilder:
                            (context, imageUrl, progress) => Center(
                                  child: CircularProgressIndicator(
                                      value: progress.progress != null
                                          ? progress.progress!
                                          : null),
                                ),
                        imageUrl: fragment.imagePath!)
                    : fragment.imageBytes != null
                        ? Image.memory(fragment.imageBytes!)
                        : SizedBox(
                            height: 300,
                            child: Center(child: Text(LocaleKeys.noImage.tr())),
                          ))),
      ],
    );
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
                    width: Responsive.isMobile(context) == false ? 355 : null,
                    child: fragment.imagePath?.contains('http') ?? false
                        ? CachedNetworkImage(
                            progressIndicatorBuilder:
                                (context, imageUrl, progress) => Center(
                                      child: CircularProgressIndicator(
                                          value: progress.progress != null
                                              ? progress.progress!
                                              : null),
                                    ),
                            imageUrl: fragment.imagePath!)
                        : fragment.imageBytes != null
                            ? Image.memory(fragment.imageBytes!)
                            : Center(
                                child: Text(LocaleKeys.noImage.tr()),
                              )))),
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
