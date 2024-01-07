import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/interfaces/i_auth_controller.dart';
import '../../domain/locator/locator.dart';
import '../../domain/models/pdf_fragment.dart';
import '../../domain/models/presentation.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/login/login_screen.dart';

import '../screens/presentation/presentation_screen.dart';
import '../screens/presentations/audio_recording/audio_recording_screen.dart';
import '../screens/presentations/edit_presentation/edit_presentation_screen.dart';
import '../screens/presentations/fragments_reorder/fragmets_reorder_screen.dart';
import '../screens/presentations/image_add_fragment/image_add_fragment_screen.dart';
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
        AutoRoute(
            path: '/presentations',
            page: PresentationsRoute.page,
            initial: true),
        AutoRoute(
          path: '/create-presentation-pdf',
          page: PdfCreatePresentationRoute.page,
        ),
        AutoRoute(
          path: '/create-presentation-images',
          page: ImageCreatePresentationRoute.page,
        ),
        CustomRoute(
            path: '/presentation/:id',
            page: PresentationRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),

        CustomRoute(
            path: '/edit-presentation',
            page: EditPresentationRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/audio-recording',
            page: AudioRecordingRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/presentation-add-fragment',
            page: PresentationAddFragmentRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/image-add-fragment',
            page: ImageAddFragmentRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/reorder-fragments',
            page: FragmentsReorderRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        AutoRoute(
          path: '/profile',
          page: ProfileRoute.page,
        ),
        // AutoRoute(path: 'edit_subject', page: EditSubjectRoute.page)

        // ]),

        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
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
            path: '/presentationPlayer',
            page: PresentationPlayerRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/presentation/:id',
            page: PresentationRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    print('navigating');

    if (isAuthenticated ||
        resolver.route.name == LoginRoute.name ||
        resolver.route.name == RegisterRoute.name ||
        resolver.route.name == ConfirmationRoute.name ||
        resolver.route.name == PresentationRoute.name) {
      print('126');
      print(resolver.route.name);
      // we continue navigation
      resolver.next();
    } else {
      print(resolver.route.name);
      // else we navigate to the Login page so we get authenticateed
      push(const LoginRoute());
    }
  }
}

@RoutePage(name: 'HomeEmpty')
class HomeEmptyPage extends AutoRouter {}

@RoutePage(name: 'PresentationsEmpty')
class PresentationsEmptyPage extends AutoRouter {}

@RoutePage(name: 'LoginEmpty')
class LoginEmptyPage extends AutoRouter {}
