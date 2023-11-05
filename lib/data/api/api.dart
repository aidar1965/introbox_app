import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/models/user.dart';
import 'package:moki_tutor/domain/models/course.dart';

import '../../domain/models/fragment.dart';
import '../../domain/models/user_with_tokens.dart';
import 'http_client/http_client.dart';
import 'mapper/mapper.dart';
import 'models/requests/register_request.dart';
import 'models/requests/request_add_subject.dart';
import 'models/requests/request_confirmation.dart';
import 'models/requests/request_login.dart';
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
  Future<List<Course>?>? getPublishedCourses() async {}

  @override
  Future<User?>? loginWithOtp(
      {required String otp, required String email}) async {}

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

  @override
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
}
