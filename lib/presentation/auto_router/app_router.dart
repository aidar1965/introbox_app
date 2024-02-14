import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/interfaces/i_auth_controller.dart';
import '../../domain/locator/locator.dart';
import '../../domain/models/pdf_fragment.dart';
import '../../domain/models/presentation.dart';

import '../screens/change_password/change_password_screen.dart';
import '../screens/channels/channels_screen.dart';
import '../screens/companies/companies_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/login/login_screen.dart';

import '../screens/main/main_screen.dart';
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

import '../screens/public_presentation/public_presentation_screen.dart';
import '../screens/recover_password_screen/recover_password_screen.dart';
import '../screens/register/confirmation/confirmation_screen.dart';
import '../screens/register/register_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter() {
    isAuthenticated = authController.isAuthenticated;

    authController.addChangeListener(() {
      isAuthenticated = authController.isAuthenticated;
      if (isAuthenticated == false) {
        replace(const LoginRoute());
      }
    });
  }

  final authController = getIt<IAuthController>();
  late bool isAuthenticated;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: MainRoute.page, initial: true),
        AutoRoute(
          path: '/presentations',
          page: PresentationsRoute.page,
        ),
        AutoRoute(
          path: '/channels',
          page: ChannelsRoute.page,
        ),
        AutoRoute(
          path: '/companies',
          page: CompaniesRoute.page,
        ),
        AutoRoute(
          path: '/create-presentation-pdf',
          page: PdfCreatePresentationRoute.page,
        ),
        AutoRoute(
          path: '/create-presentation-images',
          page: ImageCreatePresentationRoute.page,
        ),
        CustomRoute(
            path: '/my-presentation/:id',
            page: PresentationRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/presentation/:id',
            page: PublicPresentationRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 400),
        CustomRoute(
            path: '/edit-presentation/:id',
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
        AutoRoute(
          path: '/recover',
          page: RecoverPasswordRoute.page,
        ),
        AutoRoute(
          path: '/change_password',
          page: ChangePasswordRoute.page,
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

    if (isAuthenticated) {
      resolver.next();
    } else if (resolver.route.name == LoginRoute.name ||
        resolver.route.name == MainRoute.name ||
        resolver.route.name == RegisterRoute.name ||
        resolver.route.name == ConfirmationRoute.name ||
        resolver.route.name == PresentationRoute.name ||
        resolver.route.name == PublicPresentationRoute.name ||
        resolver.route.name == RecoverPasswordRoute.name) {
      // we continue navigation
      resolver.next();
    } else {
      print(resolver.route.name);
      // else we navigate to the Login page so we get authenticateed
      push(const LoginRoute());
    }
  }
}
