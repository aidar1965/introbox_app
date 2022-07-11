// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/courses/assembling/assembling_screen.dart' as _i4;
import '../screens/courses/courses_screen.dart' as _i3;
import '../screens/home_screen/home_screen.dart' as _i1;
import '../screens/login/login_screen.dart' as _i2;
import '../screens/profile/profile_screen.dart' as _i6;
import '../screens/recording/recording_screen.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    CoursesScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.CoursesScreen());
    },
    AssemblingScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AssemblingScreen());
    },
    RecordingScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RecordingScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfileScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeScreenRoute.name, path: '/', children: [
          _i7.RouteConfig(CoursesScreenRoute.name,
              path: '', parent: HomeScreenRoute.name),
          _i7.RouteConfig(AssemblingScreenRoute.name,
              path: 'course_assembling', parent: HomeScreenRoute.name),
          _i7.RouteConfig(RecordingScreenRoute.name,
              path: 'course_record', parent: HomeScreenRoute.name),
          _i7.RouteConfig(ProfileScreenRoute.name,
              path: 'profile', parent: HomeScreenRoute.name)
        ]),
        _i7.RouteConfig(LoginScreenRoute.name, path: 'login')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeScreenRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i7.PageRouteInfo<void> {
  const LoginScreenRoute() : super(LoginScreenRoute.name, path: 'login');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.CoursesScreen]
class CoursesScreenRoute extends _i7.PageRouteInfo<void> {
  const CoursesScreenRoute() : super(CoursesScreenRoute.name, path: '');

  static const String name = 'CoursesScreenRoute';
}

/// generated route for
/// [_i4.AssemblingScreen]
class AssemblingScreenRoute extends _i7.PageRouteInfo<void> {
  const AssemblingScreenRoute()
      : super(AssemblingScreenRoute.name, path: 'course_assembling');

  static const String name = 'AssemblingScreenRoute';
}

/// generated route for
/// [_i5.RecordingScreen]
class RecordingScreenRoute extends _i7.PageRouteInfo<void> {
  const RecordingScreenRoute()
      : super(RecordingScreenRoute.name, path: 'course_record');

  static const String name = 'RecordingScreenRoute';
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileScreenRoute extends _i7.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(ProfileScreenRoute.name, path: 'profile');

  static const String name = 'ProfileScreenRoute';
}
