import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/screens/pdf_courses/pdf_add_course/bloc/pdf_add_course_bloc.dart';

import '../../../../domain/models/subject.dart';
import '../../../auto_router/app_router.dart';
import '../../../common/common_elevated_button.dart';
import '../../../common/common_loading_error_widget.dart';
import '../../../widgets/name_and_description.dart';

@RoutePage()
class PdfAddCourseScreen extends StatelessWidget {
  PdfAddCourseScreen({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PdfAddCourseBloc(),
      child: BlocConsumer<PdfAddCourseBloc, PdfAddCourseState>(
        listener: (context, state) => state.mapOrNull(
            requestError: (state) => CommonFunctions.showMessage(context,
                state.errorText ?? 'Произошла ошибка в запросе', Reason.error)),
        buildWhen: (previous, current) =>
            current.maybeMap(requestError: (_) => false, orElse: () => true),
        builder: (context, state) => state.maybeMap(
            orElse: () => throw UnsupportedError(
                  'State not for building',
                ),
            pending: (_) => Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Создание курса',
                  ),
                ),
                body: _PendingView()),
            loadingError: (_) => Scaffold(
                appBar: AppBar(
                  title: const Text(
                    'Создание курса',
                  ),
                ),
                body: _LoadingErrorView()),
            screenState: (state) {
              return Scaffold(
                  appBar: AppBar(
                    title: const Text(
                      'Создание курса',
                    ),
                    actions: [
                      SizedBox(
                          width: 220,
                          child: CommonElevatedButton(
                              text: 'Сохранить',
                              onPressed: () {
                                BlocProvider.of<PdfAddCourseBloc>(context).add(
                                    PdfAddCourseEvent.onSaveCourseClicked(
                                        title: titleController.text,
                                        description:
                                            descriptionController.text));
                                context.router.pop(true);
                              }))
                    ],
                  ),
                  body: _ScreenView(
                    subjects: state.subjects,
                    selectedSubjects: state.selectedSubjects,
                    titleController: titleController,
                    descriptionController: descriptionController,
                  ));
            }),
      ),
    );
  }
}

class _PendingView extends StatelessWidget {
  const _PendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _LoadingErrorView extends StatelessWidget {
  const _LoadingErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLoadingErrorWidget(
        onPressed: () => BlocProvider.of<PdfAddCourseBloc>(context)
            .add(const PdfAddCourseEvent.dataRequested()));
  }
}

class _ScreenView extends StatefulWidget {
  const _ScreenView(
      {super.key,
      required this.subjects,
      required this.selectedSubjects,
      required this.titleController,
      required this.descriptionController});

  final List<Subject> subjects;
  final List<Subject> selectedSubjects;
  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  late List<Subject> selectedSubjects;

  @override
  void initState() {
    super.initState();
    selectedSubjects = widget.selectedSubjects.map((e) => e).toList();
  }

  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = selectedSubjects.removeAt(oldindex);
      selectedSubjects.insert(newindex, items);
      BlocProvider.of<PdfAddCourseBloc>(context).add(
          PdfAddCourseEvent.onReorderSubjects(
              selectedSubjects: selectedSubjects));
    });
  }

  @override
  void didUpdateWidget(_ScreenView oldWidget) {
    super.didUpdateWidget(oldWidget);
    selectedSubjects = widget.selectedSubjects.map((e) => e).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: NameAndDescriptionWidget(
            titleController: widget.titleController,
            descriptionController: widget.descriptionController,
          ),
        ),
        Expanded(
            child: ListView.builder(
          padding: const EdgeInsets.all(24),
          itemBuilder: (context, index) =>
              _SubjectItem(subject: widget.subjects.elementAt(index)),
          itemCount: widget.subjects.length,
        )),
        Expanded(
            child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: ReorderableListView.builder(
            padding: const EdgeInsets.all(24),
            itemBuilder: (context, index) => _selectedSubjectsListItem(context,
                selectedSubject: widget.selectedSubjects.elementAt(index)),
            itemCount: widget.selectedSubjects.length,
            onReorder: reorderData,
          ),
        ))
      ],
    );
  }

  Widget _selectedSubjectsListItem(context,
      {required Subject selectedSubject}) {
    return Padding(
      key: ValueKey(selectedSubject.id),
      padding: const EdgeInsets.only(right: 24.0),
      child: ListTile(
        leading: IconButton(
            onPressed: () {
              context.router
                  .push(PdfSubjectPlayerRoute(subject: selectedSubject));
            },
            icon: Icon(Icons.play_circle)),
        title: Text(
          selectedSubject.title,
        ),
        subtitle: Text(selectedSubject.description ?? ''),
        trailing: IconButton(
            onPressed: () {
              BlocProvider.of<PdfAddCourseBloc>(context).add(
                  PdfAddCourseEvent.subjectUnSelected(
                      subject: selectedSubject));
            },
            icon: Icon(Icons.remove)),
      ),
    );
  }
}

class _SubjectItem extends StatelessWidget {
  const _SubjectItem({super.key, required this.subject});

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        subject.title,
      ),
      subtitle: Text(subject.description ?? ''),
      leading: IconButton(
          onPressed: () {
            context.router.push(PdfSubjectPlayerRoute(subject: subject));
          },
          icon: Icon(Icons.play_circle)),
      trailing: IconButton(
          onPressed: () {
            BlocProvider.of<PdfAddCourseBloc>(context)
                .add(PdfAddCourseEvent.subjectSelected(subject: subject));
          },
          icon: Icon(Icons.add)),
    );
  }
}
