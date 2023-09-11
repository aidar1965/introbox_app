import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/models/course.dart';
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
import '../screens/records/edit_record/edit_record_screen.dart';
import '../screens/records/records_screen.dart';
import '../screens/subjects/edit_subject/edit_subject_screen.dart';
import '../screens/subjects/subjects_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter({
    required this.isAuthenticated,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated ||
        resolver.route.name == LoginRoute.name ||
        resolver.route.name == RegisterRoute.name) {
      // we continue navigation
      resolver.next();
    } else {
      // else we navigate to the Login page so we get authenticateed
      push(const LoginRoute());
    }
  }

  final bool isAuthenticated;
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeScreen, children: [
          AutoRoute(path: 'courses', page: EmptyRouterPage, children: [
            AutoRoute(path: '', page: CoursesScreen, initial: true),
            AutoRoute(path: 'new_course', page: NewCourseScreen),
            AutoRoute(path: 'edit_course', page: EditCourseScreen),
          ]),
          AutoRoute(path: 'subjects', page: EmptyRouterPage, children: [
            AutoRoute(path: '', page: SubjectsScreen, initial: true),
            AutoRoute(path: 'assembling', page: AssemblingScreen),
            AutoRoute(path: 'edit_subject', page: EditSubjectScreen),
          ]),
          AutoRoute(path: 'records', page: EmptyRouterPage, children: [
            AutoRoute(path: '', page: RecordsScreen, initial: true),
            AutoRoute(path: 'record', page: RecordingScreen),
            AutoRoute(path: 'edit_record', page: EditRecordScreen),
          ]),
          AutoRoute(
            path: 'profile',
            page: ProfileScreen,
          ),
          AutoRoute(path: 'login', page: EmptyRouterPage, children: [
            AutoRoute(path: '', page: LoginScreen, initial: true),
            AutoRoute(path: 'otp', page: OtpScreen)
          ]),
        ]),
      ];
}
