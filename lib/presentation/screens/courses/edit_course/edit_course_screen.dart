import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../domain/models/course.dart';

@RoutePage()
class EditCourseScreen extends StatelessWidget {
  const EditCourseScreen({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Редактирование курса'),
      ),
    );
  }
}
