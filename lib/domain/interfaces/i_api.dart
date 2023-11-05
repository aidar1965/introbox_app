import 'dart:io';

import '../models/course.dart';
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

  Future<void> updateUser({required User user});

  Future<void> uploadUserImage({required File image});

  Future<void> publishCourse({required Course course});

  Future<void> publishFragment({required Fragment record});

  Future<List<Course>?>? getPublishedCourses();

  Future<void> confirm({required String email, required String code});

  Future<UserWithTokens> login(
      {required String email, required String password});

  Future<void> addSubject(
      {required String pdfFile,
      required String title,
      String? description,
      required DateTime date,
      int? duration});

  // ---------------------------------------------------------------------------
  Future<void> clearTokens();

  // ---------------------------------------------------------------------------
  void setTokens(String access, String refresh);
}
