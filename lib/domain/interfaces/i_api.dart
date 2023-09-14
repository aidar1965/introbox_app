import 'dart:io';

import '../models/course.dart';
import '../models/user.dart';
import '../models/fragment.dart';

abstract class IApi {
  Future<void> otpRequest({required String phone, required String lang});

  Future<User?>? loginWithOtp({required String otp, required String phone});

  Future<void> updateUser({required User user});

  Future<void> uploadUserImage({required File image});

  Future<void> publishCourse({required Course course});

  Future<void> publishFragment({required Fragment record});

  Future<List<Course>?>? getPublishedCourses();
}
