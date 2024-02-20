import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moki_tutor/domain/models/course.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';
import 'package:moki_tutor/presentation/screens/courses/bloc/courses_bloc.dart';

import '../../auto_router/app_router.dart';
import '../../utils/responsive.dart';

@RoutePage()
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          title: Row(
            children: [
              const Text('Курсы'),
              TextButton(
                onPressed: () {
                  context.router.replace(const MainRoute());
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, left: 12),
                  child: Text('Презентации',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ),
              )
            ],
          ),
        ),
        body: BlocProvider(
            create: (context) => CoursesBloc(),
            child: BlocConsumer<CoursesBloc, CoursesState>(
              listener: (context, state) => state.mapOrNull(
                  loadMoreError: (_) => CommonFunctions.showMessage(
                      context, 'Не удалось загрузить данные ', Reason.error)),
              buildWhen: (previous, current) => current.maybeMap(
                orElse: () => true,
                loadingError: (_) => false,
              ),
              builder: (context, state) => state.maybeMap(
                  orElse: () =>
                      throw UnsupportedError('state not supporting building'),
                  pending: (_) => Center(
                        child: CircularProgressIndicator(),
                      ),
                  loadingError: (_) => CommonLoadingErrorWidget(
                      onPressed: () => BlocProvider.of<CoursesBloc>(context)
                          .add(const CoursesEvent.initialDataRequested())),
                  screenState: (state) => _ScreenView(courses: state.courses)),
            )));
  }
}

class _ScreenView extends StatelessWidget {
  const _ScreenView({super.key, required this.courses});

  final List<Course> courses;

  @override
  Widget build(BuildContext context) {
    return courses.isNotEmpty
        ? ListView.separated(
            itemCount: courses.length,
            padding: EdgeInsets.all(Responsive.isMobile(context) ? 12 : 24),
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (BuildContext context, int index) {
              return CourseItem(
                course: courses.elementAt(index),
              );
            },
          )
        : const Center(
            child: Text('Список курсов пуст'),
          );
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.router.push(PublicCourseRoute(id: course.id));
        },
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(0, 15)),
                  ],
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  if (course.image != null)
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: CachedNetworkImage(imageUrl: course.image!)),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: SizedBox(
                          height: 100,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Text(course.title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))),
                                Expanded(
                                  child: Text(
                                    course.description!,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                Text(
                                  DateFormat('dd.MM.yyy kk:mm')
                                      .format(course.createdAt),
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ]))),
                ]))));
  }
}
