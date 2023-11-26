import 'dart:convert';
import 'dart:io';
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:moki_tutor/data/api/models/responses/subject_dto.dart';

import 'package:moki_tutor/domain/interfaces/i_api.dart';

import 'package:moki_tutor/domain/models/user.dart';
import 'package:moki_tutor/domain/models/course.dart';

import '../../domain/models/fragment.dart';
import '../../domain/models/pdf_fragment.dart';
import '../../domain/models/responses/paginated_sibjects.dart';
import '../../domain/models/user_with_tokens.dart';
import 'http_client/http_client.dart';
import 'mapper/mapper.dart';
import 'models/requests/fragment_request_data.dart';
import 'models/requests/register_request.dart';
import 'models/requests/request_add_pdf_subject.dart';
import 'models/requests/request_add_subject.dart';
import 'models/requests/request_confirmation.dart';
import 'models/requests/request_delete_subject.dart';
import 'models/requests/request_get_subject_fragments.dart';
import 'models/requests/request_get_subjects.dart';
import 'models/requests/request_login.dart';
import 'models/requests/request_update_fragment.dart';
import 'models/responses/pdf_fragment_dto.dart';

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
  Future<void> publishCourse({required Course course}) async {}

  @override
  Future<void> publishFragment({required Fragment record}) async {}

  @override
  Future<void> updateUser({required User user}) async {}

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
      {required String pdfFile,
      required String title,
      String? description,
      required List<FragmentRequestData> fragments,
      int? duration}) async {
    await httpClient.request(RequestAddPdfSubject(
        pdfFile: pdfFile,
        title: title,
        description: description,
        fragments: fragments));
  }

  @override
  Future<PaginatedSubjects> getSubjects(
      {int limit = 50, int offset = 0}) async {
    final result = await httpClient
        .request(RequestGetSubjects(limit: limit, offset: offset));
    print(result!.headers['X-Last-Row-Number']!.first);
    print(result.headers['X-Total-Count']!.first);
    return PaginatedSubjects(
      offset: int.parse(result.headers['X-Last-Row-Number']!.first),
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
  Future<void> updateFragment({
    required int id,
    String? title,
    String? description,
    String? imagePath,
    String? audioPath,
    int? duration,
  }) async {
    await httpClient.request(RequestUpdateFragment(
        id: id,
        title: title,
        description: description,
        imagePath: imagePath,
        audioPath: audioPath,
        duration: duration));
  }
}
