import 'package:flutter/foundation.dart';

@immutable
class ImageFragment {
  final String title;
  final String? description;
  final Uint8List? imageBytes;
  final bool isLandscape;
  final Uint8List? audioBytes;
  final String? audioPath;
  final String? imagePath;
  final int? duration;
  final bool isTitleOverImage;
  const ImageFragment({
    this.imageBytes,
    required this.isLandscape,
    this.audioBytes,
    this.audioPath,
    this.imagePath,
    required this.title,
    this.description,
    this.duration,
    required this.isTitleOverImage,
  });
}
