// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AssemblingRoute.name: (routeData) {
      final args = routeData.argsAs<AssemblingRouteArgs>(
          orElse: () => const AssemblingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AssemblingScreen(key: args.key),
      );
    },
    CoursePlayerRoute.name: (routeData) {
      final args = routeData.argsAs<CoursePlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CoursePlayerScreen(
          key: args.key,
          course: args.course,
          remote: args.remote,
        ),
      );
    },
    CoursesEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CoursesEmptyPage(),
      );
    },
    CoursesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CoursesScreen(),
      );
    },
    EditCourseRoute.name: (routeData) {
      final args = routeData.argsAs<EditCourseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditCourseScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    EditFragmentRoute.name: (routeData) {
      final args = routeData.argsAs<EditFragmentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditFragmentScreen(
          key: args.key,
          record: args.record,
        ),
      );
    },
    EditSubjectRoute.name: (routeData) {
      final args = routeData.argsAs<EditSubjectRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditSubjectScreen(
          key: args.key,
          subject: args.subject,
        ),
      );
    },
    FragmentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FragmentsScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginEmptyPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    NewCourseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewCourseScreen(),
      );
    },
    OtpRoute.name: (routeData) {
      final args = routeData.argsAs<OtpRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OtpScreen(
          key: args.key,
          phone: args.phone,
        ),
      );
    },
    PlayerRoute.name: (routeData) {
      final args = routeData.argsAs<PlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PlayerScreen(
          key: args.key,
          record: args.record,
          remote: args.remote,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RecordingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecordingScreen(),
      );
    },
    RecordsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecordsEmptyPage(),
      );
    },
    SubjectPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<SubjectPlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubjectPlayerScreen(
          key: args.key,
          subject: args.subject,
        ),
      );
    },
    SubjectsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubjectsEmptyPage(),
      );
    },
    SubjectsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SubjectsScreen(),
      );
    },
  };
}

/// generated route for
/// [AssemblingScreen]
class AssemblingRoute extends PageRouteInfo<AssemblingRouteArgs> {
  AssemblingRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AssemblingRoute.name,
          args: AssemblingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AssemblingRoute';

  static const PageInfo<AssemblingRouteArgs> page =
      PageInfo<AssemblingRouteArgs>(name);
}

class AssemblingRouteArgs {
  const AssemblingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AssemblingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CoursePlayerScreen]
class CoursePlayerRoute extends PageRouteInfo<CoursePlayerRouteArgs> {
  CoursePlayerRoute({
    Key? key,
    required Course course,
    bool? remote,
    List<PageRouteInfo>? children,
  }) : super(
          CoursePlayerRoute.name,
          args: CoursePlayerRouteArgs(
            key: key,
            course: course,
            remote: remote,
          ),
          initialChildren: children,
        );

  static const String name = 'CoursePlayerRoute';

  static const PageInfo<CoursePlayerRouteArgs> page =
      PageInfo<CoursePlayerRouteArgs>(name);
}

class CoursePlayerRouteArgs {
  const CoursePlayerRouteArgs({
    this.key,
    required this.course,
    this.remote,
  });

  final Key? key;

  final Course course;

  final bool? remote;

  @override
  String toString() {
    return 'CoursePlayerRouteArgs{key: $key, course: $course, remote: $remote}';
  }
}

/// generated route for
/// [CoursesEmptyPage]
class CoursesEmpty extends PageRouteInfo<void> {
  const CoursesEmpty({List<PageRouteInfo>? children})
      : super(
          CoursesEmpty.name,
          initialChildren: children,
        );

  static const String name = 'CoursesEmpty';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CoursesScreen]
class CoursesRoute extends PageRouteInfo<void> {
  const CoursesRoute({List<PageRouteInfo>? children})
      : super(
          CoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CoursesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditCourseScreen]
class EditCourseRoute extends PageRouteInfo<EditCourseRouteArgs> {
  EditCourseRoute({
    Key? key,
    required Course course,
    List<PageRouteInfo>? children,
  }) : super(
          EditCourseRoute.name,
          args: EditCourseRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'EditCourseRoute';

  static const PageInfo<EditCourseRouteArgs> page =
      PageInfo<EditCourseRouteArgs>(name);
}

class EditCourseRouteArgs {
  const EditCourseRouteArgs({
    this.key,
    required this.course,
  });

  final Key? key;

  final Course course;

  @override
  String toString() {
    return 'EditCourseRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [EditFragmentScreen]
class EditFragmentRoute extends PageRouteInfo<EditFragmentRouteArgs> {
  EditFragmentRoute({
    Key? key,
    required Fragment record,
    List<PageRouteInfo>? children,
  }) : super(
          EditFragmentRoute.name,
          args: EditFragmentRouteArgs(
            key: key,
            record: record,
          ),
          initialChildren: children,
        );

  static const String name = 'EditFragmentRoute';

  static const PageInfo<EditFragmentRouteArgs> page =
      PageInfo<EditFragmentRouteArgs>(name);
}

class EditFragmentRouteArgs {
  const EditFragmentRouteArgs({
    this.key,
    required this.record,
  });

  final Key? key;

  final Fragment record;

  @override
  String toString() {
    return 'EditFragmentRouteArgs{key: $key, record: $record}';
  }
}

/// generated route for
/// [EditSubjectScreen]
class EditSubjectRoute extends PageRouteInfo<EditSubjectRouteArgs> {
  EditSubjectRoute({
    Key? key,
    required Subject subject,
    List<PageRouteInfo>? children,
  }) : super(
          EditSubjectRoute.name,
          args: EditSubjectRouteArgs(
            key: key,
            subject: subject,
          ),
          initialChildren: children,
        );

  static const String name = 'EditSubjectRoute';

  static const PageInfo<EditSubjectRouteArgs> page =
      PageInfo<EditSubjectRouteArgs>(name);
}

class EditSubjectRouteArgs {
  const EditSubjectRouteArgs({
    this.key,
    required this.subject,
  });

  final Key? key;

  final Subject subject;

  @override
  String toString() {
    return 'EditSubjectRouteArgs{key: $key, subject: $subject}';
  }
}

/// generated route for
/// [FragmentsScreen]
class FragmentsRoute extends PageRouteInfo<void> {
  const FragmentsRoute({List<PageRouteInfo>? children})
      : super(
          FragmentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FragmentsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginEmptyPage]
class LoginEmpty extends PageRouteInfo<void> {
  const LoginEmpty({List<PageRouteInfo>? children})
      : super(
          LoginEmpty.name,
          initialChildren: children,
        );

  static const String name = 'LoginEmpty';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewCourseScreen]
class NewCourseRoute extends PageRouteInfo<void> {
  const NewCourseRoute({List<PageRouteInfo>? children})
      : super(
          NewCourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewCourseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OtpScreen]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    required String phone,
    List<PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const PageInfo<OtpRouteArgs> page = PageInfo<OtpRouteArgs>(name);
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    required this.phone,
  });

  final Key? key;

  final String phone;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [PlayerScreen]
class PlayerRoute extends PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    Key? key,
    required Fragment record,
    bool? remote = false,
    List<PageRouteInfo>? children,
  }) : super(
          PlayerRoute.name,
          args: PlayerRouteArgs(
            key: key,
            record: record,
            remote: remote,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static const PageInfo<PlayerRouteArgs> page = PageInfo<PlayerRouteArgs>(name);
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.record,
    this.remote = false,
  });

  final Key? key;

  final Fragment record;

  final bool? remote;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, record: $record, remote: $remote}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecordingScreen]
class RecordingRoute extends PageRouteInfo<void> {
  const RecordingRoute({List<PageRouteInfo>? children})
      : super(
          RecordingRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecordingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecordsEmptyPage]
class RecordsEmpty extends PageRouteInfo<void> {
  const RecordsEmpty({List<PageRouteInfo>? children})
      : super(
          RecordsEmpty.name,
          initialChildren: children,
        );

  static const String name = 'RecordsEmpty';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubjectPlayerScreen]
class SubjectPlayerRoute extends PageRouteInfo<SubjectPlayerRouteArgs> {
  SubjectPlayerRoute({
    Key? key,
    required Subject subject,
    List<PageRouteInfo>? children,
  }) : super(
          SubjectPlayerRoute.name,
          args: SubjectPlayerRouteArgs(
            key: key,
            subject: subject,
          ),
          initialChildren: children,
        );

  static const String name = 'SubjectPlayerRoute';

  static const PageInfo<SubjectPlayerRouteArgs> page =
      PageInfo<SubjectPlayerRouteArgs>(name);
}

class SubjectPlayerRouteArgs {
  const SubjectPlayerRouteArgs({
    this.key,
    required this.subject,
  });

  final Key? key;

  final Subject subject;

  @override
  String toString() {
    return 'SubjectPlayerRouteArgs{key: $key, subject: $subject}';
  }
}

/// generated route for
/// [SubjectsEmptyPage]
class SubjectsEmpty extends PageRouteInfo<void> {
  const SubjectsEmpty({List<PageRouteInfo>? children})
      : super(
          SubjectsEmpty.name,
          initialChildren: children,
        );

  static const String name = 'SubjectsEmpty';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubjectsScreen]
class SubjectsRoute extends PageRouteInfo<void> {
  const SubjectsRoute({List<PageRouteInfo>? children})
      : super(
          SubjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubjectsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
