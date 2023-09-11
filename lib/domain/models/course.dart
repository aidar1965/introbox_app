import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:moki_tutor/domain/models/course_category.dart';

import 'subject.dart';

enum Lang {
  kz,

  ru,

  en
}

@immutable
class Course extends Equatable {
  final String id;

  final String title;

  final String? description;

  final double price;

  final List<Subject> subjects;

  final bool isPublished;

  final DateTime lastUpdate;

  final DateTime date;

  final Lang lang;

  final List<CourseCategory> courseCategories;

  final int duration;

  const Course(
      {required this.title,
      required this.description,
      required this.price,
      required this.isPublished,
      required this.id,
      required this.subjects,
      required this.lastUpdate,
      required this.date,
      required this.lang,
      required this.courseCategories,
      required this.duration});

  @override
  List<Object?> get props => [id];

  Course copyWith(
      {String? id,
      String? title,
      String? description,
      double? price,
      List<Subject>? subjects,
      bool? isPublished,
      DateTime? lastUpdate,
      DateTime? date,
      Lang? lang,
      List<CourseCategory>? courseCategories,
      int? duration}) {
    return Course(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        price: price ?? this.price,
        subjects: subjects ?? this.subjects,
        isPublished: isPublished ?? this.isPublished,
        lastUpdate: lastUpdate ?? this.lastUpdate,
        date: date ?? this.date,
        lang: lang ?? this.lang,
        courseCategories: courseCategories ?? this.courseCategories,
        duration: duration ?? this.duration);
  }
}
