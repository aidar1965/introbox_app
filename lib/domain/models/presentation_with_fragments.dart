import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/models/pdf_fragment.dart';

import 'presentation.dart';

@immutable
class PresentationWithFragments {
  const PresentationWithFragments(
      {required this.presentation, required this.fragments});
  final Presentation presentation;
  final List<PdfFragment> fragments;
}
