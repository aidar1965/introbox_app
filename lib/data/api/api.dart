import 'dart:io';

import 'package:dio/dio.dart';
import 'package:moki_tutor/data/mapper/http_data_mapper.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/models/user.dart';
import 'package:moki_tutor/domain/models/course.dart';

import '../../domain/models/fragment.dart';
import 'http_client/http_client.dart';

typedef _Response = Response<Object?>?;
typedef _JsonObject = Map<String, Object?>;

class Api implements IApi {
  HttpDataMapper mapper = HttpDataMapper();
  DioClient httpClient = DioClient();

  @override
  Future<List<Course>?>? getPublishedCourses() async {}

  @override
  Future<void> initDioClient() async {}

  @override
  Future<User?>? loginWithOtp(
      {required String otp, required String phone}) async {}

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
}
