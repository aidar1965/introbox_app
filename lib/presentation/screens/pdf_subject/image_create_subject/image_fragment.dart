import 'package:flutter/foundation.dart';

@immutable
class ImageFragment {
  final String title;
  final String? description;
  final String image;
  final bool isLandscape;
  final String? audioPath;
  final int? duration;
  ImageFragment(
      {required this.image,
      required this.isLandscape,
      this.audioPath,
      required this.title,
      this.description,
      this.duration});
}
