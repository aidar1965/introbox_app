import 'package:flutter/foundation.dart';

class PdfFragmentSample {
  final String? title;
  final String? description;
  final Uint8List image;
  final Uint8List? audioBytes;
  bool isTitleOverImage;
  //final Uint8List? audioFile;
  final int? duration;
  PdfFragmentSample({
    required this.image,
    this.audioBytes,
    //this.audioFile,
    this.title,
    this.description,
    this.duration,
    required this.isTitleOverImage,
  });
}
