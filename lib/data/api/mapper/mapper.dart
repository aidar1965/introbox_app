import 'dart:ui';

import '../../../domain/models/course.dart';
import '../../../domain/models/course_category.dart';
import '../../../domain/models/pdf_fragment.dart';
import '../../../domain/models/subject.dart';
import '../../../domain/models/token_pair.dart';
import '../../../domain/models/user.dart';
import '../../../domain/models/user_with_tokens.dart';
import '../models/responses/course_category_dto.dart';
import '../models/responses/course_dto.dart';
import '../models/responses/pdf_fragment_dto.dart';
import '../models/responses/subject_dto.dart';
import '../models/responses/user_dto.dart';
import '../models/responses/user_with_tokens_dto.dart';

class ApiDataMapper {
  User mapUser(UserDto dto) =>
      User(firstName: dto.firstName, lastName: dto.lastName, email: dto.email);

  UserWithTokens mapUserWithTokens(UserWithTokensDto dto) {
    return UserWithTokens(
        user: User(
            firstName: dto.firstName, lastName: dto.lastName, email: dto.email),
        tokens: TokenPair(
            accessToken: dto.accessToken, refreshToken: dto.refreshToken));
  }

  Subject mapSubject(SubjectDto dto) {
    return Subject(
        id: dto.id,
        title: dto.title,
        description: dto.description,
        firstImage: dto.firstImage,
        date: DateTime.parse(dto.createdAt),
        duration: dto.duration,
        countUncompleted: dto.countUncompleted);
  }

  PdfFragment mapPdfFragment(PdfFragmentDto dto) {
    return PdfFragment(
      id: dto.id,
      title: dto.title,
      duration: dto.duration,
      description: dto.description,
      audioPath: dto.audioPath,
      imagePath: dto.imagePath,
      isLandscape: dto.isLandscape,
      displayOrder: dto.displayOrder,
    );
  }

  Course mapCourse(CourseDto dto) {
    return Course(
      title: dto.title ?? 'Без названия',
      description: dto.description,
      firstImage: dto.firstImage,
      price: dto.price,
      isPublished: dto.isPublished,
      id: dto.id,
      lastUpdate:
          dto.lastUpdate != null ? DateTime.parse(dto.lastUpdate!) : null,
      date: DateTime.parse(dto.createdAt),
      locale: Locale.fromSubtags(languageCode: dto.locale),
      subjects: dto.subjects?.map(mapSubject).toList(),
      courseCategories: (dto.categories)
          .map((e) => mapCourseCategory(CourseCategoryDto.fromJson(e)))
          .toList(),
    );
  }

  CourseCategory mapCourseCategory(CourseCategoryDto dto) {
    return CourseCategory(name: dto.name, id: dto.id);
  }
}
