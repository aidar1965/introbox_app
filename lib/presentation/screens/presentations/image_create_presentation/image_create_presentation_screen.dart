import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbox/presentation/common/common_elevated_button.dart';

import 'package:introbox/presentation/extetsions/context_extensions.dart';
import 'package:introbox/presentation/screens/presentations/play_fragment_screen.dart';
import 'package:introbox/presentation/utils/responsive.dart';

import '../../../../domain/models/image_fragment.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../auto_router/app_router.dart';
import '../../../common/common_functions.dart';
import '../../../common/common_loading_error_widget.dart';
import '../../../widgets/name_and_description.dart';
import 'bloc/image_create_presentation_bloc.dart';

@RoutePage()
class ImageCreatePresentationScreen extends StatelessWidget {
  ImageCreatePresentationScreen({super.key});

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ImageCreatePresentationBloc(),
        child: BlocConsumer<ImageCreatePresentationBloc,
                ImageCreatePresentationState>(
            listener: (context, state) => state.mapOrNull(
                saveError: (state) => CommonFunctions.showMessage(
                    context,
                    state.errorText ?? LocaleKeys.commonRequestError.tr(),
                    Reason.error),
                saveSuccess: (state) =>
                    context.router.push(const PresentationsRoute())),
            buildWhen: (context, state) => state.maybeMap(
                orElse: () => false,
                screenState: (_) => true,
                initialDataNotLoaded: (_) => true,
                pending: (_) => true),
            builder: (context, state) => state.maybeMap(
                pending: (_) =>
                    const Center(child: CircularProgressIndicator()),
                initialDataNotLoaded: (_) => CommonLoadingErrorWidget(
                    onPressed: () =>
                        BlocProvider.of<ImageCreatePresentationBloc>(context)
                            .add(const ImageCreatePresentationEvent
                                .initialDataRequested())),
                orElse: () =>
                    throw UnsupportedError('state not supporting build'),
                screenState: (state) => Scaffold(
                      appBar: AppBar(
                        leading: BackButton(
                          onPressed: () {
                            context.router.push(const PresentationsRoute());
                          },
                        ),
                        title: Text(
                          LocaleKeys.newPresentation.tr(),
                        ),
                        actions: [
                          IconButton(
                              onPressed: () async {
                                final result = await context.router
                                    .push(ImageAddFragmentRoute());
                                if (result != null) {
                                  if (context.mounted) {
                                    BlocProvider.of<
                                                ImageCreatePresentationBloc>(
                                            context)
                                        .add(ImageCreatePresentationEvent
                                            .fragmentAdded(
                                                imageFragment:
                                                    result as ImageFragment,
                                                title: titleController.text,
                                                description:
                                                    descriptionController
                                                        .text));
                                  }
                                }
                              },
                              icon: const Icon(Icons.add)),
                        ],
                      ),
                      body: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 24),
                                        NameAndDescriptionWidget(
                                          titleController: titleController,
                                          descriptionController:
                                              descriptionController,
                                          initialName: state.title,
                                          initialDescription: state.description,
                                        ),
                                        const SizedBox(height: 20),
                                        Text(LocaleKeys.channel.tr()),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: state.channels.length,
                                          itemBuilder: (context, index) =>
                                              ListTile(
                                            title: Text(
                                              state.channels
                                                  .elementAt(index)
                                                  .title,
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                            leading: Radio(
                                              value: state.channels
                                                  .elementAt(index)
                                                  .id,
                                              groupValue:
                                                  state.selectedChanel.id,
                                              onChanged: (value) {
                                                BlocProvider.of<
                                                            ImageCreatePresentationBloc>(
                                                        context)
                                                    .add(ImageCreatePresentationEvent
                                                        .channelSelected(
                                                            channel: state
                                                                .channels
                                                                .elementAt(
                                                                    index)));
                                              },
                                            ),
                                          ),
                                        ),
                                        if (Responsive.isMobile(context))
                                          FragmentList(
                                              fragments: state.fragments),
                                        const SizedBox(width: 24),
                                        if (state.fragments.isNotEmpty)
                                          CommonElevatedButton(
                                            text: LocaleKeys.createPresentation
                                                .tr(),
                                            onPressed: () {
                                              if (titleController.text
                                                  .trim()
                                                  .isEmpty) {
                                                CommonFunctions.showMessage(
                                                    context,
                                                    LocaleKeys
                                                        .noPresentationTitle
                                                        .tr(),
                                                    Reason.error);
                                                return;
                                              }
                                              BlocProvider.of<
                                                          ImageCreatePresentationBloc>(
                                                      context)
                                                  .add(ImageCreatePresentationEvent
                                                      .saveImagePresentation(
                                                          title: titleController
                                                              .text,
                                                          description:
                                                              descriptionController
                                                                  .text));
                                            },
                                          )
                                      ],
                                    ),
                                  ),
                                )),
                            if (Responsive.isMobile(context) == false) ...[
                              const SizedBox(width: 24),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: FragmentList(
                                        fragments: state.fragments),
                                  )),
                              const SizedBox(
                                width: 52,
                              )
                            ],
                          ]),
                    ))));
  }
}

class FragmentList extends StatefulWidget {
  const FragmentList({super.key, required this.fragments});

  final List<ImageFragment> fragments;

  @override
  State<FragmentList> createState() => _FragmentListState();
}

class _FragmentListState extends State<FragmentList> {
  late List<ImageFragment> fragments;

  @override
  void initState() {
    super.initState();
    fragments = widget.fragments.map((e) => e).toList();
  }

  @override
  void didUpdateWidget(FragmentList oldWidget) {
    fragments = widget.fragments.map((e) => e).toList();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: ReorderableListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              _fragmentView(context, fragments.elementAt(index), index),
          itemCount: fragments.length,
          onReorder: onReorder),
    );
  }

  void onReorder(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = fragments.removeAt(oldindex);
      fragments.insert(newindex, items);
      BlocProvider.of<ImageCreatePresentationBloc>(context).add(
          ImageCreatePresentationEvent.onReorderFragments(
              fragments: fragments));
    });
  }

  Widget _fragmentView(BuildContext context, ImageFragment f, int index) {
    return Padding(
      key: ValueKey(DateTime.now()),
      padding: const EdgeInsets.only(right: 24.0, top: 12, bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: f.imageBytes != null
                  ? Image.memory(f.imageBytes!)
                  : Center(child: Text(f.title))),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  f.title,
                  maxLines: 2,
                  style: context.style16w400$text1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  f.description ?? '',
                  maxLines: 1,
                  style: context.style14w400$text2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => Dialog.fullscreen(
                            child: PlayFragmentScreen(
                          imageBytes: f.imageBytes,
                          audioPath: f.audioPath,
                          duration: f.duration,
                          title: f.title,
                        )));
              },
              icon: const Icon(Icons.play_circle)),
          const SizedBox(width: 24),
          IconButton(
              onPressed: () {
                BlocProvider.of<ImageCreatePresentationBloc>(context).add(
                    ImageCreatePresentationEvent.onDeleteFragment(
                        index: index));
              },
              icon: const Icon(Icons.delete)),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
