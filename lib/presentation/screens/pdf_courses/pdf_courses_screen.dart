import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/theme/dynamic_theme.dart';

import '../../../domain/models/course.dart';
import '../../auto_router/app_router.dart';
import '../../common/common_loading_error_widget.dart';
import '../../theme/theme_type.dart';
import 'bloc/pdf_courses_bloc.dart';

@RoutePage()
class PdfCoursesScreen extends StatelessWidget {
  const PdfCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Список публикаций',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  if (DynamicTheme.instanceOf(context)?.themeType ==
                      ThemeTypes.light) {
                    DynamicTheme.instanceOf(context)
                        ?.changeTheme(ThemeTypes.dark);
                  } else {
                    DynamicTheme.instanceOf(context)
                        ?.changeTheme(ThemeTypes.light);
                  }
                },
                icon: Icon(Icons.palette))
          ],
        ),
        floatingActionButton: IconButton(
            onPressed: () async {
              final result = await context.router.push(PdfAddCourseRoute());
              if (context.mounted) {
                if (result != null && result == true) {
                  BlocProvider.of<PdfCoursesBloc>(context)
                      .add(const PdfCoursesEvent.dataRequested());
                }
              }
            },
            icon: const Icon(Icons.add)),
        body: BlocProvider(
          create: (context) => PdfCoursesBloc(),
          child: BlocConsumer<PdfCoursesBloc, PdfCoursesState>(
            listener: (context, state) => state.mapOrNull(
                requestError: (state) => CommonFunctions.showMessage(
                    context, 'Не удалось выполнить запрос', Reason.error)),
            buildWhen: (previous, current) => current.maybeMap(
                orElse: () => true, requestError: (current) => false),
            builder: (context, state) => state.maybeMap(
                screenState: (state) => _ScreenView(courses: state.courses),
                pending: (_) => const _PendingView(),
                loadingError: (_) => const _ErrorLoadingView(),
                orElse: () =>
                    throw UnsupportedError('state not supporting build')),
          ),
        ));
  }
}

class _ScreenView extends StatelessWidget {
  const _ScreenView({super.key, required this.courses});

  final List<Course> courses;

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return const Center(
        child: Text('Список публикаций пуст'),
      );
    } else {
      return ListView.builder(
        padding: const EdgeInsets.all(24),
        itemBuilder: (context, index) =>
            _CourseView(course: courses.elementAt(index)),
        itemCount: courses.length,
      );
    }
  }
}

class _CourseView extends StatelessWidget {
  const _CourseView({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
              child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                child: Text(course.title),
                onTap: () {
                  context.router.push(PdfCourseDetailsRoute(course: course));
                },
              ),
            ),
          )),
          const SizedBox(
            width: 24,
          ),
          TextButton(
            child:
                Text(course.isPublished ? 'Снять публикацию' : 'Опубликовать'),
            onPressed: () {
              BlocProvider.of<PdfCoursesBloc>(context)
                  .add(PdfCoursesEvent.publishCourse(course: course));
            },
          ),
          const SizedBox(
            width: 24,
          ),
          IconButton(
              onPressed: () async {
                final result = await context.router
                    .push(PdfEditCourseRoute(course: course));
                if (result != null && result == true) {
                  if (context.mounted) {
                    BlocProvider.of<PdfCoursesBloc>(context)
                        .add(const PdfCoursesEvent.reloadPage());
                  }
                }
              },
              icon: const Icon(Icons.edit)),
          const SizedBox(
            width: 24,
          ),
          IconButton(
              onPressed: () async {
                await CommonFunctions.showStyledDialog(
                    context: context,
                    message:
                        'Вы действительно хотите удалить публикацию ${course.title}?',
                    positiveButtonText: 'Удалить',
                    negativeButtonText: 'Отмена',
                    onPositiveTap: () {
                      BlocProvider.of<PdfCoursesBloc>(context)
                          .add(PdfCoursesEvent.deleteCourse(course: course));
                    });
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      subtitle: Text(course.description ?? ''),
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

class _ErrorLoadingView extends StatelessWidget {
  const _ErrorLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLoadingErrorWidget(
        onPressed: () => BlocProvider.of<PdfCoursesBloc>(context)
            .add(const PdfCoursesEvent.dataRequested()));
  }
}
