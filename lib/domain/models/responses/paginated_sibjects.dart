import 'package:flutter/foundation.dart';

import '../subject.dart';

@immutable
class PaginatedSubjects {
  const PaginatedSubjects({
    required this.offset,
    required this.count,
    required this.subjects,
  });

  final int offset;
  final int count;
  final Iterable<Subject> subjects;
}
