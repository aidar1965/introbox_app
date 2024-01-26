import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';
import 'package:moki_tutor/presentation/screens/presentations/play_fragment_screen.dart';

import '../../../../domain/models/image_fragment.dart';
import '../../../auto_router/app_router.dart';
import '../../../common/common_functions.dart';
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
                saveError: (state) => CommonFunctions.showMessage(context,
                    'Произошла ошибка при выполении запроса', Reason.error),
                saveSuccess: (state) => context.router.pop(true)),
            buildWhen: (context, state) => state.maybeMap(
                  orElse: () => false,
                  screenState: (_) => true,
                ),
            builder: (context, state) => state.maybeMap(
                orElse: () =>
                    throw UnsupportedError('state not supporting build'),
                screenState: (state) => Scaffold(
                      appBar: AppBar(
                        title: const Text(
                          'Новая презентация',
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
                                                    result as ImageFragment));
                                  }
                                }
                              },
                              icon: const Icon(Icons.add)),
                          if (state.fragments.isNotEmpty &&
                              titleController.text.isNotEmpty)
                            IconButton(
                                onPressed: () {
                                  BlocProvider.of<ImageCreatePresentationBloc>(
                                          context)
                                      .add(ImageCreatePresentationEvent
                                          .saveImageSubject(
                                              title: titleController.text,
                                              description:
                                                  descriptionController.text));
                                },
                                icon: const Icon(Icons.save))
                        ],
                      ),
                      body: Row(children: [
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  const SizedBox(height: 24),
                                  NameAndDescriptionWidget(
                                    titleController: titleController,
                                    descriptionController:
                                        descriptionController,
                                  )
                                ],
                              ),
                            )),
                        const SizedBox(width: 24),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: FragmentList(fragments: state.fragments),
                            )),
                        const SizedBox(
                          width: 52,
                        )
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
      padding: const EdgeInsets.only(right: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100, width: 100, child: Image.memory(f.imageBytes)),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  f.title,
                  style: context.style16w400$text1,
                ),
                Text(
                  f.description ?? '',
                  style: context.style14w400$text2,
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
          IconButton(
              onPressed: () {
                print('ImageCreatePresentationScreen: audio:');
                print(f.audioPath);
                showDialog(
                    context: context,
                    builder: (context) => Dialog.fullscreen(
                            child: PlayFragmentScreen(
                          imageBytes: f.imageBytes,
                          audioPath: f.audioPath,
                          duration: f.duration,
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
