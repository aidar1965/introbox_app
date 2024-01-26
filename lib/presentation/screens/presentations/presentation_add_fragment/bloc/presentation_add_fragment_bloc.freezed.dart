// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_add_fragment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PresentationAddFragmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)
        screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
        screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
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
abstract class $PresentationAddFragmentStateCopyWith<$Res> {
  factory $PresentationAddFragmentStateCopyWith(
          PresentationAddFragmentState value,
          $Res Function(PresentationAddFragmentState) then) =
      _$PresentationAddFragmentStateCopyWithImpl<$Res,
          PresentationAddFragmentState>;
}

/// @nodoc
class _$PresentationAddFragmentStateCopyWithImpl<$Res,
        $Val extends PresentationAddFragmentState>
    implements $PresentationAddFragmentStateCopyWith<$Res> {
  _$PresentationAddFragmentStateCopyWithImpl(this._value, this._then);

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
      {Uint8List? imageBytes,
      Uint8List? audioBytes,
      String? audioPath,
      int? duration,
      bool isSavePending,
      bool isTitleOverImage});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PresentationAddFragmentStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = freezed,
    Object? audioBytes = freezed,
    Object? audioPath = freezed,
    Object? duration = freezed,
    Object? isSavePending = null,
    Object? isTitleOverImage = null,
  }) {
    return _then(_$_ScreenState(
      imageBytes: freezed == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      audioBytes: freezed == audioBytes
          ? _value.audioBytes
          : audioBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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
      isTitleOverImage: null == isTitleOverImage
          ? _value.isTitleOverImage
          : isTitleOverImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState with DiagnosticableTreeMixin implements _ScreenState {
  const _$_ScreenState(
      {this.imageBytes,
      this.audioBytes,
      this.audioPath,
      this.duration,
      this.isSavePending = false,
      this.isTitleOverImage = false});

  @override
  final Uint8List? imageBytes;
  @override
  final Uint8List? audioBytes;
  @override
  final String? audioPath;
  @override
  final int? duration;
  @override
  @JsonKey()
  final bool isSavePending;
  @override
  @JsonKey()
  final bool isTitleOverImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PresentationAddFragmentState.screenState(imageBytes: $imageBytes, audioBytes: $audioBytes, audioPath: $audioPath, duration: $duration, isSavePending: $isSavePending, isTitleOverImage: $isTitleOverImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PresentationAddFragmentState.screenState'))
      ..add(DiagnosticsProperty('imageBytes', imageBytes))
      ..add(DiagnosticsProperty('audioBytes', audioBytes))
      ..add(DiagnosticsProperty('audioPath', audioPath))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('isSavePending', isSavePending))
      ..add(DiagnosticsProperty('isTitleOverImage', isTitleOverImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes) &&
            const DeepCollectionEquality()
                .equals(other.audioBytes, audioBytes) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isSavePending, isSavePending) ||
                other.isSavePending == isSavePending) &&
            (identical(other.isTitleOverImage, isTitleOverImage) ||
                other.isTitleOverImage == isTitleOverImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageBytes),
      const DeepCollectionEquality().hash(audioBytes),
      audioPath,
      duration,
      isSavePending,
      isTitleOverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)
        screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return screenState(imageBytes, audioBytes, audioPath, duration,
        isSavePending, isTitleOverImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
        screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return screenState?.call(imageBytes, audioBytes, audioPath, duration,
        isSavePending, isTitleOverImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
        screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(imageBytes, audioBytes, audioPath, duration,
          isSavePending, isTitleOverImage);
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

abstract class _ScreenState implements PresentationAddFragmentState {
  const factory _ScreenState(
      {final Uint8List? imageBytes,
      final Uint8List? audioBytes,
      final String? audioPath,
      final int? duration,
      final bool isSavePending,
      final bool isTitleOverImage}) = _$_ScreenState;

  Uint8List? get imageBytes;
  Uint8List? get audioBytes;
  String? get audioPath;
  int? get duration;
  bool get isSavePending;
  bool get isTitleOverImage;
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
    extends _$PresentationAddFragmentStateCopyWithImpl<$Res,
        _$_StateRequestSuccess>
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
    return 'PresentationAddFragmentState.requestSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PresentationAddFragmentState.requestSuccess'));
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
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)
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
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
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
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
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

abstract class _StateRequestSuccess implements PresentationAddFragmentState {
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
    extends _$PresentationAddFragmentStateCopyWithImpl<$Res,
        _$_StateRequestError> implements _$$_StateRequestErrorCopyWith<$Res> {
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
    return 'PresentationAddFragmentState.requestError(errorText: $errorText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PresentationAddFragmentState.requestError'))
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
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)
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
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
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
            Uint8List? imageBytes,
            Uint8List? audioBytes,
            String? audioPath,
            int? duration,
            bool isSavePending,
            bool isTitleOverImage)?
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

abstract class _StateRequestError implements PresentationAddFragmentState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PresentationAddFragmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(Uint8List imageBytes) imageAdded,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
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
abstract class $PresentationAddFragmentEventCopyWith<$Res> {
  factory $PresentationAddFragmentEventCopyWith(
          PresentationAddFragmentEvent value,
          $Res Function(PresentationAddFragmentEvent) then) =
      _$PresentationAddFragmentEventCopyWithImpl<$Res,
          PresentationAddFragmentEvent>;
}

/// @nodoc
class _$PresentationAddFragmentEventCopyWithImpl<$Res,
        $Val extends PresentationAddFragmentEvent>
    implements $PresentationAddFragmentEventCopyWith<$Res> {
  _$PresentationAddFragmentEventCopyWithImpl(this._value, this._then);

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
  $Res call({Uint8List audioBytes, String audioPath, int duration});
}

/// @nodoc
class __$$_EventAudioAddedCopyWithImpl<$Res>
    extends _$PresentationAddFragmentEventCopyWithImpl<$Res, _$_EventAudioAdded>
    implements _$$_EventAudioAddedCopyWith<$Res> {
  __$$_EventAudioAddedCopyWithImpl(
      _$_EventAudioAdded _value, $Res Function(_$_EventAudioAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioBytes = null,
    Object? audioPath = null,
    Object? duration = null,
  }) {
    return _then(_$_EventAudioAdded(
      audioBytes: null == audioBytes
          ? _value.audioBytes
          : audioBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
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
  const _$_EventAudioAdded(
      {required this.audioBytes,
      required this.audioPath,
      required this.duration});

  @override
  final Uint8List audioBytes;
  @override
  final String audioPath;
  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PresentationAddFragmentEvent.audioAdded(audioBytes: $audioBytes, audioPath: $audioPath, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PresentationAddFragmentEvent.audioAdded'))
      ..add(DiagnosticsProperty('audioBytes', audioBytes))
      ..add(DiagnosticsProperty('audioPath', audioPath))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAudioAdded &&
            const DeepCollectionEquality()
                .equals(other.audioBytes, audioBytes) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(audioBytes), audioPath, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventAudioAddedCopyWith<_$_EventAudioAdded> get copyWith =>
      __$$_EventAudioAddedCopyWithImpl<_$_EventAudioAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(Uint8List imageBytes) imageAdded,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return audioAdded(audioBytes, audioPath, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return audioAdded?.call(audioBytes, audioPath, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) {
    if (audioAdded != null) {
      return audioAdded(audioBytes, audioPath, duration);
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

abstract class _EventAudioAdded implements PresentationAddFragmentEvent {
  const factory _EventAudioAdded(
      {required final Uint8List audioBytes,
      required final String audioPath,
      required final int duration}) = _$_EventAudioAdded;

  Uint8List get audioBytes;
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
  $Res call({Uint8List imageBytes});
}

/// @nodoc
class __$$_EventImageAddedCopyWithImpl<$Res>
    extends _$PresentationAddFragmentEventCopyWithImpl<$Res, _$_EventImageAdded>
    implements _$$_EventImageAddedCopyWith<$Res> {
  __$$_EventImageAddedCopyWithImpl(
      _$_EventImageAdded _value, $Res Function(_$_EventImageAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageBytes = null,
  }) {
    return _then(_$_EventImageAdded(
      imageBytes: null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_EventImageAdded
    with DiagnosticableTreeMixin
    implements _EventImageAdded {
  const _$_EventImageAdded({required this.imageBytes});

  @override
  final Uint8List imageBytes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PresentationAddFragmentEvent.imageAdded(imageBytes: $imageBytes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PresentationAddFragmentEvent.imageAdded'))
      ..add(DiagnosticsProperty('imageBytes', imageBytes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventImageAdded &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventImageAddedCopyWith<_$_EventImageAdded> get copyWith =>
      __$$_EventImageAddedCopyWithImpl<_$_EventImageAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(Uint8List imageBytes) imageAdded,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return imageAdded(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return imageAdded?.call(imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(imageBytes);
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

abstract class _EventImageAdded implements PresentationAddFragmentEvent {
  const factory _EventImageAdded({required final Uint8List imageBytes}) =
      _$_EventImageAdded;

  Uint8List get imageBytes;
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
  $Res call({String title, String description, bool isTitleOverImage});
}

/// @nodoc
class __$$_EventFragmentSaveClickedCopyWithImpl<$Res>
    extends _$PresentationAddFragmentEventCopyWithImpl<$Res,
        _$_EventFragmentSaveClicked>
    implements _$$_EventFragmentSaveClickedCopyWith<$Res> {
  __$$_EventFragmentSaveClickedCopyWithImpl(_$_EventFragmentSaveClicked _value,
      $Res Function(_$_EventFragmentSaveClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isTitleOverImage = null,
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
      isTitleOverImage: null == isTitleOverImage
          ? _value.isTitleOverImage
          : isTitleOverImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventFragmentSaveClicked
    with DiagnosticableTreeMixin
    implements _EventFragmentSaveClicked {
  const _$_EventFragmentSaveClicked(
      {required this.title,
      required this.description,
      required this.isTitleOverImage});

  @override
  final String title;
  @override
  final String description;
  @override
  final bool isTitleOverImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PresentationAddFragmentEvent.fragmentSaveClicked(title: $title, description: $description, isTitleOverImage: $isTitleOverImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PresentationAddFragmentEvent.fragmentSaveClicked'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isTitleOverImage', isTitleOverImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventFragmentSaveClicked &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isTitleOverImage, isTitleOverImage) ||
                other.isTitleOverImage == isTitleOverImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, isTitleOverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventFragmentSaveClickedCopyWith<_$_EventFragmentSaveClicked>
      get copyWith => __$$_EventFragmentSaveClickedCopyWithImpl<
          _$_EventFragmentSaveClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(Uint8List imageBytes) imageAdded,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return fragmentSaveClicked(title, description, isTitleOverImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return fragmentSaveClicked?.call(title, description, isTitleOverImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult Function()? deleteAudio,
    required TResult orElse(),
  }) {
    if (fragmentSaveClicked != null) {
      return fragmentSaveClicked(title, description, isTitleOverImage);
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

abstract class _EventFragmentSaveClicked
    implements PresentationAddFragmentEvent {
  const factory _EventFragmentSaveClicked(
      {required final String title,
      required final String description,
      required final bool isTitleOverImage}) = _$_EventFragmentSaveClicked;

  String get title;
  String get description;
  bool get isTitleOverImage;
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
    extends _$PresentationAddFragmentEventCopyWithImpl<$Res,
        _$_EventDeleteAudio> implements _$$_EventDeleteAudioCopyWith<$Res> {
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
    return 'PresentationAddFragmentEvent.deleteAudio()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PresentationAddFragmentEvent.deleteAudio'));
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
    required TResult Function(
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(Uint8List imageBytes) imageAdded,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        fragmentSaveClicked,
    required TResult Function() deleteAudio,
  }) {
    return deleteAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
    TResult? Function()? deleteAudio,
  }) {
    return deleteAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description, bool isTitleOverImage)?
        fragmentSaveClicked,
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

abstract class _EventDeleteAudio implements PresentationAddFragmentEvent {
  const factory _EventDeleteAudio() = _$_EventDeleteAudio;
}
