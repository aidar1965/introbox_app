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
    PresentationsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PresentationsEmptyPage(),
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
    PdfAddCourseRoute.name: (routeData) {
      final args = routeData.argsAs<PdfAddCourseRouteArgs>(
          orElse: () => const PdfAddCourseRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfAddCourseScreen(key: args.key),
      );
    },
    PdfCoursesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PdfCoursesScreen(),
      );
    },
    PdfCourseDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PdfCourseDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfCourseDetailsScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    PdfEditCourseRoute.name: (routeData) {
      final args = routeData.argsAs<PdfEditCourseRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfEditCourseScreen(
          key: args.key,
          course: args.course,
        ),
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
    FragmentsReorderRoute.name: (routeData) {
      final args = routeData.argsAs<FragmentsReorderRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FragmentsReorderScreen(
          key: args.key,
          fragments: args.fragments,
        ),
      );
    },
    ImageAddFragmentRoute.name: (routeData) {
      final args = routeData.argsAs<ImageAddFragmentRouteArgs>(
          orElse: () => const ImageAddFragmentRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ImageAddFragmentScreen(key: args.key),
      );
    },
    ImageCreateSubjectRoute.name: (routeData) {
      final args = routeData.argsAs<ImageCreateSubjectRouteArgs>(
          orElse: () => const ImageCreateSubjectRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ImageCreateSubjectScreen(key: args.key),
      );
    },
    PdfAddFragmentRoute.name: (routeData) {
      final args = routeData.argsAs<PdfAddFragmentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfAddFragmentScreen(
          key: args.key,
          displayOder: args.displayOder,
          subjectId: args.subjectId,
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
    PdfSubjectPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<PdfSubjectPlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfSubjectPlayerScreen(
          key: args.key,
          subject: args.subject,
        ),
      );
    },
    EditPresentationRoute.name: (routeData) {
      final args = routeData.argsAs<EditPresentationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditPresentationScreen(
          key: args.key,
          presentation: args.presentation,
        ),
      );
    },
    ImageCreatePresentationRoute.name: (routeData) {
      final args = routeData.argsAs<ImageCreatePresentationRouteArgs>(
          orElse: () => const ImageCreatePresentationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ImageCreatePresentationScreen(key: args.key),
      );
    },
    PdfCreatePresentationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PdfCreatePresentationScreen(),
      );
    },
    PresentationAddFragmentRoute.name: (routeData) {
      final args = routeData.argsAs<PresentationAddFragmentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PresentationAddFragmentScreen(
          key: args.key,
          displayOder: args.displayOder,
          presentationId: args.presentationId,
        ),
      );
    },
    PresentationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PresentationsScreen(),
      );
    },
    PresentationPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<PresentationPlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PresentationPlayerScreen(
          key: args.key,
          presentation: args.presentation,
          presentationId: args.presentationId,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
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
/// [PresentationsEmptyPage]
class PresentationsEmpty extends PageRouteInfo<void> {
  const PresentationsEmpty({List<PageRouteInfo>? children})
      : super(
          PresentationsEmpty.name,
          initialChildren: children,
        );

  static const String name = 'PresentationsEmpty';

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
/// [PdfAddCourseScreen]
class PdfAddCourseRoute extends PageRouteInfo<PdfAddCourseRouteArgs> {
  PdfAddCourseRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PdfAddCourseRoute.name,
          args: PdfAddCourseRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PdfAddCourseRoute';

  static const PageInfo<PdfAddCourseRouteArgs> page =
      PageInfo<PdfAddCourseRouteArgs>(name);
}

class PdfAddCourseRouteArgs {
  const PdfAddCourseRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PdfAddCourseRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PdfCoursesScreen]
class PdfCoursesRoute extends PageRouteInfo<void> {
  const PdfCoursesRoute({List<PageRouteInfo>? children})
      : super(
          PdfCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PdfCoursesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PdfCourseDetailsScreen]
class PdfCourseDetailsRoute extends PageRouteInfo<PdfCourseDetailsRouteArgs> {
  PdfCourseDetailsRoute({
    Key? key,
    required Course course,
    List<PageRouteInfo>? children,
  }) : super(
          PdfCourseDetailsRoute.name,
          args: PdfCourseDetailsRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfCourseDetailsRoute';

  static const PageInfo<PdfCourseDetailsRouteArgs> page =
      PageInfo<PdfCourseDetailsRouteArgs>(name);
}

class PdfCourseDetailsRouteArgs {
  const PdfCourseDetailsRouteArgs({
    this.key,
    required this.course,
  });

  final Key? key;

  final Course course;

  @override
  String toString() {
    return 'PdfCourseDetailsRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [PdfEditCourseScreen]
class PdfEditCourseRoute extends PageRouteInfo<PdfEditCourseRouteArgs> {
  PdfEditCourseRoute({
    Key? key,
    required Course course,
    List<PageRouteInfo>? children,
  }) : super(
          PdfEditCourseRoute.name,
          args: PdfEditCourseRouteArgs(
            key: key,
            course: course,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfEditCourseRoute';

  static const PageInfo<PdfEditCourseRouteArgs> page =
      PageInfo<PdfEditCourseRouteArgs>(name);
}

class PdfEditCourseRouteArgs {
  const PdfEditCourseRouteArgs({
    this.key,
    required this.course,
  });

  final Key? key;

  final Course course;

  @override
  String toString() {
    return 'PdfEditCourseRouteArgs{key: $key, course: $course}';
  }
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
/// [FragmentsReorderScreen]
class FragmentsReorderRoute extends PageRouteInfo<FragmentsReorderRouteArgs> {
  FragmentsReorderRoute({
    Key? key,
    required List<PdfFragment> fragments,
    List<PageRouteInfo>? children,
  }) : super(
          FragmentsReorderRoute.name,
          args: FragmentsReorderRouteArgs(
            key: key,
            fragments: fragments,
          ),
          initialChildren: children,
        );

  static const String name = 'FragmentsReorderRoute';

  static const PageInfo<FragmentsReorderRouteArgs> page =
      PageInfo<FragmentsReorderRouteArgs>(name);
}

class FragmentsReorderRouteArgs {
  const FragmentsReorderRouteArgs({
    this.key,
    required this.fragments,
  });

  final Key? key;

  final List<PdfFragment> fragments;

  @override
  String toString() {
    return 'FragmentsReorderRouteArgs{key: $key, fragments: $fragments}';
  }
}

/// generated route for
/// [ImageAddFragmentScreen]
class ImageAddFragmentRoute extends PageRouteInfo<ImageAddFragmentRouteArgs> {
  ImageAddFragmentRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ImageAddFragmentRoute.name,
          args: ImageAddFragmentRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ImageAddFragmentRoute';

  static const PageInfo<ImageAddFragmentRouteArgs> page =
      PageInfo<ImageAddFragmentRouteArgs>(name);
}

class ImageAddFragmentRouteArgs {
  const ImageAddFragmentRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ImageAddFragmentRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ImageCreateSubjectScreen]
class ImageCreateSubjectRoute
    extends PageRouteInfo<ImageCreateSubjectRouteArgs> {
  ImageCreateSubjectRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ImageCreateSubjectRoute.name,
          args: ImageCreateSubjectRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ImageCreateSubjectRoute';

  static const PageInfo<ImageCreateSubjectRouteArgs> page =
      PageInfo<ImageCreateSubjectRouteArgs>(name);
}

class ImageCreateSubjectRouteArgs {
  const ImageCreateSubjectRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ImageCreateSubjectRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PdfAddFragmentScreen]
class PdfAddFragmentRoute extends PageRouteInfo<PdfAddFragmentRouteArgs> {
  PdfAddFragmentRoute({
    Key? key,
    required int displayOder,
    required int subjectId,
    List<PageRouteInfo>? children,
  }) : super(
          PdfAddFragmentRoute.name,
          args: PdfAddFragmentRouteArgs(
            key: key,
            displayOder: displayOder,
            subjectId: subjectId,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfAddFragmentRoute';

  static const PageInfo<PdfAddFragmentRouteArgs> page =
      PageInfo<PdfAddFragmentRouteArgs>(name);
}

class PdfAddFragmentRouteArgs {
  const PdfAddFragmentRouteArgs({
    this.key,
    required this.displayOder,
    required this.subjectId,
  });

  final Key? key;

  final int displayOder;

  final int subjectId;

  @override
  String toString() {
    return 'PdfAddFragmentRouteArgs{key: $key, displayOder: $displayOder, subjectId: $subjectId}';
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
/// [PdfSubjectPlayerScreen]
class PdfSubjectPlayerRoute extends PageRouteInfo<PdfSubjectPlayerRouteArgs> {
  PdfSubjectPlayerRoute({
    Key? key,
    required Subject subject,
    List<PageRouteInfo>? children,
  }) : super(
          PdfSubjectPlayerRoute.name,
          args: PdfSubjectPlayerRouteArgs(
            key: key,
            subject: subject,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfSubjectPlayerRoute';

  static const PageInfo<PdfSubjectPlayerRouteArgs> page =
      PageInfo<PdfSubjectPlayerRouteArgs>(name);
}

class PdfSubjectPlayerRouteArgs {
  const PdfSubjectPlayerRouteArgs({
    this.key,
    required this.subject,
  });

  final Key? key;

  final Subject subject;

  @override
  String toString() {
    return 'PdfSubjectPlayerRouteArgs{key: $key, subject: $subject}';
  }
}

/// generated route for
/// [EditPresentationScreen]
class EditPresentationRoute extends PageRouteInfo<EditPresentationRouteArgs> {
  EditPresentationRoute({
    Key? key,
    required Presentation presentation,
    List<PageRouteInfo>? children,
  }) : super(
          EditPresentationRoute.name,
          args: EditPresentationRouteArgs(
            key: key,
            presentation: presentation,
          ),
          initialChildren: children,
        );

  static const String name = 'EditPresentationRoute';

  static const PageInfo<EditPresentationRouteArgs> page =
      PageInfo<EditPresentationRouteArgs>(name);
}

class EditPresentationRouteArgs {
  const EditPresentationRouteArgs({
    this.key,
    required this.presentation,
  });

  final Key? key;

  final Presentation presentation;

  @override
  String toString() {
    return 'EditPresentationRouteArgs{key: $key, presentation: $presentation}';
  }
}

/// generated route for
/// [ImageCreatePresentationScreen]
class ImageCreatePresentationRoute
    extends PageRouteInfo<ImageCreatePresentationRouteArgs> {
  ImageCreatePresentationRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ImageCreatePresentationRoute.name,
          args: ImageCreatePresentationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ImageCreatePresentationRoute';

  static const PageInfo<ImageCreatePresentationRouteArgs> page =
      PageInfo<ImageCreatePresentationRouteArgs>(name);
}

class ImageCreatePresentationRouteArgs {
  const ImageCreatePresentationRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ImageCreatePresentationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PdfCreatePresentationScreen]
class PdfCreatePresentationRoute extends PageRouteInfo<void> {
  const PdfCreatePresentationRoute({List<PageRouteInfo>? children})
      : super(
          PdfCreatePresentationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PdfCreatePresentationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PresentationAddFragmentScreen]
class PresentationAddFragmentRoute
    extends PageRouteInfo<PresentationAddFragmentRouteArgs> {
  PresentationAddFragmentRoute({
    Key? key,
    required int displayOder,
    required int presentationId,
    List<PageRouteInfo>? children,
  }) : super(
          PresentationAddFragmentRoute.name,
          args: PresentationAddFragmentRouteArgs(
            key: key,
            displayOder: displayOder,
            presentationId: presentationId,
          ),
          initialChildren: children,
        );

  static const String name = 'PresentationAddFragmentRoute';

  static const PageInfo<PresentationAddFragmentRouteArgs> page =
      PageInfo<PresentationAddFragmentRouteArgs>(name);
}

class PresentationAddFragmentRouteArgs {
  const PresentationAddFragmentRouteArgs({
    this.key,
    required this.displayOder,
    required this.presentationId,
  });

  final Key? key;

  final int displayOder;

  final int presentationId;

  @override
  String toString() {
    return 'PresentationAddFragmentRouteArgs{key: $key, displayOder: $displayOder, presentationId: $presentationId}';
  }
}

/// generated route for
/// [PresentationsScreen]
class PresentationsRoute extends PageRouteInfo<void> {
  const PresentationsRoute({List<PageRouteInfo>? children})
      : super(
          PresentationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PresentationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PresentationPlayerScreen]
class PresentationPlayerRoute
    extends PageRouteInfo<PresentationPlayerRouteArgs> {
  PresentationPlayerRoute({
    Key? key,
    required Presentation presentation,
    required int presentationId,
    List<PageRouteInfo>? children,
  }) : super(
          PresentationPlayerRoute.name,
          args: PresentationPlayerRouteArgs(
            key: key,
            presentation: presentation,
            presentationId: presentationId,
          ),
          rawPathParams: {'id': presentationId},
          initialChildren: children,
        );

  static const String name = 'PresentationPlayerRoute';

  static const PageInfo<PresentationPlayerRouteArgs> page =
      PageInfo<PresentationPlayerRouteArgs>(name);
}

class PresentationPlayerRouteArgs {
  const PresentationPlayerRouteArgs({
    this.key,
    required this.presentation,
    required this.presentationId,
  });

  final Key? key;

  final Presentation presentation;

  final int presentationId;

  @override
  String toString() {
    return 'PresentationPlayerRouteArgs{key: $key, presentation: $presentation, presentationId: $presentationId}';
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
