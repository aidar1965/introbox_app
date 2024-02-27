import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:introbox/domain/models/course.dart';

import '../../../domain/models/presentation.dart';
import '../../../generated/locale_keys.g.dart';
import '../../auto_router/app_router.dart';
import '../../common/common_loading_error_widget.dart';
import '../../utils/responsive.dart';
import 'bloc/public_course_bloc.dart';

@RoutePage()
class PublicCourseScreen extends StatelessWidget {
  const PublicCourseScreen({super.key, @pathParam required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.courseDetails.tr()),
        leading: BackButton(
          onPressed: () {
            context.router.push(const CoursesRoute());
          },
        ),
      ),
      body: BlocProvider(
          create: (context) => PublicCourseBloc(id),
          child: BlocConsumer<PublicCourseBloc, PublicCourseState>(
            listener: (context, state) => state.mapOrNull(),
            buildWhen: (previous, current) => current.maybeMap(
                orElse: () => false,
                pending: (_) => true,
                loadingError: (_) => true,
                screenState: (_) => true),
            builder: (context, state) => state.maybeMap(
                orElse: () =>
                    throw UnsupportedError('state not supporting building'),
                pending: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadingError: (_) => CommonLoadingErrorWidget(
                    onPressed: () => BlocProvider.of<PublicCourseBloc>(context)
                        .add(PublicCourseEvent.initialDataRequested(id))),
                screenState: (state) => _ScreenView(course: state.course)),
          )),
    );
  }
}

class _ScreenView extends StatelessWidget {
  const _ScreenView({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(Responsive.isMobile(context) ? 12 : 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                course.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              if (course.description != null &&
                  course.description!.isNotEmpty) ...[
                Text(
                  course.description!,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 12),
              ],
              Text(
                course.channel.title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 12),
              Text(
                LocaleKeys.coursePresentations.tr(),
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => PresentationListItem(
                        presentation: course.presentations!.elementAt(index),
                        course: course,
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 12,
                      ),
                  itemCount: course.presentations?.length ?? 0)
            ])));
  }
}

class PresentationListItem extends StatelessWidget {
  const PresentationListItem(
      {super.key, required this.presentation, required this.course});

  final Presentation presentation;
  final Course course;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: () => context.router.push(PublicPresentationRoute(
                id: presentation.id, openedFromApp: true, course: course)),
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
                  if (presentation.firstImage != null)
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: CachedNetworkImage(
                            imageUrl: presentation.firstImage!)),
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
                                    child: Text(presentation.title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))),
                                Expanded(
                                  child: Text(
                                    presentation.description!,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                                Text(
                                  DateFormat('dd.MM.yyy kk:mm')
                                      .format(presentation.createdAt),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ])))
                ]))));
  }
}
