import 'dart:core';
import 'dart:io';
import 'dart:ui';

import '../../data/api/models/requests/fragment_request_data.dart';
import '../../presentation/screens/pdf_subject/image_create_subject/image_fragment.dart';
import '../models/course.dart';
import '../models/fragment_category.dart';
import '../models/pdf_fragment.dart';
import '../models/responses/paginated_courses.dart';
import '../models/responses/paginated_presentations.dart';
import '../models/responses/paginated_subjects.dart';
import '../models/subject_category.dart';
import '../models/user.dart';
import '../models/fragment.dart';
import '../models/user_with_tokens.dart';

abstract class IApi {
  Future<void> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String firstName,
    required String lastName,
  });

  Future<void> otpRequest({required String phone, required String lang});

  Future<User?>? loginWithOtp({required String otp, required String email});

  Future<void> updateUser({
    required String firstName,
    required String lastName,
    String? secondName,
    String? about,
    String? image,
  });

  Future<void> uploadUserImage({required File image});

  Future<void> publishFragment({required Fragment record});

  Future<List<Course>?>? getPublishedCourses();

  Future<void> confirm({required String email, required String code});

  Future<UserWithTokens> login(
      {required String email, required String password});

  Future<void> addPdfSubject(
      {required String pdfFile,
      required String title,
      String? description,
      required List<FragmentRequestData> fragments,
      int? duration});

  Future<void> addPresentation(
      {required String pdfFile,
      required String title,
      required bool isAudio,
      String? description,
      required List<FragmentRequestData> fragments,
      int? duration});

  Future<void> addImageSubject(
      {required String title,
      String? description,
      required List<ImageFragment> fragments,
      int? duration});

  // ---------------------------------------------------------------------------
  Future<void> clearTokens();

  // ---------------------------------------------------------------------------
  void setTokens(String access, String refresh);

  Future<PaginatedSubjects> getSubjects({int limit = 50, int offset = 0});

  Future<void> deleteSubject({required int id});

  Future<List<PdfFragment>> getSubjectFragments({required int id});

  Future<void> updateFragment({
    required int id,
    String? title,
    String? description,
    String? imagePath,
    String? audioPath,
    int? duration,
    int? subjectDurationDifference,
    bool? isLandscape,
  });

  Future<void> updateSubject({
    required int id,
    String? title,
    String? description,
  });

  Future<void> deleteFragment({required int id});
  Future<void> addFragment({
    required int subjectId,
    required int displayOrder,
    required String title,
    required String description,
    required File image,
    required bool isLandscape,
    String? audioPath,
    int? duration,
  });

  Future<void> reorderFragments(
      {required int subjectId, required List<int> fragmentsIds});

  Future<PaginatedCourses> getCourses({int limit = 50, int offset = 0});

  Future<void> addCourse(
      {required String title,
      required String description,
      required List<int> subjectsIds,
      required Locale locale});

  Future<Course> getCourse({required int id});

  Future<void> updateCourse({
    required int id,
    required String title,
    required String description,
    required List<int> subjectsIds,
    required Locale locale,
  });

  Future<void> publishCourse({
    required int id,
  });

  Future<void> deleteCourse({
    required int id,
  });

  Future<User> getUser();

  Future<List<SubjectCategory>> getSubjectCategories();
  Future<void> updateSubjectCategory({required int id, required String name});
  Future<void> addSubjectCategory({required String name});
  Future<void> deleteSubjectCategory({required int id});

  Future<List<FragmentCategory>> getFragmentCategories();
  Future<void> updateFragmentCategory({required int id, required String name});
  Future<void> addFragmentCategory({required String name});
  Future<void> deleteFragmentCategory({required int id});

  Future<PaginatedPresentations> getPresentations(
      {int? offset, int? limit, int? categoryId});

  deletePresentation({required int id}) {}

  Future<List<PdfFragment>> getPresentationFragments({required int id});

  updatePresentation(
      {required int id, required String title, required String description}) {}

  reorderPresentationFragments(
      {required int presentation, required List<int> fragmentsIds}) {}

  addPresentationFragment(
      {required int presentationId,
      required int displayOrder,
      required String title,
      required String description,
      required File image,
      required bool isLandscape,
      String? audioPath,
      int? duration}) {}
}
