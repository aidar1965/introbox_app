import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class PdfFragment extends Equatable {
  final String id;

  final String title;

  final String? description;

  final Uint8List? imageBytes;

  final String? imagePath;

  final bool isLandscape;

  final int? duration;

  final String? audioPath;

  final Uint8List? audioBytes;

  final int displayOrder;

  const PdfFragment({
    required this.id,
    required this.title,
    this.description,
    this.imageBytes,
    this.audioBytes,
    this.imagePath,
    this.duration,
    this.audioPath,
    required this.isLandscape,
    required this.displayOrder,
  });

  PdfFragment copyWith({
    String? title,
    String? description,
    Uint8List? imageBytes,
    bool? isLandscape,
    int? duration,
    String? audioPath,
    int? displayOrder,
  }) {
    return PdfFragment(
        id: id,
        title: title ?? this.title,
        description: description ?? this.description,
        imageBytes: imageBytes ?? this.imageBytes,
        isLandscape: isLandscape ?? this.isLandscape,
        duration: duration ?? this.duration,
        audioPath: audioPath ?? this.audioPath,
        displayOrder: displayOrder ?? this.displayOrder);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
