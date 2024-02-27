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
    ChangePasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangePasswordScreen(),
      );
    },
    ChannelsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChannelsScreen(),
      );
    },
    CompaniesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CompaniesScreen(),
      );
    },
    CoursesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CoursesScreen(),
      );
    },
    CourseRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseRouteArgs>(
          orElse: () => CourseRouteArgs(id: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseScreen(
          key: args.key,
          id: args.id,
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
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MyCoursesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyCoursesScreen(),
      );
    },
    PresentationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PresentationRouteArgs>(
          orElse: () => PresentationRouteArgs(id: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PresentationScreen(
          key: args.key,
          id: args.id,
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
    EditPresentationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditPresentationRouteArgs>(
          orElse: () =>
              EditPresentationRouteArgs(id: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditPresentationScreen(
          key: args.key,
          id: args.id,
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
          fragmentsIds: args.fragmentsIds,
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
    PublicCourseRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PublicCourseRouteArgs>(
          orElse: () => PublicCourseRouteArgs(id: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PublicCourseScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    PublicPresentationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PublicPresentationRouteArgs>(
          orElse: () =>
              PublicPresentationRouteArgs(id: pathParams.optString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PublicPresentationScreen(
          key: args.key,
          id: args.id,
          openedFromApp: args.openedFromApp,
          course: args.course,
        ),
      );
    },
    RecoverPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecoverPasswordScreen(),
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
/// [ChangePasswordScreen]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChannelsScreen]
class ChannelsRoute extends PageRouteInfo<void> {
  const ChannelsRoute({List<PageRouteInfo>? children})
      : super(
          ChannelsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChannelsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CompaniesScreen]
class CompaniesRoute extends PageRouteInfo<void> {
  const CompaniesRoute({List<PageRouteInfo>? children})
      : super(
          CompaniesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompaniesRoute';

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
/// [CourseScreen]
class CourseRoute extends PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static const PageInfo<CourseRouteArgs> page = PageInfo<CourseRouteArgs>(name);
}

class CourseRouteArgs {
  const CourseRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key, id: $id}';
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
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyCoursesScreen]
class MyCoursesRoute extends PageRouteInfo<void> {
  const MyCoursesRoute({List<PageRouteInfo>? children})
      : super(
          MyCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyCoursesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PresentationScreen]
class PresentationRoute extends PageRouteInfo<PresentationRouteArgs> {
  PresentationRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          PresentationRoute.name,
          args: PresentationRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'PresentationRoute';

  static const PageInfo<PresentationRouteArgs> page =
      PageInfo<PresentationRouteArgs>(name);
}

class PresentationRouteArgs {
  const PresentationRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'PresentationRouteArgs{key: $key, id: $id}';
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
/// [EditPresentationScreen]
class EditPresentationRoute extends PageRouteInfo<EditPresentationRouteArgs> {
  EditPresentationRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          EditPresentationRoute.name,
          args: EditPresentationRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'EditPresentationRoute';

  static const PageInfo<EditPresentationRouteArgs> page =
      PageInfo<EditPresentationRouteArgs>(name);
}

class EditPresentationRouteArgs {
  const EditPresentationRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'EditPresentationRouteArgs{key: $key, id: $id}';
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
    required String presentationId,
    required List<String> fragmentsIds,
    List<PageRouteInfo>? children,
  }) : super(
          PresentationAddFragmentRoute.name,
          args: PresentationAddFragmentRouteArgs(
            key: key,
            displayOder: displayOder,
            presentationId: presentationId,
            fragmentsIds: fragmentsIds,
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
    required this.fragmentsIds,
  });

  final Key? key;

  final int displayOder;

  final String presentationId;

  final List<String> fragmentsIds;

  @override
  String toString() {
    return 'PresentationAddFragmentRouteArgs{key: $key, displayOder: $displayOder, presentationId: $presentationId, fragmentsIds: $fragmentsIds}';
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
/// [PublicCourseScreen]
class PublicCourseRoute extends PageRouteInfo<PublicCourseRouteArgs> {
  PublicCourseRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          PublicCourseRoute.name,
          args: PublicCourseRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'PublicCourseRoute';

  static const PageInfo<PublicCourseRouteArgs> page =
      PageInfo<PublicCourseRouteArgs>(name);
}

class PublicCourseRouteArgs {
  const PublicCourseRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'PublicCourseRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [PublicPresentationScreen]
class PublicPresentationRoute
    extends PageRouteInfo<PublicPresentationRouteArgs> {
  PublicPresentationRoute({
    Key? key,
    String? id,
    bool? openedFromApp,
    Course? course,
    List<PageRouteInfo>? children,
  }) : super(
          PublicPresentationRoute.name,
          args: PublicPresentationRouteArgs(
            key: key,
            id: id,
            openedFromApp: openedFromApp,
            course: course,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'PublicPresentationRoute';

  static const PageInfo<PublicPresentationRouteArgs> page =
      PageInfo<PublicPresentationRouteArgs>(name);
}

class PublicPresentationRouteArgs {
  const PublicPresentationRouteArgs({
    this.key,
    this.id,
    this.openedFromApp,
    this.course,
  });

  final Key? key;

  final String? id;

  final bool? openedFromApp;

  final Course? course;

  @override
  String toString() {
    return 'PublicPresentationRouteArgs{key: $key, id: $id, openedFromApp: $openedFromApp, course: $course}';
  }
}

/// generated route for
/// [RecoverPasswordScreen]
class RecoverPasswordRoute extends PageRouteInfo<void> {
  const RecoverPasswordRoute({List<PageRouteInfo>? children})
      : super(
          RecoverPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoverPasswordRoute';

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
