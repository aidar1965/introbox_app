import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';

import '../../../../domain/models/course.dart';
import '../../../../domain/models/subject.dart';
import '../../../auto_router/app_router.dart';
import '../../../widgets/name_and_description.dart';
import 'bloc/pdf_edit_course_bloc.dart';

@RoutePage()
class PdfEditCourseScreen extends StatelessWidget {
  PdfEditCourseScreen({super.key, required this.course});

  final Course course;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = course.title;
    descriptionController.text = course.description ?? '';
    return BlocProvider(
        create: (context) => PdfEditCourseBloc(course: course),
        child: BlocConsumer<PdfEditCourseBloc, PdfEditCourseState>(
          listener: (context, state) => state.mapOrNull(
              requestError: (state) => CommonFunctions.showMessage(
                  context, state.errorText ?? 'Произошла ошибка', Reason.error),
              saveSuccess: (_) {
                CommonFunctions.showMessage(
                    context, 'Курс успешно отредактирован', Reason.neutral);
                context.router.pop(true);
                return null;
              }),
          buildWhen: (previous, current) => current.maybeMap(
            orElse: () => false,
            screenState: (_) => true,
          ),
          builder: (context, state) => state.maybeMap(
              orElse: () =>
                  throw UnsupportedError('State not supporting build'),
              screenState: (state) => Scaffold(
                  appBar: AppBar(title: Text('Редактирование курса'), actions: [
                    IconButton(
                        onPressed: () {
                          BlocProvider.of<PdfEditCourseBloc>(context).add(
                              PdfEditCourseEvent.onSaveCourseClicked(
                                  title: titleController.text,
                                  description: descriptionController.text));
                        },
                        icon: const Icon(Icons.save))
                  ]),
                  body: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: NameAndDescriptionWidget(
                            titleController: titleController,
                            descriptionController: descriptionController,
                          ),
                        ),
                        Expanded(
                            child: state.isLoadingError
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : state.isLoadingError
                                    ? CommonLoadingErrorWidget(onPressed: () {})
                                    : ListView.builder(
                                        padding: const EdgeInsets.all(24),
                                        itemBuilder: (context, index) =>
                                            _SubjectItem(
                                                subject: state.subjects
                                                    .elementAt(index)),
                                        itemCount: state.subjects.length,
                                      )),
                        Expanded(
                            child: Theme(
                          data: Theme.of(context).copyWith(
                            canvasColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: Theme(
                              data: Theme.of(context).copyWith(
                                canvasColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: _SelectedSubjectsView(
                                selectedSubjects: state.selectedSubjects,
                              )),
                        ))
                      ],
                    ),
                  ))),
        ));
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
            BlocProvider.of<PdfEditCourseBloc>(context)
                .add(PdfEditCourseEvent.subjectSelected(subject: subject));
          },
          icon: Icon(Icons.add)),
    );
  }
}

class _SelectedSubjectsView extends StatefulWidget {
  const _SelectedSubjectsView({super.key, required this.selectedSubjects});

  final List<Subject> selectedSubjects;

  @override
  State<_SelectedSubjectsView> createState() => __SelectedSubjectsViewState();
}

class __SelectedSubjectsViewState extends State<_SelectedSubjectsView> {
  late List<Subject> selectedSubjects;
  @override
  void initState() {
    super.initState();
    selectedSubjects = widget.selectedSubjects.map((e) => e).toList();
  }

  @override
  void didUpdateWidget(_SelectedSubjectsView oldWidget) {
    super.didUpdateWidget(oldWidget);
    selectedSubjects = widget.selectedSubjects.map((e) => e).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      padding: const EdgeInsets.all(24),
      itemBuilder: (context, index) => _selectedSubjectsListItem(context,
          selectedSubject: selectedSubjects.elementAt(index)),
      itemCount: selectedSubjects.length,
      onReorder: reorderData,
    );
  }

  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = selectedSubjects.removeAt(oldindex);
      selectedSubjects.insert(newindex, items);

      BlocProvider.of<PdfEditCourseBloc>(context).add(
          PdfEditCourseEvent.onReorderSubjects(
              selectedSubjects: selectedSubjects));
    });
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
              BlocProvider.of<PdfEditCourseBloc>(context).add(
                  PdfEditCourseEvent.subjectUnSelected(
                      subject: selectedSubject));
            },
            icon: Icon(Icons.remove)),
      ),
    );
  }
}
