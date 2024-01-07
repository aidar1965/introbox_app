import 'package:flutter/foundation.dart';

@immutable
class ImageFragment {
  final String title;
  final String? description;
  final Uint8List imageBytes;
  final bool isLandscape;
  final Uint8List? audioBytes;
  final String? audioPath;
  final int? duration;
  const ImageFragment(
      {required this.imageBytes,
      required this.isLandscape,
      this.audioBytes,
      this.audioPath,
      required this.title,
      this.description,
      this.duration});
}
