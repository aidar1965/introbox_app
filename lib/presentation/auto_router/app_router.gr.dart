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
    CoursesEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CoursesEmptyPage(),
      );
    },
    SubjectsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubjectsEmptyPage(),
      );
    },
    PdfSubjectsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfSubjectsEmptyPage(),
      );
    },
    RecordsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RecordsEmptyPage(),
      );
    },
    LoginEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginEmptyPage(),
      );
    },
    CreatePdfSubjectsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreatePdfSubjectsEmptyPage(),
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
    AssemblingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AssemblingScreen(),
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
    NewCourseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewCourseScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    AudioRecordingRoute.name: (routeData) {
      final args = routeData.argsAs<AudioRecordingRouteArgs>(
          orElse: () => const AudioRecordingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AudioRecordingScreen(
          key: args.key,
          imageData: args.imageData,
          imagePath: args.imagePath,
        ),
      );
    },
    PdfCreateSubjectRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PdfCreateSubjectScreen(),
      );
    },
    PdfEditSubjectRoute.name: (routeData) {
      final args = routeData.argsAs<PdfEditSubjectRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfEditSubjectScreen(
          key: args.key,
          subject: args.subject,
        ),
      );
    },
    PdfSubjectsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PdfSubjectsScreen(),
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
    FragmentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FragmentsScreen(),
      );
    },
    ConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConfirmationScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterScreen(key: args.key),
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
    SubjectsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SubjectsScreen(),
      );
    },
  };
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
/// [PdfSubjectsEmptyPage]
class PdfSubjectsEmpty extends PageRouteInfo<void> {
  const PdfSubjectsEmpty({List<PageRouteInfo>? children})
      : super(
          PdfSubjectsEmpty.name,
          initialChildren: children,
        );

  static const String name = 'PdfSubjectsEmpty';

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
/// [CreatePdfSubjectsEmptyPage]
class CreatePdfSubjectsEmpty extends PageRouteInfo<void> {
  const CreatePdfSubjectsEmpty({List<PageRouteInfo>? children})
      : super(
          CreatePdfSubjectsEmpty.name,
          initialChildren: children,
        );

  static const String name = 'CreatePdfSubjectsEmpty';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [AssemblingScreen]
class AssemblingRoute extends PageRouteInfo<void> {
  const AssemblingRoute({List<PageRouteInfo>? children})
      : super(
          AssemblingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AssemblingRoute';

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
/// [AudioRecordingScreen]
class AudioRecordingRoute extends PageRouteInfo<AudioRecordingRouteArgs> {
  AudioRecordingRoute({
    Key? key,
    Uint8List? imageData,
    String? imagePath,
    List<PageRouteInfo>? children,
  }) : super(
          AudioRecordingRoute.name,
          args: AudioRecordingRouteArgs(
            key: key,
            imageData: imageData,
            imagePath: imagePath,
          ),
          initialChildren: children,
        );

  static const String name = 'AudioRecordingRoute';

  static const PageInfo<AudioRecordingRouteArgs> page =
      PageInfo<AudioRecordingRouteArgs>(name);
}

class AudioRecordingRouteArgs {
  const AudioRecordingRouteArgs({
    this.key,
    this.imageData,
    this.imagePath,
  });

  final Key? key;

  final Uint8List? imageData;

  final String? imagePath;

  @override
  String toString() {
    return 'AudioRecordingRouteArgs{key: $key, imageData: $imageData, imagePath: $imagePath}';
  }
}

/// generated route for
/// [PdfCreateSubjectScreen]
class PdfCreateSubjectRoute extends PageRouteInfo<void> {
  const PdfCreateSubjectRoute({List<PageRouteInfo>? children})
      : super(
          PdfCreateSubjectRoute.name,
          initialChildren: children,
        );

  static const String name = 'PdfCreateSubjectRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PdfEditSubjectScreen]
class PdfEditSubjectRoute extends PageRouteInfo<PdfEditSubjectRouteArgs> {
  PdfEditSubjectRoute({
    Key? key,
    required Subject subject,
    List<PageRouteInfo>? children,
  }) : super(
          PdfEditSubjectRoute.name,
          args: PdfEditSubjectRouteArgs(
            key: key,
            subject: subject,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfEditSubjectRoute';

  static const PageInfo<PdfEditSubjectRouteArgs> page =
      PageInfo<PdfEditSubjectRouteArgs>(name);
}

class PdfEditSubjectRouteArgs {
  const PdfEditSubjectRouteArgs({
    this.key,
    required this.subject,
  });

  final Key? key;

  final Subject subject;

  @override
  String toString() {
    return 'PdfEditSubjectRouteArgs{key: $key, subject: $subject}';
  }
}

/// generated route for
/// [PdfSubjectsScreen]
class PdfSubjectsRoute extends PageRouteInfo<void> {
  const PdfSubjectsRoute({List<PageRouteInfo>? children})
      : super(
          PdfSubjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PdfSubjectsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [ConfirmationScreen]
class ConfirmationRoute extends PageRouteInfo<ConfirmationRouteArgs> {
  ConfirmationRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmationRoute.name,
          args: ConfirmationRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmationRoute';

  static const PageInfo<ConfirmationRouteArgs> page =
      PageInfo<ConfirmationRouteArgs>(name);
}

class ConfirmationRouteArgs {
  const ConfirmationRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'ConfirmationRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
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
