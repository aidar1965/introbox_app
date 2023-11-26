import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'fragment.dart';
import 'subject_category.dart';

@immutable
class Subject extends Equatable {
  final int id;

  final String title;

  final String? description;

  final List<Fragment>? records;

  final DateTime date;

  final List<SubjectCategory>? subjectCategories;

  final int? duration;

  final String? pdfUrl;

  final int countUncompleted;

  const Subject({
    required this.id,
    required this.title,
    required this.description,
    this.records,
    required this.date,
    this.subjectCategories,
    this.duration,
    this.pdfUrl,
    required this.countUncompleted,
  });

  Subject copyWith({
    String? title,
    String? description,
    List<Fragment>? records,
    DateTime? date,
    List<SubjectCategory>? subjectCategories,
    int? duration,
    int? countUncompleted,
  }) {
    return Subject(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      records: records ?? this.records,
      date: date ?? this.date,
      subjectCategories: subjectCategories ?? this.subjectCategories,
      duration: duration ?? this.duration,
      countUncompleted: countUncompleted ?? this.countUncompleted,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "records": records?.map((e) => e.toJson()).toList(),
      "date": date,
      "duration": duration
    };
  }
}
