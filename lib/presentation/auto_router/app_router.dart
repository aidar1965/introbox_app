import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/interfaces/i_auth_controller.dart';
import '../../domain/locator/locator.dart';
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
import '../screens/pdf/audio_recording/audio_recording_screen.dart';
import '../screens/pdf/pdf_create_subject/pdf_create_subject_screen.dart';
import '../screens/pdf/pdf_edit_subject/pdf_edit_subject_screen.dart';
import '../screens/pdf/pdf_subject_list/pdf_subjects_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/recording/recording_screen.dart';
import '../screens/records/edit_record/edit_fragment_screen.dart';
import '../screens/records/fragments_screen.dart';
import '../screens/register/confirmation/confirmation_screen.dart';
import '../screens/register/register_screen.dart';
import '../screens/subjects/edit_subject/edit_subject_screen.dart';
import '../screens/subjects/subjects_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter() {
    isAuthenticated = authController.isAuthenticated;
    authController.addChangeListener(() {
      isAuthenticated = authController.isAuthenticated;
    });
  }

  final authController = getIt<IAuthController>();
  late bool isAuthenticated;

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
          AutoRoute(
              path: 'pdfSubjects',
              page: PdfSubjectsEmpty.page,
              children: [
                AutoRoute(path: '', page: PdfSubjectsRoute.page, initial: true),
                AutoRoute(
                  path: 'createPdfSubject',
                  page: PdfCreateSubjectRoute.page,
                ),
                AutoRoute(
                    path: 'audioRecording', page: AudioRecordingRoute.page),
                AutoRoute(
                  path: 'editPdfSubject',
                  page: PdfEditSubjectRoute.page,
                ),
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
        ]),
        AutoRoute(path: '/login', page: LoginRoute.page, initial: true),
        CustomRoute(
            path: '/register',
            page: RegisterRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/confirmation',
            page: ConfirmationRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated ||
        resolver.route.name == LoginRoute.name ||
        resolver.route.name == RegisterRoute.name ||
        resolver.route.name == ConfirmationRoute.name) {
      // we continue navigation
      resolver.next();
    } else {
      // else we navigate to the Login page so we get authenticateed
      push(const LoginRoute());
    }
  }
}

@RoutePage(name: 'CoursesEmpty')
class CoursesEmptyPage extends AutoRouter {}

@RoutePage(name: 'SubjectsEmpty')
class SubjectsEmptyPage extends AutoRouter {}

@RoutePage(name: 'PdfSubjectsEmpty')
class PdfSubjectsEmptyPage extends AutoRouter {}

@RoutePage(name: 'RecordsEmpty')
class RecordsEmptyPage extends AutoRouter {}

@RoutePage(name: 'LoginEmpty')
class LoginEmptyPage extends AutoRouter {}

@RoutePage(name: 'CreatePdfSubjectsEmpty')
class CreatePdfSubjectsEmptyPage extends AutoRouter {}
