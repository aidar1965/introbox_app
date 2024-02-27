import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:introbox/domain/models/fragment_category.dart';
import 'package:path/path.dart';

@immutable
class Fragment extends Equatable {
  final int id;

  final String title;

  final String? description;

  final String? imagePath;

  final int? duration;

  final String? folder;

  final String? audioPath;

  final List<FragmentCategory>? categories;

  final DateTime date;

  final Map<String, int>? images;

  const Fragment(
      {required this.id,
      required this.title,
      this.description,
      this.imagePath,
      required this.duration,
      this.folder,
      this.audioPath,
      this.categories,
      required this.date,
      this.images});

  Fragment copyWith(
      {String? title,
      String? description,
      String? imagePath,
      int? duration,
      String? folder,
      String? audioPath,
      List<FragmentCategory>? categories,
      bool? isPublished,
      Map<String, int>? images}) {
    return Fragment(
        id: id,
        title: title ?? this.title,
        description: description ?? this.description,
        imagePath: imagePath ?? this.imagePath,
        duration: duration ?? this.duration,
        folder: folder ?? this.folder,
        audioPath: audioPath ?? this.audioPath,
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
      if (imagePath != null) "imagePath": basename(imagePath!),
      "duration": duration,
      if (audioPath != null) "audioPath": basename(audioPath!),
      "date": date,
      "images": _images()
    };
  }

  String? _images() {
    return jsonEncode(
        images?.keys.map((e) => {basename(e): images?[e]}).toList());
  }
}
