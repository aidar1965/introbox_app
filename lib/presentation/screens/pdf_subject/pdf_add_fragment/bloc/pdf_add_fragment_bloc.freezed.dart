// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_add_fragment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfAddFragmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath, int duration) audioAdded,
    required TResult Function(String imagePath) imageAdded,
    required TResult Function(String title, String description)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath, int duration)? audioAdded,
    TResult? Function(String imagePath)? imageAdded,
    TResult? Function(String title, String description)? fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath, int duration)? audioAdded,
    TResult Function(String imagePath)? imageAdded,
    TResult Function(String title, String description)? fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventFragmentSaveClicked value)
        fragmentSaveClicked,
    required TResult Function(_EventDeleteAudio value) deleteAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult? Function(_EventDeleteAudio value)? deleteAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult Function(_EventDeleteAudio value)? deleteAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfAddFragmentEventCopyWith<$Res> {
  factory $PdfAddFragmentEventCopyWith(
          PdfAddFragmentEvent value, $Res Function(PdfAddFragmentEvent) then) =
      _$PdfAddFragmentEventCopyWithImpl<$Res, PdfAddFragmentEvent>;
}

/// @nodoc
class _$PdfAddFragmentEventCopyWithImpl<$Res, $Val extends PdfAddFragmentEvent>
    implements $PdfAddFragmentEventCopyWith<$Res> {
  _$PdfAddFragmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventAudioAddedCopyWith<$Res> {
  factory _$$_EventAudioAddedCopyWith(
          _$_EventAudioAdded value, $Res Function(_$_EventAudioAdded) then) =
      __$$_EventAudioAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({String audioPath, int duration});
}

/// @nodoc
class __$$_EventAudioAddedCopyWithImpl<$Res>
    extends _$PdfAddFragmentEventCopyWithImpl<$Res, _$_EventAudioAdded>
    implements _$$_EventAudioAddedCopyWith<$Res> {
  __$$_EventAudioAddedCopyWithImpl(
      _$_EventAudioAdded _value, $Res Function(_$_EventAudioAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
    Object? duration = null,
  }) {
    return _then(_$_EventAudioAdded(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventAudioAdded
    with DiagnosticableTreeMixin
    implements _EventAudioAdded {
  const _$_EventAudioAdded({required this.audioPath, required this.duration});

  @override
  final String audioPath;
  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfAddFragmentEvent.audioAdded(audioPath: $audioPath, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfAddFragmentEvent.audioAdded'))
      ..add(DiagnosticsProperty('audioPath', audioPath))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAudioAdded &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioPath, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventAudioAddedCopyWith<_$_EventAudioAdded> get copyWith =>
      __$$_EventAudioAddedCopyWithImpl<_$_EventAudioAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath, int duration) audioAdded,
    required TResult Function(String imagePath) imageAdded,
    required TResult Function(String title, String description)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return audioAdded(audioPath, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath, int duration)? audioAdded,
    TResult? Function(String imagePath)? imageAdded,
    TResult? Function(String title, String description)? fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return audioAdded?.call(audioPath, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath, int duration)? audioAdded,
    TResult Function(String imagePath)? imageAdded,
    TResult Function(String title, String description)? fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) {
    if (audioAdded != null) {
      return audioAdded(audioPath, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventFragmentSaveClicked value)
        fragmentSaveClicked,
    required TResult Function(_EventDeleteAudio value) deleteAudio,
  }) {
    return audioAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult? Function(_EventDeleteAudio value)? deleteAudio,
  }) {
    return audioAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult Function(_EventDeleteAudio value)? deleteAudio,
    required TResult orElse(),
  }) {
    if (audioAdded != null) {
      return audioAdded(this);
    }
    return orElse();
  }
}

abstract class _EventAudioAdded implements PdfAddFragmentEvent {
  const factory _EventAudioAdded(
      {required final String audioPath,
      required final int duration}) = _$_EventAudioAdded;

  String get audioPath;
  int get duration;
  @JsonKey(ignore: true)
  _$$_EventAudioAddedCopyWith<_$_EventAudioAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventImageAddedCopyWith<$Res> {
  factory _$$_EventImageAddedCopyWith(
          _$_EventImageAdded value, $Res Function(_$_EventImageAdded) then) =
      __$$_EventImageAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$_EventImageAddedCopyWithImpl<$Res>
    extends _$PdfAddFragmentEventCopyWithImpl<$Res, _$_EventImageAdded>
    implements _$$_EventImageAddedCopyWith<$Res> {
  __$$_EventImageAddedCopyWithImpl(
      _$_EventImageAdded _value, $Res Function(_$_EventImageAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$_EventImageAdded(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventImageAdded
    with DiagnosticableTreeMixin
    implements _EventImageAdded {
  const _$_EventImageAdded({required this.imagePath});

  @override
  final String imagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfAddFragmentEvent.imageAdded(imagePath: $imagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfAddFragmentEvent.imageAdded'))
      ..add(DiagnosticsProperty('imagePath', imagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventImageAdded &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventImageAddedCopyWith<_$_EventImageAdded> get copyWith =>
      __$$_EventImageAddedCopyWithImpl<_$_EventImageAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath, int duration) audioAdded,
    required TResult Function(String imagePath) imageAdded,
    required TResult Function(String title, String description)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return imageAdded(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath, int duration)? audioAdded,
    TResult? Function(String imagePath)? imageAdded,
    TResult? Function(String title, String description)? fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return imageAdded?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath, int duration)? audioAdded,
    TResult Function(String imagePath)? imageAdded,
    TResult Function(String title, String description)? fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventFragmentSaveClicked value)
        fragmentSaveClicked,
    required TResult Function(_EventDeleteAudio value) deleteAudio,
  }) {
    return imageAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult? Function(_EventDeleteAudio value)? deleteAudio,
  }) {
    return imageAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult Function(_EventDeleteAudio value)? deleteAudio,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(this);
    }
    return orElse();
  }
}

abstract class _EventImageAdded implements PdfAddFragmentEvent {
  const factory _EventImageAdded({required final String imagePath}) =
      _$_EventImageAdded;

  String get imagePath;
  @JsonKey(ignore: true)
  _$$_EventImageAddedCopyWith<_$_EventImageAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventFragmentSaveClickedCopyWith<$Res> {
  factory _$$_EventFragmentSaveClickedCopyWith(
          _$_EventFragmentSaveClicked value,
          $Res Function(_$_EventFragmentSaveClicked) then) =
      __$$_EventFragmentSaveClickedCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_EventFragmentSaveClickedCopyWithImpl<$Res>
    extends _$PdfAddFragmentEventCopyWithImpl<$Res, _$_EventFragmentSaveClicked>
    implements _$$_EventFragmentSaveClickedCopyWith<$Res> {
  __$$_EventFragmentSaveClickedCopyWithImpl(_$_EventFragmentSaveClicked _value,
      $Res Function(_$_EventFragmentSaveClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EventFragmentSaveClicked(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventFragmentSaveClicked
    with DiagnosticableTreeMixin
    implements _EventFragmentSaveClicked {
  const _$_EventFragmentSaveClicked(
      {required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfAddFragmentEvent.fragmentSaveClicked(title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PdfAddFragmentEvent.fragmentSaveClicked'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventFragmentSaveClicked &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventFragmentSaveClickedCopyWith<_$_EventFragmentSaveClicked>
      get copyWith => __$$_EventFragmentSaveClickedCopyWithImpl<
          _$_EventFragmentSaveClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath, int duration) audioAdded,
    required TResult Function(String imagePath) imageAdded,
    required TResult Function(String title, String description)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return fragmentSaveClicked(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath, int duration)? audioAdded,
    TResult? Function(String imagePath)? imageAdded,
    TResult? Function(String title, String description)? fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return fragmentSaveClicked?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath, int duration)? audioAdded,
    TResult Function(String imagePath)? imageAdded,
    TResult Function(String title, String description)? fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) {
    if (fragmentSaveClicked != null) {
      return fragmentSaveClicked(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventFragmentSaveClicked value)
        fragmentSaveClicked,
    required TResult Function(_EventDeleteAudio value) deleteAudio,
  }) {
    return fragmentSaveClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult? Function(_EventDeleteAudio value)? deleteAudio,
  }) {
    return fragmentSaveClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult Function(_EventDeleteAudio value)? deleteAudio,
    required TResult orElse(),
  }) {
    if (fragmentSaveClicked != null) {
      return fragmentSaveClicked(this);
    }
    return orElse();
  }
}

abstract class _EventFragmentSaveClicked implements PdfAddFragmentEvent {
  const factory _EventFragmentSaveClicked(
      {required final String title,
      required final String description}) = _$_EventFragmentSaveClicked;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$_EventFragmentSaveClickedCopyWith<_$_EventFragmentSaveClicked>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventDeleteAudioCopyWith<$Res> {
  factory _$$_EventDeleteAudioCopyWith(
          _$_EventDeleteAudio value, $Res Function(_$_EventDeleteAudio) then) =
      __$$_EventDeleteAudioCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventDeleteAudioCopyWithImpl<$Res>
    extends _$PdfAddFragmentEventCopyWithImpl<$Res, _$_EventDeleteAudio>
    implements _$$_EventDeleteAudioCopyWith<$Res> {
  __$$_EventDeleteAudioCopyWithImpl(
      _$_EventDeleteAudio _value, $Res Function(_$_EventDeleteAudio) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventDeleteAudio
    with DiagnosticableTreeMixin
    implements _EventDeleteAudio {
  const _$_EventDeleteAudio();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfAddFragmentEvent.deleteAudio()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PdfAddFragmentEvent.deleteAudio'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventDeleteAudio);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath, int duration) audioAdded,
    required TResult Function(String imagePath) imageAdded,
    required TResult Function(String title, String description)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return deleteAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath, int duration)? audioAdded,
    TResult? Function(String imagePath)? imageAdded,
    TResult? Function(String title, String description)? fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return deleteAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath, int duration)? audioAdded,
    TResult Function(String imagePath)? imageAdded,
    TResult Function(String title, String description)? fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) {
    if (deleteAudio != null) {
      return deleteAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventFragmentSaveClicked value)
        fragmentSaveClicked,
    required TResult Function(_EventDeleteAudio value) deleteAudio,
  }) {
    return deleteAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult? Function(_EventDeleteAudio value)? deleteAudio,
  }) {
    return deleteAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventFragmentSaveClicked value)? fragmentSaveClicked,
    TResult Function(_EventDeleteAudio value)? deleteAudio,
    required TResult orElse(),
  }) {
    if (deleteAudio != null) {
      return deleteAudio(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteAudio implements PdfAddFragmentEvent {
  const factory _EventDeleteAudio() = _$_EventDeleteAudio;
}

/// @nodoc
mixin _$PdfAddFragmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)
        screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfAddFragmentStateCopyWith<$Res> {
  factory $PdfAddFragmentStateCopyWith(
          PdfAddFragmentState value, $Res Function(PdfAddFragmentState) then) =
      _$PdfAddFragmentStateCopyWithImpl<$Res, PdfAddFragmentState>;
}

/// @nodoc
class _$PdfAddFragmentStateCopyWithImpl<$Res, $Val extends PdfAddFragmentState>
    implements $PdfAddFragmentStateCopyWith<$Res> {
  _$PdfAddFragmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {File? image, String? audioPath, int? duration, bool isSavePending});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PdfAddFragmentStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? audioPath = freezed,
    Object? duration = freezed,
    Object? isSavePending = null,
  }) {
    return _then(_$_ScreenState(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      isSavePending: null == isSavePending
          ? _value.isSavePending
          : isSavePending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState with DiagnosticableTreeMixin implements _ScreenState {
  const _$_ScreenState(
      {this.image, this.audioPath, this.duration, this.isSavePending = false});

  @override
  final File? image;
  @override
  final String? audioPath;
  @override
  final int? duration;
  @override
  @JsonKey()
  final bool isSavePending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfAddFragmentState.screenState(image: $image, audioPath: $audioPath, duration: $duration, isSavePending: $isSavePending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfAddFragmentState.screenState'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('audioPath', audioPath))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('isSavePending', isSavePending));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isSavePending, isSavePending) ||
                other.isSavePending == isSavePending));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, image, audioPath, duration, isSavePending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)
        screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return screenState(image, audioPath, duration, isSavePending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return screenState?.call(image, audioPath, duration, isSavePending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(image, audioPath, duration, isSavePending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements PdfAddFragmentState {
  const factory _ScreenState(
      {final File? image,
      final String? audioPath,
      final int? duration,
      final bool isSavePending}) = _$_ScreenState;

  File? get image;
  String? get audioPath;
  int? get duration;
  bool get isSavePending;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateRequestSuccessCopyWith<$Res> {
  factory _$$_StateRequestSuccessCopyWith(_$_StateRequestSuccess value,
          $Res Function(_$_StateRequestSuccess) then) =
      __$$_StateRequestSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateRequestSuccessCopyWithImpl<$Res>
    extends _$PdfAddFragmentStateCopyWithImpl<$Res, _$_StateRequestSuccess>
    implements _$$_StateRequestSuccessCopyWith<$Res> {
  __$$_StateRequestSuccessCopyWithImpl(_$_StateRequestSuccess _value,
      $Res Function(_$_StateRequestSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateRequestSuccess
    with DiagnosticableTreeMixin
    implements _StateRequestSuccess {
  const _$_StateRequestSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfAddFragmentState.requestSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PdfAddFragmentState.requestSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateRequestSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)
        screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return requestSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return requestSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return requestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return requestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateRequestSuccess implements PdfAddFragmentState {
  const factory _StateRequestSuccess() = _$_StateRequestSuccess;
}

/// @nodoc
abstract class _$$_StateRequestErrorCopyWith<$Res> {
  factory _$$_StateRequestErrorCopyWith(_$_StateRequestError value,
          $Res Function(_$_StateRequestError) then) =
      __$$_StateRequestErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateRequestErrorCopyWithImpl<$Res>
    extends _$PdfAddFragmentStateCopyWithImpl<$Res, _$_StateRequestError>
    implements _$$_StateRequestErrorCopyWith<$Res> {
  __$$_StateRequestErrorCopyWithImpl(
      _$_StateRequestError _value, $Res Function(_$_StateRequestError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateRequestError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateRequestError
    with DiagnosticableTreeMixin
    implements _StateRequestError {
  const _$_StateRequestError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfAddFragmentState.requestError(errorText: $errorText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfAddFragmentState.requestError'))
      ..add(DiagnosticsProperty('errorText', errorText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateRequestError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      __$$_StateRequestErrorCopyWithImpl<_$_StateRequestError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)
        screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            File? image, String? audioPath, int? duration, bool isSavePending)?
        screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements PdfAddFragmentState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
