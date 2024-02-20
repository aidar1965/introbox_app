import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moki_tutor/domain/models/course.dart';
import 'package:moki_tutor/presentation/common/common_elevated_button.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';
import 'package:moki_tutor/presentation/screens/course_screen/bloc/course_bloc.dart';
import 'package:moki_tutor/presentation/utils/responsive.dart';

import '../../../domain/models/presentation.dart';
import '../../auto_router/app_router.dart';
import '../../common/common_functions.dart';

@RoutePage()
class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, @pathParam required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Презентации курса'),
        leading: BackButton(
          onPressed: () {
            context.router.push(const MyCoursesRoute());
          },
        ),
      ),
      body: BlocProvider(
          create: (context) => CourseBloc(id),
          child: BlocConsumer<CourseBloc, CourseState>(
            listener: (context, state) => state.mapOrNull(
                requestError: (_) => CommonFunctions.showMessage(
                    context,
                    'Произошла ошибка в запросе. Попробуйте позже',
                    Reason.error)),
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
                    onPressed: () => BlocProvider.of<CourseBloc>(context)
                        .add(CourseEvent.initialDataRequested(id))),
                screenState: (state) => _ScreenView(course: state.course)),
          )),
    );
  }
}

class _ScreenView extends StatefulWidget {
  const _ScreenView({super.key, required this.course});

  final Course course;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = presentations.removeAt(oldindex);
      presentations.insert(newindex, items);
    });
  }

  late List<Presentation> presentations;

  @override
  void initState() {
    super.initState();
    presentations = widget.course.presentations!;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(Responsive.isMobile(context) ? 12 : 24),
        child: Column(
          children: [
            Text(widget.course.title),
            const SizedBox(height: 12),
            ReorderableListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => _presentationWidget(
                    presentation:
                        widget.course.presentations!.elementAt(index)),
                itemCount: widget.course.presentations!.length,
                onReorder: reorderData),
            const SizedBox(height: 12),
            SizedBox(
                width: 200,
                child: CommonElevatedButton(
                    text: 'Сохранить',
                    onPressed: () {
                      BlocProvider.of<CourseBloc>(context).add(
                          CourseEvent.reorderPresentations(
                              ids: presentations.map((e) => e.id).toList()));
                    }))
          ],
        ),
      ),
    );
  }

  Widget _presentationWidget({required Presentation presentation}) {
    return Padding(
      key: ValueKey(presentation.id),
      padding: const EdgeInsets.only(bottom: 12),
      child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () =>
                context.router.push(PresentationRoute(id: presentation.id)),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                        flex: 3,
                        child: SizedBox(
                            height: 100,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Text(presentation.title,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600))),
                                  Expanded(
                                    child: Text(
                                      presentation.description!,
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
                                        .format(presentation.createdAt),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]))),
                    const SizedBox(
                      width: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 64),
                      child: IconButton(
                          onPressed: () {
                            BlocProvider.of<CourseBloc>(context).add(
                                CourseEvent.removePresentationFromCourse(
                                    id: presentation.id));
                          },
                          icon: Icon(Icons.delete_outlined)),
                    )
                  ],
                )),
          )),
    );
  }
}
