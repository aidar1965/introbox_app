import 'dart:convert';
import 'dart:io';
import 'dart:core';
import 'dart:typed_data';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:moki_tutor/data/api/models/requests/request_add_fragment_category.dart';
import 'package:moki_tutor/data/api/models/requests/request_get_fragment_categories.dart';

import 'package:moki_tutor/data/api/models/requests/request_update_fragment_category.dart';
import 'package:moki_tutor/data/api/models/responses/fragment_category_dto.dart';
import 'package:moki_tutor/data/api/models/responses/presentation_dto.dart';
import 'package:moki_tutor/data/api/models/responses/subject_dto.dart';

import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/models/fragment_category.dart';
import 'package:moki_tutor/domain/models/responses/paginated_courses.dart';
import 'package:moki_tutor/domain/models/subject_category.dart';

import 'package:moki_tutor/domain/models/user.dart';
import 'package:moki_tutor/domain/models/course.dart';

import '../../domain/models/fragment.dart';
import '../../domain/models/image_fragment.dart';
import '../../domain/models/pdf_fragment.dart';

import '../../domain/models/presentation_with_fragments.dart';
import '../../domain/models/responses/paginated_presentations.dart';
import '../../domain/models/responses/paginated_subjects.dart';
import '../../domain/models/user_with_tokens.dart';
import 'http_client/http_client.dart';
import 'mapper/mapper.dart';
import 'models/requests/fragment_request_data.dart';
import 'models/requests/register_request.dart';
import 'models/requests/request_add_course.dart';
import 'models/requests/request_add_fragment.dart';
import 'models/requests/request_add_image_presentation.dart';
import 'models/requests/request_add_image_subject.dart';
import 'models/requests/request_add_pdf_subject.dart';
import 'models/requests/request_add_presentation.dart';
import 'models/requests/request_add_presentation_fragment.dart';
import 'models/requests/request_add_presentation_password.dart';
import 'models/requests/request_add_subject.dart';
import 'models/requests/request_add_subject_category.dart';
import 'models/requests/request_confirmation.dart';
import 'models/requests/request_delete_course.dart';
import 'models/requests/request_delete_fragment.dart';
import 'models/requests/request_delete_fragment_category.dart';
import 'models/requests/request_delete_presentation.dart';
import 'models/requests/request_delete_presentation_fragment.dart';
import 'models/requests/request_delete_subject.dart';
import 'models/requests/request_delete_subject_categories.dart';
import 'models/requests/request_edit_presentation_fragment.dart';
import 'models/requests/request_edit_subject.dart';
import 'models/requests/request_get_presentation.dart';
import 'models/requests/request_get_presentation_fragments.dart';
import 'models/requests/request_get_presentations.dart';
import 'models/requests/request_get_subject_categories.dart';
import 'models/requests/request_get_subject_fragments.dart';
import 'models/requests/request_get_subjects.dart';
import 'models/requests/request_get_tutor_course.dart';
import 'models/requests/request_get_tutor_courses.dart';
import 'models/requests/request_get_user.dart';
import 'models/requests/request_login.dart';
import 'models/requests/request_publish_presentation.dart';
import 'models/requests/request_reorder_fragments.dart';
import 'models/requests/request_reorder_presentation_fragments.dart';
import 'models/requests/request_update_fragment.dart';
import 'models/requests/request_update_presentation.dart';
import 'models/requests/request_update_subject.dart';
import 'models/requests/request_update_subject_category.dart';
import 'models/requests/request_update_user.dart';
import 'models/responses/course_dto.dart';
import 'models/responses/pdf_fragment_dto.dart';

import 'models/responses/presentation_with_fragments_dto.dart';
import 'models/responses/subject_category_dto.dart';
import 'models/responses/user_dto.dart';
import 'models/responses/user_with_tokens_dto.dart';

typedef _Response = Response<Object?>?;
typedef _JsonObject = Map<String, Object?>;

class Api implements IApi {
  ApiDataMapper mapper = ApiDataMapper();
  DioClient httpClient = DioClient();

  @override
  Future<void> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String firstName,
    required String lastName,
  }) async {
    await httpClient.request(RequestRegister(
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        firstName: firstName,
        lastName: lastName));
  }

  @override
  Future<List<Course>?>? getPublishedCourses() async {
    return null;
  }

  @override
  Future<User?>? loginWithOtp(
      {required String otp, required String email}) async {
    return null;
  }

  @override
  Future<void> otpRequest(
      {required String phone, required String lang}) async {}

  @override
  Future<void> publishPresentation({required String id}) async {
    await httpClient.request(RequestPublishPresentation(id: id));
  }

  @override
  Future<void> publishFragment({required Fragment record}) async {}

  @override
  Future<void> updateUser({
    required String firstName,
    required String lastName,
    String? secondName,
    String? about,
    Uint8List? imageBytes,
  }) async {
    await httpClient.request(RequestUpdateUser(
        firstName: firstName,
        secondName: secondName,
        lastName: lastName,
        about: about,
        imageBytes: imageBytes));
  }

  @override
  Future<void> uploadUserImage({required File image}) async {}

  @override
  Future<void> confirm({required String email, required String code}) async {
    await httpClient.request(RequestConfirmation(email: email, code: code));
  }

  @override
  Future<UserWithTokens> login(
      {required String email, required String password}) async {
    final response = await httpClient
        .request(RequestLogin(email: email, password: password));
    return mapper.mapUserWithTokens(UserWithTokensDto.fromJson(
        json.decode(response?.data as String) as Map<String, dynamic>));
  }

  Future<void> addSubject(
      {required String pdfFile,
      required String title,
      String? description,
      required DateTime date,
      int? duration}) async {
    await httpClient.request(RequestAddSubject(
        pdfFile: pdfFile,
        title: title,
        description: description,
        duration: duration));
  }

  // ---------------------------------------------------------------------------
  @override
  void setTokens(String access, String refresh) {
    httpClient.setTokens(access, refresh);
  }

  // ---------------------------------------------------------------------------
  @override
  Future<void> clearTokens() async {
    httpClient.clearTokens();
  }

  @override
  Future<void> addPdfSubject(
      {required String pdfFileName,
      required Uint8List pdfFile,
      required String title,
      String? description,
      required List<FragmentRequestData> fragments,
      int? duration}) async {
    await httpClient.request(RequestAddPdfSubject(
        pdfFile: pdfFile,
        title: title,
        pdfFileName: pdfFileName,
        description: description,
        fragments: fragments));
  }

  @override
  Future<PaginatedSubjects> getSubjects(
      {int limit = 50, int offset = 0}) async {
    final result = await httpClient
        .request(RequestGetSubjects(limit: limit, offset: offset));

    return PaginatedSubjects(
      offset: int.parse(result!.headers['X-Last-Row-Number']!.first),
      count: int.parse(result.headers['X-Total-Count']!.first),
      subjects: (result.data as List).map(
        (e) => mapper.mapSubject(SubjectDto.fromJson(e)),
      ),
    );
  }

  @override
  Future<void> deleteSubject({required int id}) async {
    await httpClient.request(RequestDeleteSubject(id: id));
  }

  @override
  Future<List<PdfFragment>> getSubjectFragments({required int id}) async {
    final result = await httpClient.request(RequestGetSubjectFragments(id: id));
    return (jsonDecode(result!.data as String) as List)
        .map((e) => mapper.mapPdfFragment(PdfFragmentDto.fromJson(e)))
        .toList();
  }

  @override
  Future<void> updateFragment(
      {required int id,
      String? title,
      String? description,
      String? imagePath,
      String? audioPath,
      int? duration,
      int? subjectDurationDifference,
      bool? isLandscape}) async {
    await httpClient.request(RequestUpdateFragment(
      id: id,
      title: title,
      description: description,
      imagePath: imagePath,
      audioPath: audioPath,
      duration: duration,
      subjectDurationDifference: subjectDurationDifference,
      isLandscape: isLandscape,
    ));
  }

  @override
  Future<void> updateSubject(
      {required int id, String? title, String? description}) async {
    await httpClient.request(
        RequestUpdateSubject(id: id, title: title, description: description));
  }

  @override
  Future<void> deleteFragment({required int id}) async {
    await httpClient.request(RequestDeleteFragment(id: id));
  }

  @override
  Future<void> addFragment(
      {required int subjectId,
      required int displayOrder,
      required String title,
      required String description,
      required File image,
      required bool isLandscape,
      String? audioPath,
      int? duration}) async {
    await httpClient.request(RequestAddFragment(
        subjectId: subjectId,
        displayOrder: displayOrder,
        title: title,
        description: description,
        imageFile: image,
        isLandscape: isLandscape,
        audioPath: audioPath,
        duration: duration));
  }

  @override
  Future<void> reorderFragments(
      {required int subjectId, required List<int> fragmentsIds}) async {
    await httpClient.request(
        RequestReorderFragments(id: subjectId, fragmentsIds: fragmentsIds));
  }

  @override
  Future<PaginatedCourses> getCourses({int limit = 50, int offset = 0}) async {
    final result = await httpClient
        .request(RequestGetTutorCourses(limit: limit, offset: offset));
    return PaginatedCourses(
      offset: int.parse(result!.headers['X-Last-Row-Number']!.first),
      count: int.parse(result.headers['X-Total-Count']!.first),
      courses: (result.data as List).map(
        (e) => mapper.mapCourse(CourseDto.fromJson(e)),
      ),
    );
  }

  @override
  Future<void> addCourse(
      {required String title,
      required String description,
      required List<int> subjectsIds,
      required Locale locale}) async {
    await httpClient.request(RequestAddCourse(
        title: title,
        description: description,
        subjectsIds: subjectsIds,
        locale: locale));
  }

  @override
  Future<Course> getCourse({required int id}) async {
    final result = await httpClient.request(RequestGetCourse(id: id));
    return mapper
        .mapCourse(CourseDto.fromJson(jsonDecode(result!.data as String)));
  }

  @override
  Future<void> updateCourse(
      {required int id,
      required String title,
      required String description,
      required List<int> subjectsIds,
      required Locale locale}) async {
    await httpClient.request(RequestEditCourse(
        id: id,
        title: title,
        description: description,
        subjectsIds: subjectsIds,
        locale: locale));
  }

  @override
  Future<void> deleteCourse({required int id}) async {
    await httpClient.request(RequestDeleteCourse(id: id));
  }

  @override
  Future<void> addImageSubject(
      {required String title,
      String? description,
      required List<ImageFragment> fragments,
      int? duration}) async {
    await httpClient.request(RequestAddImageSubject(
        title: title, description: description, fragments: fragments));
  }

  @override
  Future<User> getUser() async {
    final result = await httpClient.request(RequestGetUser());
    return mapper.mapUser(UserDto.fromJson(jsonDecode(result!.data as String)));
  }

  @override
  Future<void> addFragmentCategory({required String name}) async {
    await httpClient.request(RequestAddFragmentCategory(name: name));
  }

  @override
  Future<void> addSubjectCategory({required String name}) async {
    await httpClient.request(RequestAddSubjectCategory(name: name));
  }

  @override
  Future<void> deleteFragmentCategory({required int id}) async {
    await httpClient.request(RequestDeleteFragmentCategory(id: id));
  }

  @override
  Future<void> deleteSubjectCategory({required int id}) async {
    await httpClient.request(RequestDeleteSubjectCategory(id: id));
  }

  @override
  Future<List<FragmentCategory>> getFragmentCategories() async {
    final result = await httpClient.request(RequestGetFragmentCategories());
    return (result!.data as List)
        .map((e) => mapper.mapFragmentCategory(FragmentCategoryDto.fromJson(e)))
        .toList();
  }

  @override
  Future<List<SubjectCategory>> getSubjectCategories() async {
    final result = await httpClient.request(RequestGetSubjectCategories());
    return (result!.data as List)
        .map((e) => mapper.mapSubjectCategory(SubjectCategoryDto.fromJson(e)))
        .toList();
  }

  @override
  Future<void> updateFragmentCategory(
      {required int id, required String name}) async {
    await httpClient.request(RequestUpdateFragmentCategory(name: name, id: id));
  }

  @override
  Future<void> updateSubjectCategory(
      {required int id, required String name}) async {
    await httpClient.request(RequestUpdateSubjectCategory(name: name, id: id));
  }

  @override
  Future<PaginatedPresentations> getPresentations(
      {int? offset, int? limit, int? categoryId}) async {
    final result = await httpClient.request(RequestGetPresentations(
        limit: limit, offset: offset, categoryId: categoryId));
    return PaginatedPresentations(
      offset: int.parse(result!.headers['X-Last-Row-Number']!.first),
      count: int.parse(result.headers['X-Total-Count']!.first),
      presentations: (result.data as List).map(
        (e) => mapper.mapPresentation(PresentationDto.fromJson(e)),
      ),
    );
  }

  @override
  Future<void> addPresentationFragment(
      {required String presentationId,
      required int displayOrder,
      required String title,
      required String description,
      required Uint8List image,
      required bool isLandscape,
      Uint8List? audio,
      int? duration}) async {
    await httpClient.request(RequestAddPresentationFragment(
        presentationId: presentationId,
        displayOrder: displayOrder,
        title: title,
        description: description,
        audioBytes: audio,
        duration: duration,
        imageBytes: image,
        isLandscape: isLandscape));
  }

  @override
  Future<void> deletePresentation({required String id}) async {
    await httpClient.request(RequestDeletePresentation(id: id));
  }

  @override
  Future<List<PdfFragment>> getPresentationFragments(
      {required String id}) async {
    final result =
        await httpClient.request(RequestGetPresentationFragments(id: id));
    return (jsonDecode(result!.data as String) as List)
        .map((e) => mapper.mapPdfFragment(PdfFragmentDto.fromJson(e)))
        .toList();
  }

  @override
  Future<void> reorderPresentationFragments(
      {required List<String> fragmentsIds}) async {
    await httpClient.request(
        RequestReorderPresentationFragments(fragmentsIds: fragmentsIds));
  }

  @override
  Future<void> updatePresentation(
      {required String id, required String title, String? description}) async {
    await httpClient.request(RequestUpdatePresentation(
        id: id, title: title, description: description));
  }

  @override
  Future<void> addPresentation(
      {required Uint8List pdfFile,
      required String pdfFileName,
      required String title,
      required bool isAudio,
      String? description,
      required List<FragmentRequestData> fragments,
      int? duration}) async {
    await httpClient.request(RequestAddPresentation(
        pdfFile: pdfFile,
        pdfFileName: pdfFileName,
        title: title,
        description: description,
        fragments: fragments,
        isAudio: isAudio,
        duration: duration));
  }

  @override
  Future<void> deletePresentationFragment({required String id}) async {
    await httpClient.request(RequestDeletePresentationFragment(id: id));
  }

  @override
  Future<void> updatePresentationFragment(
      {required String id,
      String? title,
      String? description,
      Uint8List? imageBytes,
      bool? isLandscape,
      Uint8List? audioBytes,
      int? presentationDurationDifference,
      int? duration}) async {
    await httpClient.request(RequestEditPresentationFragment(
        id: id,
        title: title,
        description: description,
        imageBytes: imageBytes,
        audioBytes: audioBytes,
        duration: duration,
        isLandscape: isLandscape,
        presentationDurationDifference: presentationDurationDifference ?? 0));
  }

  @override
  Future<void> addImagePresentation(
      {required String title,
      String? description,
      required List<FragmentRequestData> fragments,
      int? duration}) async {
    await httpClient.request(RequestAddImagePresentation(
        title: title,
        fragments: fragments,
        description: description,
        duration: duration));
  }

  @override
  Future<PresentationWithFragments> getPresentation(String id) async {
    final result = await httpClient.request(RequestGetPresentation(id: id));

    return mapper.mapPresentationWithFragments(
        PresentationWithFragmentsDto.fromJson(
            jsonDecode(result!.data as String)));
  }

  @override
  Future<void> setPresentationPassword(
      {required String password,
      required String confirmPassword,
      required String id}) async {
    await httpClient.request(RequestAddPresentationPassword(
        password: password, confirmPassword: confirmPassword, id: id));
  }
}
