import 'dart:core';
import 'dart:io';

import '../../data/api/models/requests/fragment_request_data.dart';
import '../models/course.dart';
import '../models/pdf_fragment.dart';
import '../models/responses/paginated_sibjects.dart';
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

  Future<void> addPdfSubject(
      {required String pdfFile,
      required String title,
      String? description,
      required List<FragmentRequestData> fragments,
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
  });
}
