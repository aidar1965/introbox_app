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
    HomeEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeEmptyPage(),
      );
    },
    PresentationsEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PresentationsEmptyPage(),
      );
    },
    LoginEmpty.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginEmptyPage(),
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
    PresentationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PresentationRouteArgs>(
          orElse: () => PresentationRouteArgs(id: pathParams.getInt('id')));
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
      final args = routeData.argsAs<EditPresentationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditPresentationScreen(
          key: args.key,
          presentation: args.presentation,
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
          isAudio: args.isAudio,
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
/// [HomeEmptyPage]
class HomeEmpty extends PageRouteInfo<void> {
  const HomeEmpty({List<PageRouteInfo>? children})
      : super(
          HomeEmpty.name,
          initialChildren: children,
        );

  static const String name = 'HomeEmpty';

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
/// [PresentationScreen]
class PresentationRoute extends PageRouteInfo<PresentationRouteArgs> {
  PresentationRoute({
    Key? key,
    required int id,
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

  final int id;

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
    required int presentationId,
    required bool isAudio,
    List<PageRouteInfo>? children,
  }) : super(
          PresentationAddFragmentRoute.name,
          args: PresentationAddFragmentRouteArgs(
            key: key,
            displayOder: displayOder,
            presentationId: presentationId,
            isAudio: isAudio,
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
    required this.isAudio,
  });

  final Key? key;

  final int displayOder;

  final int presentationId;

  final bool isAudio;

  @override
  String toString() {
    return 'PresentationAddFragmentRouteArgs{key: $key, displayOder: $displayOder, presentationId: $presentationId, isAudio: $isAudio}';
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
