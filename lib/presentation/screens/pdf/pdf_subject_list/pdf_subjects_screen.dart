import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../domain/models/subject.dart';
import '../../../auto_router/app_router.dart';
import 'bloc/pdf_subject_bloc.dart';

@RoutePage()
class PdfSubjectsScreen extends StatelessWidget {
  const PdfSubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Список тем',
      )),
      floatingActionButton: IconButton(
          onPressed: () => context.router.push(const PdfCreateSubjectRoute()),
          icon: const Icon(Icons.add)),
      body: BlocProvider(
        create: (context) => PdfSubjectBloc(),
        child: BlocConsumer<PdfSubjectBloc, PdfSubjectState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) => state.maybeMap(
              orElse: () =>
                  throw UnsupportedError('SubjectsScreen unsupported state'),
              pending: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              screenState: (state) => _SubjectList(subjects: state.subjects)),
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
        SizedBox(width: 200, child: Text(subject.title)),
        const SizedBox(
          width: 24,
        ),
        SizedBox(width: 200, child: Text(subject.description ?? '')),
        Text(DateFormat('dd.MM.yyy kk:mm').format(subject.date)),
        const SizedBox(
          width: 24,
        ),
        Text('${subject.duration}'),
        const SizedBox(
          width: 24,
        ),
        Text(subject.countUncompleted.toString()),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.play_arrow_rounded),
        ),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () =>
              context.router.push(PdfEditSubjectRoute(subject: subject)),
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
