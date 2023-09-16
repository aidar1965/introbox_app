import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/models/course.dart';
import '../../domain/models/fragment.dart';
import '../../domain/models/subject.dart';
import '../player/course_player_screen.dart';
import '../player/player_screen.dart';
import '../player/subject_player_screen.dart';
import '../screens/assembling/assembling_screen.dart';
import '../screens/courses/courses_screen.dart';
import '../screens/courses/edit_course/edit_course_screen.dart';
import '../screens/courses/new_course/new_couse_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/login/otp_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/recording/recording_screen.dart';
import '../screens/records/edit_record/edit_fragment_screen.dart';
import '../screens/records/fragments_screen.dart';
import '../screens/subjects/edit_subject/edit_subject_screen.dart';
import '../screens/subjects/subjects_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page, children: [
          AutoRoute(path: 'courses', page: CoursesEmpty.page, children: [
            AutoRoute(path: '', page: CoursesRoute.page, initial: true),
            AutoRoute(path: 'new_course', page: NewCourseRoute.page),
            AutoRoute(path: 'edit_course', page: EditCourseRoute.page),
          ]),
          AutoRoute(path: 'subjects', page: SubjectsEmpty.page, children: [
            AutoRoute(path: '', page: SubjectsRoute.page, initial: true),
            AutoRoute(path: 'assembling', page: AssemblingRoute.page),
            AutoRoute(path: 'edit_subject', page: EditSubjectRoute.page),
          ]),
          AutoRoute(path: 'records', page: RecordsEmpty.page, children: [
            AutoRoute(path: '', page: FragmentsRoute.page, initial: true),
            AutoRoute(path: 'record', page: RecordingRoute.page),
            AutoRoute(path: 'edit_record', page: EditFragmentRoute.page),
          ]),
          AutoRoute(
            path: 'profile',
            page: ProfileRoute.page,
          ),
          AutoRoute(path: 'login', page: LoginEmpty.page, children: [
            AutoRoute(path: '', page: LoginRoute.page, initial: true),
            AutoRoute(path: 'otp', page: OtpRoute.page)
          ]),
        ]),
      ];
}

@RoutePage(name: 'CoursesEmpty')
class CoursesEmptyPage extends AutoRouter {}

@RoutePage(name: 'SubjectsEmpty')
class SubjectsEmptyPage extends AutoRouter {}

@RoutePage(name: 'RecordsEmpty')
class RecordsEmptyPage extends AutoRouter {}

@RoutePage(name: 'LoginEmpty')
class LoginEmptyPage extends AutoRouter {}
