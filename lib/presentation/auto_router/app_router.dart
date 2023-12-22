import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/interfaces/i_auth_controller.dart';
import '../../domain/locator/locator.dart';
import '../../domain/models/course.dart';
import '../../domain/models/fragment.dart';
import '../../domain/models/pdf_fragment.dart';
import '../../domain/models/presentation.dart';
import '../../domain/models/subject.dart';
import '../player/course_player_screen.dart';
import '../player/player_screen.dart';
import '../player/subject_player_screen.dart';

import '../screens/courses/courses_screen.dart';
import '../screens/courses/edit_course/edit_course_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/login/login_screen.dart';

import '../screens/pdf_courses/pdf_add_course/pdf_add_course_screen.dart';
import '../screens/pdf_courses/pdf_course_details/pdf_course_details_screen.dart';
import '../screens/pdf_courses/pdf_courses_screen.dart';
import '../screens/pdf_courses/pdf_edit_course/pdf_edit_course_screen.dart';
import '../screens/pdf_subject/audio_recording/audio_recording_screen.dart';
import '../screens/pdf_subject/fragments_reorder/fragmets_reorder_screen.dart';
import '../screens/pdf_subject/image_create_subject/image_add_fragment/image_add_fragment_screen.dart';
import '../screens/pdf_subject/image_create_subject/image_create_subject_screen.dart';
import '../screens/pdf_subject/pdf_add_fragment/pdf_add_fragment_screen.dart';
import '../screens/pdf_subject/pdf_create_subject/pdf_create_subject_screen.dart';
import '../screens/pdf_subject/pdf_edit_subject/pdf_edit_subject_screen.dart';
import '../screens/pdf_subject/pdf_subject_player/pdf_subject_player_screen.dart';

import '../screens/presentations/edit_presentation/edit_presentation_screen.dart';
import '../screens/presentations/image_create_presentation/image_create_presentation_screen.dart';
import '../screens/presentations/pdf_create_presentation/pdf_create_presentation_screen.dart';
import '../screens/presentations/presentation_add_fragment/presentation_add_fragment_screen.dart';
import '../screens/presentations/prsentation_player/presentation_player_screen.dart';
import '../screens/presentations/prsentations_screen.dart';
import '../screens/profile/profile_screen.dart';

import '../screens/register/confirmation/confirmation_screen.dart';
import '../screens/register/register_screen.dart';

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
            AutoRoute(path: '', page: PdfCoursesRoute.page, initial: true),
            AutoRoute(path: 'new_course', page: PdfAddCourseRoute.page),
            AutoRoute(path: 'edit_course', page: PdfEditCourseRoute.page),
            AutoRoute(path: 'course_details', page: PdfCourseDetailsRoute.page),
          ]),
          // AutoRoute(path: 'subjects', page: SubjectsEmpty.page, children: [
          //   AutoRoute(path: '', page: SubjectsRoute.page, initial: true),
          //   AutoRoute(path: 'assembling', page: AssemblingRoute.page),
          //   AutoRoute(path: 'edit_subject', page: EditSubjectRoute.page),
          // ]),
          AutoRoute(
              path: 'presentations',
              page: PresentationsEmpty.page,
              children: [
                AutoRoute(
                    path: '', page: PresentationsRoute.page, initial: true),
                AutoRoute(
                  path: 'create-presentation-pdf',
                  page: PdfCreatePresentationRoute.page,
                ),
                AutoRoute(
                  path: 'create-presentation-images',
                  page: ImageCreatePresentationRoute.page,
                ),
                AutoRoute(
                  path: 'add-image-fragment',
                  page: ImageAddFragmentRoute.page,
                ),
                AutoRoute(
                    path: 'audio-recording', page: AudioRecordingRoute.page),
                CustomRoute(
                    path: 'edit-presentation',
                    page: EditPresentationRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 400),
                CustomRoute(
                    path: 'presentation-add-fragment',
                    page: PresentationAddFragmentRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 400),
                CustomRoute(
                    path: 'reorder-fragments',
                    page: FragmentsReorderRoute.page,
                    transitionsBuilder: TransitionsBuilders.slideLeft,
                    durationInMilliseconds: 400),

                // AutoRoute(path: 'edit_subject', page: EditSubjectRoute.page)
              ]),
          // AutoRoute(path: 'records', page: RecordsEmpty.page, children: [
          //   AutoRoute(path: '', page: FragmentsRoute.page, initial: true),
          //   AutoRoute(path: 'record', page: RecordingRoute.page),
          //   AutoRoute(path: 'edit_record', page: EditFragmentRoute.page),
          // ]),
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
        CustomRoute(
            path: '/pdfSubjectPlayer',
            page: PdfSubjectPlayerRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/presentation/play/:id',
            page: PresentationPlayerRoute.page,
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

@RoutePage(name: 'PresentationsEmpty')
class PresentationsEmptyPage extends AutoRouter {}

@RoutePage(name: 'RecordsEmpty')
class RecordsEmptyPage extends AutoRouter {}

@RoutePage(name: 'LoginEmpty')
class LoginEmptyPage extends AutoRouter {}

@RoutePage(name: 'CreatePdfSubjectsEmpty')
class CreatePdfSubjectsEmptyPage extends AutoRouter {}
