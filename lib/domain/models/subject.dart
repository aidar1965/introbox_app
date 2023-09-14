import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'fragment.dart';
import 'subject_category.dart';

@immutable
class Subject extends Equatable {
  final String id;

  final String title;

  final String? description;

  final List<Fragment> records;

  final DateTime date;

  final List<SubjectCategory>? subjectCategories;

  final int duration;

  const Subject(
      {required this.id,
      required this.title,
      required this.description,
      required this.records,
      required this.date,
      this.subjectCategories,
      required this.duration});

  Subject copyWith(
      {String? title,
      String? description,
      List<Fragment>? records,
      DateTime? date,
      List<SubjectCategory>? subjectCategories,
      int? duration}) {
    return Subject(
        id: id,
        title: title ?? this.title,
        description: description ?? this.description,
        records: records ?? this.records,
        date: date ?? this.date,
        subjectCategories: subjectCategories ?? this.subjectCategories,
        duration: duration ?? this.duration);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "records": records.map((e) => e.toJson()).toList(),
      "date": date,
      "duration": duration
    };
  }
}
