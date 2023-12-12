import 'package:freezed_annotation/freezed_annotation.dart';

import 'course_category_dto.dart';
import 'subject_dto.dart';

part 'generated/course_dto.g.dart';

@JsonSerializable()
class CourseDto {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'first_image')
  final String? firstImage;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'last_update')
  final String? lastUpdate;

  @JsonKey(name: 'price')
  final double price;

  @JsonKey(name: 'lang')
  final String locale;

  @JsonKey(name: 'is_published')
  final bool isPublished;

  @JsonKey(name: 'subjects')
  final List<SubjectDto>? subjects;

  @JsonKey(name: 'categories')
  final List<CourseCategoryDto> categories;
  CourseDto({
    required this.id,
    required this.title,
    this.description,
    this.firstImage,
    required this.createdAt,
    this.lastUpdate,
    required this.price,
    required this.locale,
    required this.isPublished,
    this.subjects,
    required this.categories,
  });

  static CourseDto fromJson(Object json) =>
      _$CourseDtoFromJson(json as Map<String, dynamic>);
}
