import 'package:freezed_annotation/freezed_annotation.dart';

import 'course_dto.dart';

part 'generated/paginated_courses_dto.g.dart';

@JsonSerializable()
class PaginatedCoursesDto {
  @JsonKey(name: 'offset')
  final int offset;

  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'courses')
  final List<CourseDto> courses;

  PaginatedCoursesDto(
      {required this.offset, required this.count, required this.courses});

  static PaginatedCoursesDto fromJson(Object json) =>
      _$PaginatedCoursesDtoFromJson(json as Map<String, dynamic>);
}
