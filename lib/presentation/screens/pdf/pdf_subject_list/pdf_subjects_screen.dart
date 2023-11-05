import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(subjects.elementAt(index).title);
      },
    );
  }
}
