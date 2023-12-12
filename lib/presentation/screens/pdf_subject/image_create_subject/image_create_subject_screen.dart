import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';
import 'package:moki_tutor/presentation/screens/pdf_subject/image_create_subject/bloc/image_create_subject_bloc.dart';
import 'package:moki_tutor/presentation/screens/pdf_subject/image_create_subject/image_fragment.dart';

import '../../../auto_router/app_router.dart';
import '../../../common/common_functions.dart';
import '../../../widgets/name_and_description.dart';

@RoutePage()
class ImageCreateSubjectScreen extends StatelessWidget {
  ImageCreateSubjectScreen({super.key});

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ImageCreateSubjectBloc(),
        child: BlocConsumer<ImageCreateSubjectBloc, ImageCreateSubjectState>(
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
                        title: Text(
                          'Новая тема',
                        ),
                        actions: [
                          if (state.fragments.isNotEmpty &&
                              titleController.text.isNotEmpty)
                            IconButton(
                                onPressed: () {
                                  BlocProvider.of<ImageCreateSubjectBloc>(
                                          context)
                                      .add(ImageCreateSubjectEvent
                                          .saveImageSubject(
                                              title: titleController.text,
                                              description:
                                                  descriptionController.text));
                                },
                                icon: const Icon(Icons.save))
                        ],
                      ),
                      floatingActionButton: IconButton(
                          onPressed: () async {
                            final result = await context.router
                                .push(ImageAddFragmentRoute());
                            if (result != null) {
                              if (context.mounted) {
                                BlocProvider.of<ImageCreateSubjectBloc>(context)
                                    .add(ImageCreateSubjectEvent.fragmentAdded(
                                        imageFragment:
                                            result as ImageFragment));
                              }
                            }
                          },
                          icon: const Icon(Icons.add)),
                      body: Row(children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                const SizedBox(height: 24),
                                NameAndDescriptionWidget(
                                  titleController: titleController,
                                  descriptionController: descriptionController,
                                )
                              ],
                            )),
                        SizedBox(width: 24),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: FragmentList(fragments: state.fragments),
                            )),
                        SizedBox(
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
      BlocProvider.of<ImageCreateSubjectBloc>(context).add(
          ImageCreateSubjectEvent.onReorderFragments(fragments: fragments));
    });
  }

  Widget _fragmentView(BuildContext context, ImageFragment f, int index) {
    return Padding(
      key: ValueKey(DateTime.now()),
      padding: const EdgeInsets.only(right: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100, width: 100, child: Image.file(File(f.image))),
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
          IconButton(onPressed: () {}, icon: Icon(Icons.play_circle)),
          const SizedBox(width: 24),
          IconButton(
              onPressed: () {
                BlocProvider.of<ImageCreateSubjectBloc>(context).add(
                    ImageCreateSubjectEvent.onDeleteFragment(index: index));
              },
              icon: Icon(Icons.delete)),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
