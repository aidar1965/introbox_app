import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:moki_tutor/domain/models/record_category.dart';
import 'package:path/path.dart';

@immutable
class Record extends Equatable {
  final String id;

  final String title;

  final String? description;

  final String imagePath;

  final int duration;

  final String? folder;

  final String audioPath;

  final List<RecordCategory>? categories;

  final bool isPublished;

  final DateTime date;

  final Map<String, int>? images;

  const Record(
      {required this.id,
      required this.title,
      this.description,
      this.imagePath = '',
      required this.duration,
      this.folder,
      required this.audioPath,
      this.categories,
      required this.isPublished,
      required this.date,
      this.images});

  Record copyWith(
      {String? title,
      String? description,
      String? imagePath,
      int? duration,
      String? folder,
      String? audioPath,
      List<RecordCategory>? categories,
      bool? isPublished,
      Map<String, int>? images}) {
    return Record(
        id: id,
        title: title ?? this.title,
        description: description ?? this.description,
        imagePath: imagePath ?? this.imagePath,
        duration: duration ?? this.duration,
        folder: folder ?? this.folder,
        audioPath: audioPath ?? this.audioPath,
        isPublished: isPublished ?? this.isPublished,
        categories: categories ?? this.categories,
        date: date,
        images: images ?? this.images);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "imagePath": basename(imagePath),
      "duration": duration,
      "audioPath": basename(audioPath),
      "date": date,
      "images": _images()
    };
  }

  String? _images() {
    return jsonEncode(
        images?.keys.map((e) => {basename(e): images?[e]}).toList());
  }
}
