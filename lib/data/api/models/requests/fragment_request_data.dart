import 'package:flutter/foundation.dart';

@immutable
class FragmentRequestData {
  const FragmentRequestData({
    required this.title,
    required this.description,
    required this.image,
    this.audioPath,
    this.duration,
  });
  final String title;
  final String description;
  final ({
    Uint8List file,
    String fileName,
    bool isLandscape,
  }) image;
  final String? audioPath;
  final int? duration;
}
