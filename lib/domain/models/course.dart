import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:moki_tutor/domain/models/course_category.dart';

import 'subject.dart';

@immutable
class Course extends Equatable {
  final int id;

  final String title;

  final String? description;

  final String? firstImage;

  final double price;

  final bool isPublished;

  final DateTime? lastUpdate;

  final DateTime date;

  final Locale locale;

  final List<Subject>? subjects;

  final List<CourseCategory> courseCategories;

  const Course({
    required this.title,
    required this.description,
    this.firstImage,
    required this.price,
    required this.isPublished,
    required this.id,
    this.lastUpdate,
    required this.date,
    required this.locale,
    this.subjects,
    required this.courseCategories,
  });

  @override
  List<Object?> get props => [id];

  Course copyWith(
      {String? id,
      String? title,
      String? description,
      String? firstImage,
      double? price,
      bool? isPublished,
      DateTime? lastUpdate,
      DateTime? date,
      Locale? lang,
      List<CourseCategory>? courseCategories,
      int? duration}) {
    return Course(
      id: this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      isPublished: isPublished ?? this.isPublished,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      date: date ?? this.date,
      locale: lang ?? this.locale,
      courseCategories: courseCategories ?? this.courseCategories,
    );
  }
}
