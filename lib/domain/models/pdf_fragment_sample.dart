import 'package:flutter/foundation.dart';

class PdfFragmentSample {
  final String? title;
  final String? description;
  final Uint8List image;
  final String? audioPath;
  final int? duration;
  PdfFragmentSample(
      {required this.image,
      this.audioPath,
      this.title,
      this.description,
      this.duration});
}
