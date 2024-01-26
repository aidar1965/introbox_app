import 'package:flutter/foundation.dart';

@immutable
class FragmentRequestData {
  const FragmentRequestData({
    required this.title,
    required this.description,
    required this.image,
    this.audioBytes,
    this.duration,
  });
  final String title;
  final String description;
  final ({
    Uint8List file,
    String fileName,
    bool isLandscape,
    bool isTitleOverImage,
  }) image;
  final Uint8List? audioBytes;
  final int? duration;
}
