import 'package:flutter/foundation.dart';

@immutable
class CourseCategory {
  final int id;

  final String name;
  const CourseCategory({required this.name, required this.id});
}
