import 'package:flutter/foundation.dart';
import 'package:introbox/domain/models/course.dart';

@immutable
class PaginatedCourses {
  const PaginatedCourses({
    required this.offset,
    required this.count,
    required this.courses,
  });

  final int offset;
  final int count;
  final Iterable<Course> courses;
}
