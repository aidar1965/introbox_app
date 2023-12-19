import 'package:flutter/foundation.dart';

import '../presentation.dart';

@immutable
class PaginatedPresentations {
  const PaginatedPresentations({
    required this.offset,
    required this.count,
    required this.presentations,
  });

  final int offset;
  final int count;
  final Iterable<Presentation> presentations;
}
