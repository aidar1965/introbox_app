import 'package:flutter/foundation.dart';

@immutable
class Presentation {
  const Presentation({
    required this.id,
    required this.title,
    this.description,
    required this.firstImage,
    this.pdfFile,
    required this.isAudio,
    required this.isPublic,
    required this.includePdf,
    required this.freeMode,
    this.links,
    required this.createdAt,
    required this.isPublished,
  });

  final int id;
  final String title;
  final String? description;
  final String firstImage;
  final String? pdfFile;
  final bool isAudio;
  final bool isPublic;
  final bool isPublished;
  final bool includePdf;
  final bool freeMode;
  final String? links;
  final DateTime createdAt;
}
