import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moki_tutor/domain/models/course.dart';
import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';
import 'package:moki_tutor/presentation/theme/dynamic_theme.dart';

import '../../../../domain/models/subject.dart';
import '../../../auto_router/app_router.dart';

@RoutePage()
class PdfCourseDetailsScreen extends StatelessWidget {
  const PdfCourseDetailsScreen({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Детали курса',
      )),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 300,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (course.firstImage != null)
                      SizedBox(
                          height: 240,
                          width: 240,
                          child:
                              CachedNetworkImage(imageUrl: course.firstImage!)),
                    const SizedBox(
                      height: 16,
                    ),
                    Text('Название'),
                    Text(
                      course.title,
                      style: context.style22w600$title1,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text('Описание'),
                    Text(
                      course.description ?? 'Описание не задано',
                      style: context.style18w600$title2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(child: _SubjectsView(subjects: course.subjects))
          ],
        ),
      ),
    );
  }
}

class _SubjectsView extends StatelessWidget {
  const _SubjectsView({super.key, this.subjects});

  final List<Subject>? subjects;

  @override
  Widget build(BuildContext context) {
    if (subjects != null) {
      return ListView.builder(
          itemCount: subjects!.length,
          itemBuilder: (context, index) {
            return _SubjectView(
              subject: subjects!.elementAt(index),
            );
          });
    } else {
      return Center(child: Text('Темы отсутствуют'));
    }
  }
}

class _SubjectView extends StatelessWidget {
  const _SubjectView({super.key, required this.subject});

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 120,
          width: 120,
          child: subject.firstImage != null
              ? CachedNetworkImage(imageUrl: subject.firstImage!)
              : null,
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subject.title,
                style: context.style18w600$title2
                    ?.copyWith(color: DynamicTheme.paletteOf(context).text1),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                subject.description ?? '',
                style: context.style14w400$text2,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        IconButton(
            onPressed: () {
              context.router.push(PdfSubjectPlayerRoute(subject: subject));
            },
            icon: Icon(Icons.play_circle))
      ],
    );
  }
}
