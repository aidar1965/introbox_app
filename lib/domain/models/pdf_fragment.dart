import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class PdfFragment extends Equatable {
  final int id;

  final String title;

  final String? description;

  final String? imagePath;

  final File? image;

  final bool isLandscape;

  final int? duration;

  final String? audioPath;

  final int displayOrder;

  const PdfFragment({
    required this.id,
    required this.title,
    this.description,
    this.imagePath,
    this.image,
    this.duration,
    this.audioPath,
    required this.isLandscape,
    required this.displayOrder,
  });

  PdfFragment copyWith({
    String? title,
    String? description,
    String? imagePath,
    bool? isLandscape,
    int? duration,
    String? audioPath,
    int? displayOrder,
  }) {
    return PdfFragment(
        id: id,
        title: title ?? this.title,
        description: description ?? this.description,
        imagePath: imagePath ?? this.imagePath,
        isLandscape: isLandscape ?? this.isLandscape,
        duration: duration ?? this.duration,
        audioPath: audioPath ?? this.audioPath,
        displayOrder: displayOrder ?? this.displayOrder);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
