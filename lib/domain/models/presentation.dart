import 'package:flutter/foundation.dart';

import 'channel.dart';
import 'course.dart';
import 'presentation_link.dart';

@immutable
class Presentation {
  const Presentation({
    required this.id,
    required this.title,
    this.description,
    this.firstImage,
    this.pdfFile,
    required this.isAudio,
    required this.isPublic,
    required this.includePdf,
    required this.freeMode,
    required this.hasPassword,
    this.links,
    required this.createdAt,
    required this.isPublished,
    required this.channel,
    this.course,
  });

  final String id;
  final String title;
  final String? description;
  final String? firstImage;
  final String? pdfFile;
  final bool isAudio;
  final bool isPublic;
  final bool isPublished;
  final bool hasPassword;
  final bool includePdf;
  final bool freeMode;
  final List<PresentationLink>? links;
  final DateTime createdAt;
  final Channel? channel;
  final Course? course;
}
