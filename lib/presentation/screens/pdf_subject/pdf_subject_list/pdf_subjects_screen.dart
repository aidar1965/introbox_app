import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';
import 'package:moki_tutor/presentation/theme/dynamic_theme.dart';

import '../../../../domain/models/subject.dart';
import '../../../auto_router/app_router.dart';
import '../../../common/common_functions.dart';
import 'bloc/pdf_subject_bloc.dart';

@RoutePage()
class PdfSubjectsScreen extends StatelessWidget {
  const PdfSubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PdfSubjectBloc(),
      child: BlocConsumer<PdfSubjectBloc, PdfSubjectState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) => state.maybeMap(
          orElse: () =>
              throw UnsupportedError('SubjectsScreen unsupported state'),
          pending: (_) => Scaffold(
              appBar: AppBar(
                  title: const Text(
                'Список тем',
              )),
              body: const Center(
                child: CircularProgressIndicator(),
              )),
          screenState: (state) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Список тем',
                ),
                actions: [
                  TextButton.icon(
                    icon: Icon(Icons.redo_rounded),
                    label: Text('Обновить страницу'),
                    style: TextButton.styleFrom(
                        iconColor: DynamicTheme.paletteOf(context).alwaysWhite,
                        foregroundColor:
                            DynamicTheme.paletteOf(context).alwaysWhite,
                        textStyle: TextStyle(
                            color:
                                DynamicTheme.paletteOf(context).alwaysWhite)),
                    onPressed: () {
                      BlocProvider.of<PdfSubjectBloc>(context)
                          .add(const PdfSubjectEvent.reloadData());
                    },
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.picture_as_pdf),
                    label: Text('Добавить из PDF'),
                    style: TextButton.styleFrom(
                        iconColor: DynamicTheme.paletteOf(context).alwaysWhite,
                        foregroundColor:
                            DynamicTheme.paletteOf(context).alwaysWhite,
                        textStyle: TextStyle(
                            color:
                                DynamicTheme.paletteOf(context).alwaysWhite)),
                    onPressed: () async {
                      final result = await context.router
                          .push(const PdfCreateSubjectRoute());
                      if (context.mounted) {
                        if (result != null) {
                          BlocProvider.of<PdfSubjectBloc>(context)
                              .add(const PdfSubjectEvent.reloadData());
                        }
                      }
                    },
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.image),
                    label: Text('Добавить из изображений'),
                    style: TextButton.styleFrom(
                        iconColor: DynamicTheme.paletteOf(context).alwaysWhite,
                        foregroundColor:
                            DynamicTheme.paletteOf(context).alwaysWhite,
                        textStyle: TextStyle(
                            color:
                                DynamicTheme.paletteOf(context).alwaysWhite)),
                    onPressed: () async {
                      final result =
                          await context.router.push(ImageCreateSubjectRoute());
                      if (context.mounted) {
                        if (result != null) {
                          BlocProvider.of<PdfSubjectBloc>(context)
                              .add(const PdfSubjectEvent.reloadData());
                        }
                      }
                    },
                  )
                ],
              ),
              body: _SubjectList(subjects: state.subjects)),
          loadingError: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Список тем',
                ),
              ),
              floatingActionButton: IconButton(
                  onPressed: () async {
                    await CommonFunctions.showStyledDialog(
                        context: context,
                        message: 'Выберите способ создания темы',
                        positiveButtonText: 'Из PDF файла',
                        negativeButtonText: 'Из изображений',
                        onPositiveTap: () {
                          if (context.mounted) {
                            context.router.push(const PdfCreateSubjectRoute());
                          }
                        },
                        onNegativeTap: () {
                          if (context.mounted) {
                            context.router.push(ImageCreateSubjectRoute());
                          }
                        });
                  },
                  icon: const Icon(Icons.add)),
              body: const _LoadingError()),
        ),
      ),
    );
  }
}

class _SubjectList extends StatelessWidget {
  const _SubjectList({super.key, required this.subjects});

  final List<Subject> subjects;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: subjects.length,
      padding: const EdgeInsets.all(24),
      separatorBuilder: (context, index) => const SizedBox(
        height: 12,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SubjectItem(
          subject: subjects.elementAt(index),
          onDeleteConfirm: () => BlocProvider.of<PdfSubjectBloc>(context)
              .add(PdfSubjectEvent.deleteSubject(subjects.elementAt(index).id)),
        );
      },
    );
  }
}

class SubjectItem extends StatelessWidget {
  const SubjectItem(
      {super.key, required this.subject, required this.onDeleteConfirm});

  final Subject subject;
  final Function() onDeleteConfirm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (subject.firstImage != null)
          SizedBox(
              height: 100,
              width: 100,
              child: CachedNetworkImage(imageUrl: subject.firstImage!)),
        Expanded(child: Text(subject.title)),
        const SizedBox(
          width: 24,
        ),
        Expanded(child: Text(subject.description ?? '')),
        Text(DateFormat('dd.MM.yyy kk:mm').format(subject.date)),
        const SizedBox(
          width: 24,
        ),
        Text('${subject.duration}'),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () =>
              context.router.push(PdfSubjectPlayerRoute(subject: subject)),
          icon: const Icon(Icons.play_arrow_rounded),
        ),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () async {
            final result = await context.router
                .push(PdfEditSubjectRoute(subject: subject));
            if (context.mounted) {
              if (result == true) {}
            }
          },
          icon: const Icon(Icons.edit),
        ),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () =>
              _showDeleteConfirmDialog(context, subject.id, onDeleteConfirm),
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }

  Future<void> _showDeleteConfirmDialog(
      BuildContext context, int id, Function() onDeleteConfirmed) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Удаление темы'),
          content: Text('Вы уверены, что хотите удалить таму?'),

          actions: <Widget>[
            TextButton(
              child: const Text('Отмена'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Удалить'),
              onPressed: () {
                onDeleteConfirm();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class _LoadingError extends StatelessWidget {
  const _LoadingError({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLoadingErrorWidget(
        onPressed: () => BlocProvider.of<PdfSubjectBloc>(context)
            .add(const PdfSubjectEvent.initialDataRequested()));
  }
}
