import 'package:auto_route/auto_route.dart';

import '../screens/courses/assembling/assembling_screen.dart';
import '../screens/courses/courses_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/recording/recording_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: HomeScreen, children: [
      AutoRoute(
        path: '',
        page: CoursesScreen,
      ),
      AutoRoute(
        path: 'course_assembling',
        page: AssemblingScreen,
      ),
      AutoRoute(
        path: 'course_record',
        page: RecordingScreen,
      ),
      AutoRoute(
        path: 'profile',
        page: ProfileScreen,
      ),
    ]),
    AutoRoute(
      path: 'login',
      page: LoginScreen,
    )
  ],
)
class $AppRouter {}
