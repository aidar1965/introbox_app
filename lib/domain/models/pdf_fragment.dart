import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class PdfFragment extends Equatable {
  final int id;

  final String title;

  final String? description;

  final String imagePath;

  final bool isLandscape;

  final int? duration;

  final String? audioPath;

  const PdfFragment({
    required this.id,
    required this.title,
    this.description,
    required this.imagePath,
    this.duration,
    this.audioPath,
    required this.isLandscape,
  });

  PdfFragment copyWith({
    String? title,
    String? description,
    String? imagePath,
    bool? isLandscape,
    int? duration,
    String? audioPath,
  }) {
    return PdfFragment(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      isLandscape: isLandscape ?? this.isLandscape,
      duration: duration ?? this.duration,
      audioPath: audioPath ?? this.audioPath,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
