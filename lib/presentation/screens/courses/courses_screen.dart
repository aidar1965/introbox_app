import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/domain/di/di.dart';

import '../../../domain/models/course.dart';
import '../../../domain/models/course_category.dart';
import '../../../domain/models/record.dart';
import '../home_screen/bloc/home_bloc.dart';
import 'bloc/courses_bloc.dart';

@RoutePage()
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoursesBloc>(
      create: (context) => Di.of(context).builCoursesBloc(),
      child: BlocConsumer<CoursesBloc, CoursesState>(
        listener: (context, state) => state.whenOrNull(
          newCourse: () => context.router.push(const NewCourseScreenRoute()),
        ),
        buildWhen: (_, state) => state.maybeMap(
          pending: (_) => true,
          initialDataReceived: (_) => true,
          orElse: () => false,
        ),
        builder: (context, state) => state.maybeMap(
            orElse: () => throw UnimplementedError('Wrong state ($state)'),
            pending: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            initialDataReceived: (state) {
              return CoursesView(
                courses: state.courses,
                categories: state.categories,
                selectedCategories: state.selectedCategories,
                selectedCourse: state.selectedCourse,
                isAuthorized: state.isAuthorized,
                publishedCourses: state.publishedCourses,
              );
            }),
      ),
    );
  }
}

class CoursesView extends StatelessWidget {
  const CoursesView(
      {Key? key,
      required this.courses,
      required this.categories,
      required this.selectedCategories,
      required this.isAuthorized,
      this.selectedCourse,
      required this.publishedCourses})
      : super(key: key);

  final List<Course> courses;
  final List<CourseCategory> categories;
  final List<CourseCategory> selectedCategories;
  final Course? selectedCourse;
  final bool isAuthorized;
  final List<Course> publishedCourses;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _CategoriesView(
              categories: categories, selectedCategories: selectedCategories),
          _CoursesView(
            courses: courses,
            selectedCourse: selectedCourse,
          ),
          selectedCourse != null
              ? _SelectedCourseView(course: selectedCourse!)
              : const SizedBox(),
          isAuthorized
              ? _PublishedCoursesView(
                  publishedCourses: publishedCourses,
                )
              : const SizedBox(),
        ],
      ),
      Positioned(
        right: 10,
        bottom: 10,
        child: FloatingActionButton(
            onPressed: () => BlocProvider.of<CoursesBloc>(context)
                .add(const CoursesEvent.newCourse()),
            tooltip: 'Новый курс',
            child: const Icon(Icons.add)),
      ),
    ]);
  }
}

class _CategoriesView extends StatelessWidget {
  const _CategoriesView(
      {Key? key, required this.categories, required this.selectedCategories})
      : super(key: key);

  final List<CourseCategory> categories;
  final List<CourseCategory> selectedCategories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        const Text('Категории'),
        const Divider(),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              var category = categories.elementAt(index);
              return CheckboxListTile(
                  value: selectedCategories.contains(category),
                  onChanged: (value) => BlocProvider.of<CoursesBloc>(context)
                      .add(CoursesEvent.selectCategory(category)),
                  title: Text(
                    category.name,
                  ));
            },
          ),
        ),
      ]),
    );
  }
}

class _CoursesView extends StatelessWidget {
  const _CoursesView({Key? key, required this.courses, this.selectedCourse})
      : super(key: key);

  final List<Course> courses;
  final Course? selectedCourse;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('Курсы'),
            const Divider(),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: courses.length,
                  itemBuilder: ((context, index) {
                    var course = courses.elementAt(index);
                    return ListTile(
                      title: Text(course.title),
                      selectedColor: Colors.grey.withOpacity(0.1),
                      tileColor: selectedCourse != null
                          ? selectedCourse == course
                              ? Colors.grey.withOpacity(0.1)
                              : null
                          : null,
                      onTap: () => BlocProvider.of<CoursesBloc>(context)
                          .add(CoursesEvent.selectCourse(course)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () =>
                                  BlocProvider.of<HomeBloc>(context).add(
                                      HomeEvent.openCoursePlayer(
                                          course: course)),
                              icon: const Icon(Icons.play_arrow)),
                          const SizedBox(width: 20),
                          IconButton(
                              onPressed: () => context.router
                                  .push(EditCourseScreenRoute(course: course)),
                              icon: const Icon(Icons.edit)),
                          const SizedBox(width: 20),
                          course.isPublished == false
                              ? IconButton(
                                  onPressed: () =>
                                      BlocProvider.of<CoursesBloc>(context).add(
                                          CoursesEvent.publishCourse(course)),
                                  icon: const Icon(Icons.upload))
                              : const SizedBox(),
                        ],
                      ),
                    );
                  })),
            )
          ],
        ));
  }
}

class _SelectedCourseView extends StatelessWidget {
  const _SelectedCourseView({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text('Детали курса'),
          const Divider(),
          Text(course.title),
          const SizedBox(
            height: 20,
          ),
          Text(course.description ?? ''),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: course.subjects.length,
              itemBuilder: (BuildContext context, int index) {
                var subject = course.subjects.elementAt(index);
                return ListTile(
                  dense: true,
                  title: Text(subject.title),
                  trailing: IconButton(
                      onPressed: () => BlocProvider.of<HomeBloc>(context)
                          .add(HomeEvent.openSubjectPlayer(subject: subject)),
                      icon: const Icon(Icons.play_arrow)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _PublishedCoursesView extends StatelessWidget {
  const _PublishedCoursesView({super.key, required this.publishedCourses});

  final List<Course> publishedCourses;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text('Опубликованные курсы'),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: publishedCourses.length,
              itemBuilder: (BuildContext context, int index) {
                Course publishedCourse = publishedCourses.elementAt(index);
                return ListTile(
                  title: Text(publishedCourse.title),
                  trailing: IconButton(
                      onPressed: () => BlocProvider.of<HomeBloc>(context).add(
                          HomeEvent.openCoursePlayer(
                              course: publishedCourse, remote: true)),
                      icon: const Icon(Icons.play_arrow)),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

String _getDuration(List<Record> records) {
  int duration = 0;
  for (var record in records) {
    duration += record.duration;
  }
  if (duration % 60 > 9) {
    return '${Duration(seconds: duration).inMinutes}:${duration % 60}';
  } else {
    return '${Duration(seconds: duration).inMinutes}:0${duration % 60}';
  }
}
