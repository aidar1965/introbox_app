import 'package:flutter/foundation.dart';

@immutable
class FragmentRequestData {
  const FragmentRequestData({
    required this.title,
    required this.description,
    this.image,
    this.audioBytes,
    this.audioExtension,
    this.duration,
  });
  final String title;
  final String description;
  final ({
    Uint8List file,
    String fileName,
    bool isLandscape,
    bool isTitleOverImage,
  })? image;
  final Uint8List? audioBytes;
  final String? audioExtension;
  final int? duration;
}
