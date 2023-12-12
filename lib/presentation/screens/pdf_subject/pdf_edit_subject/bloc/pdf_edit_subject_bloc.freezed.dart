// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_edit_subject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfEditSubjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfEditSubjectEventCopyWith<$Res> {
  factory $PdfEditSubjectEventCopyWith(
          PdfEditSubjectEvent value, $Res Function(PdfEditSubjectEvent) then) =
      _$PdfEditSubjectEventCopyWithImpl<$Res, PdfEditSubjectEvent>;
}

/// @nodoc
class _$PdfEditSubjectEventCopyWithImpl<$Res, $Val extends PdfEditSubjectEvent>
    implements $PdfEditSubjectEventCopyWith<$Res> {
  _$PdfEditSubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventInitialDataRequestedCopyWith<$Res> {
  factory _$$_EventInitialDataRequestedCopyWith(
          _$_EventInitialDataRequested value,
          $Res Function(_$_EventInitialDataRequested) then) =
      __$$_EventInitialDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventInitialDataRequestedCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res,
        _$_EventInitialDataRequested>
    implements _$$_EventInitialDataRequestedCopyWith<$Res> {
  __$$_EventInitialDataRequestedCopyWithImpl(
      _$_EventInitialDataRequested _value,
      $Res Function(_$_EventInitialDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventInitialDataRequested implements _EventInitialDataRequested {
  const _$_EventInitialDataRequested();

  @override
  String toString() {
    return 'PdfEditSubjectEvent.initialDataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventInitialDataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements PdfEditSubjectEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventFragmentSelectedCopyWith<$Res> {
  factory _$$_EventFragmentSelectedCopyWith(_$_EventFragmentSelected value,
          $Res Function(_$_EventFragmentSelected) then) =
      __$$_EventFragmentSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({PdfFragment fragment});
}

/// @nodoc
class __$$_EventFragmentSelectedCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventFragmentSelected>
    implements _$$_EventFragmentSelectedCopyWith<$Res> {
  __$$_EventFragmentSelectedCopyWithImpl(_$_EventFragmentSelected _value,
      $Res Function(_$_EventFragmentSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
  }) {
    return _then(_$_EventFragmentSelected(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
    ));
  }
}

/// @nodoc

class _$_EventFragmentSelected implements _EventFragmentSelected {
  const _$_EventFragmentSelected({required this.fragment});

  @override
  final PdfFragment fragment;

  @override
  String toString() {
    return 'PdfEditSubjectEvent.fragmentSelected(fragment: $fragment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventFragmentSelected &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventFragmentSelectedCopyWith<_$_EventFragmentSelected> get copyWith =>
      __$$_EventFragmentSelectedCopyWithImpl<_$_EventFragmentSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return fragmentSelected(fragment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return fragmentSelected?.call(fragment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (fragmentSelected != null) {
      return fragmentSelected(fragment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return fragmentSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return fragmentSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (fragmentSelected != null) {
      return fragmentSelected(this);
    }
    return orElse();
  }
}

abstract class _EventFragmentSelected implements PdfEditSubjectEvent {
  const factory _EventFragmentSelected({required final PdfFragment fragment}) =
      _$_EventFragmentSelected;

  PdfFragment get fragment;
  @JsonKey(ignore: true)
  _$$_EventFragmentSelectedCopyWith<_$_EventFragmentSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventAudioAddedCopyWith<$Res> {
  factory _$$_EventAudioAddedCopyWith(
          _$_EventAudioAdded value, $Res Function(_$_EventAudioAdded) then) =
      __$$_EventAudioAddedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PdfFragment fragment,
      String title,
      String description,
      String path,
      String duration});
}

/// @nodoc
class __$$_EventAudioAddedCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventAudioAdded>
    implements _$$_EventAudioAddedCopyWith<$Res> {
  __$$_EventAudioAddedCopyWithImpl(
      _$_EventAudioAdded _value, $Res Function(_$_EventAudioAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
    Object? title = null,
    Object? description = null,
    Object? path = null,
    Object? duration = null,
  }) {
    return _then(_$_EventAudioAdded(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventAudioAdded implements _EventAudioAdded {
  const _$_EventAudioAdded(
      {required this.fragment,
      required this.title,
      required this.description,
      required this.path,
      required this.duration});

  @override
  final PdfFragment fragment;
  @override
  final String title;
  @override
  final String description;
  @override
  final String path;
  @override
  final String duration;

  @override
  String toString() {
    return 'PdfEditSubjectEvent.audioAdded(fragment: $fragment, title: $title, description: $description, path: $path, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAudioAdded &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fragment, title, description, path, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventAudioAddedCopyWith<_$_EventAudioAdded> get copyWith =>
      __$$_EventAudioAddedCopyWithImpl<_$_EventAudioAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return audioAdded(fragment, title, description, path, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return audioAdded?.call(fragment, title, description, path, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (audioAdded != null) {
      return audioAdded(fragment, title, description, path, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return audioAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return audioAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (audioAdded != null) {
      return audioAdded(this);
    }
    return orElse();
  }
}

abstract class _EventAudioAdded implements PdfEditSubjectEvent {
  const factory _EventAudioAdded(
      {required final PdfFragment fragment,
      required final String title,
      required final String description,
      required final String path,
      required final String duration}) = _$_EventAudioAdded;

  PdfFragment get fragment;
  String get title;
  String get description;
  String get path;
  String get duration;
  @JsonKey(ignore: true)
  _$$_EventAudioAddedCopyWith<_$_EventAudioAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventAudioDeletedCopyWith<$Res> {
  factory _$$_EventAudioDeletedCopyWith(_$_EventAudioDeleted value,
          $Res Function(_$_EventAudioDeleted) then) =
      __$$_EventAudioDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({PdfFragment fragment});
}

/// @nodoc
class __$$_EventAudioDeletedCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventAudioDeleted>
    implements _$$_EventAudioDeletedCopyWith<$Res> {
  __$$_EventAudioDeletedCopyWithImpl(
      _$_EventAudioDeleted _value, $Res Function(_$_EventAudioDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
  }) {
    return _then(_$_EventAudioDeleted(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
    ));
  }
}

/// @nodoc

class _$_EventAudioDeleted implements _EventAudioDeleted {
  const _$_EventAudioDeleted({required this.fragment});

  @override
  final PdfFragment fragment;

  @override
  String toString() {
    return 'PdfEditSubjectEvent.deleteAudio(fragment: $fragment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAudioDeleted &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventAudioDeletedCopyWith<_$_EventAudioDeleted> get copyWith =>
      __$$_EventAudioDeletedCopyWithImpl<_$_EventAudioDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return deleteAudio(fragment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return deleteAudio?.call(fragment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteAudio != null) {
      return deleteAudio(fragment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return deleteAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return deleteAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteAudio != null) {
      return deleteAudio(this);
    }
    return orElse();
  }
}

abstract class _EventAudioDeleted implements PdfEditSubjectEvent {
  const factory _EventAudioDeleted({required final PdfFragment fragment}) =
      _$_EventAudioDeleted;

  PdfFragment get fragment;
  @JsonKey(ignore: true)
  _$$_EventAudioDeletedCopyWith<_$_EventAudioDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventImageAddedCopyWith<$Res> {
  factory _$$_EventImageAddedCopyWith(
          _$_EventImageAdded value, $Res Function(_$_EventImageAdded) then) =
      __$$_EventImageAddedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PdfFragment fragment, String title, String description, String path});
}

/// @nodoc
class __$$_EventImageAddedCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventImageAdded>
    implements _$$_EventImageAddedCopyWith<$Res> {
  __$$_EventImageAddedCopyWithImpl(
      _$_EventImageAdded _value, $Res Function(_$_EventImageAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
    Object? title = null,
    Object? description = null,
    Object? path = null,
  }) {
    return _then(_$_EventImageAdded(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventImageAdded implements _EventImageAdded {
  const _$_EventImageAdded(
      {required this.fragment,
      required this.title,
      required this.description,
      required this.path});

  @override
  final PdfFragment fragment;
  @override
  final String title;
  @override
  final String description;
  @override
  final String path;

  @override
  String toString() {
    return 'PdfEditSubjectEvent.imageAdded(fragment: $fragment, title: $title, description: $description, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventImageAdded &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fragment, title, description, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventImageAddedCopyWith<_$_EventImageAdded> get copyWith =>
      __$$_EventImageAddedCopyWithImpl<_$_EventImageAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return imageAdded(fragment, title, description, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return imageAdded?.call(fragment, title, description, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(fragment, title, description, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return imageAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return imageAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(this);
    }
    return orElse();
  }
}

abstract class _EventImageAdded implements PdfEditSubjectEvent {
  const factory _EventImageAdded(
      {required final PdfFragment fragment,
      required final String title,
      required final String description,
      required final String path}) = _$_EventImageAdded;

  PdfFragment get fragment;
  String get title;
  String get description;
  String get path;
  @JsonKey(ignore: true)
  _$$_EventImageAddedCopyWith<_$_EventImageAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventUpdateSubjectCopyWith<$Res> {
  factory _$$_EventUpdateSubjectCopyWith(_$_EventUpdateSubject value,
          $Res Function(_$_EventUpdateSubject) then) =
      __$$_EventUpdateSubjectCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_EventUpdateSubjectCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventUpdateSubject>
    implements _$$_EventUpdateSubjectCopyWith<$Res> {
  __$$_EventUpdateSubjectCopyWithImpl(
      _$_EventUpdateSubject _value, $Res Function(_$_EventUpdateSubject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EventUpdateSubject(
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

class _$_EventUpdateSubject implements _EventUpdateSubject {
  const _$_EventUpdateSubject({required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'PdfEditSubjectEvent.updateSubject(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdateSubject &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventUpdateSubjectCopyWith<_$_EventUpdateSubject> get copyWith =>
      __$$_EventUpdateSubjectCopyWithImpl<_$_EventUpdateSubject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return updateSubject(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return updateSubject?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updateSubject != null) {
      return updateSubject(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return updateSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return updateSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updateSubject != null) {
      return updateSubject(this);
    }
    return orElse();
  }
}

abstract class _EventUpdateSubject implements PdfEditSubjectEvent {
  const factory _EventUpdateSubject(
      {required final String title,
      required final String description}) = _$_EventUpdateSubject;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$_EventUpdateSubjectCopyWith<_$_EventUpdateSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventUpdateFragmentCopyWith<$Res> {
  factory _$$_EventUpdateFragmentCopyWith(_$_EventUpdateFragment value,
          $Res Function(_$_EventUpdateFragment) then) =
      __$$_EventUpdateFragmentCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_EventUpdateFragmentCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventUpdateFragment>
    implements _$$_EventUpdateFragmentCopyWith<$Res> {
  __$$_EventUpdateFragmentCopyWithImpl(_$_EventUpdateFragment _value,
      $Res Function(_$_EventUpdateFragment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EventUpdateFragment(
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

class _$_EventUpdateFragment implements _EventUpdateFragment {
  const _$_EventUpdateFragment(
      {required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'PdfEditSubjectEvent.updateFragment(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdateFragment &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventUpdateFragmentCopyWith<_$_EventUpdateFragment> get copyWith =>
      __$$_EventUpdateFragmentCopyWithImpl<_$_EventUpdateFragment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return updateFragment(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return updateFragment?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updateFragment != null) {
      return updateFragment(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return updateFragment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return updateFragment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updateFragment != null) {
      return updateFragment(this);
    }
    return orElse();
  }
}

abstract class _EventUpdateFragment implements PdfEditSubjectEvent {
  const factory _EventUpdateFragment(
      {required final String title,
      required final String description}) = _$_EventUpdateFragment;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$_EventUpdateFragmentCopyWith<_$_EventUpdateFragment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventDeleteFragmentCopyWith<$Res> {
  factory _$$_EventDeleteFragmentCopyWith(_$_EventDeleteFragment value,
          $Res Function(_$_EventDeleteFragment) then) =
      __$$_EventDeleteFragmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventDeleteFragmentCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventDeleteFragment>
    implements _$$_EventDeleteFragmentCopyWith<$Res> {
  __$$_EventDeleteFragmentCopyWithImpl(_$_EventDeleteFragment _value,
      $Res Function(_$_EventDeleteFragment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventDeleteFragment implements _EventDeleteFragment {
  const _$_EventDeleteFragment();

  @override
  String toString() {
    return 'PdfEditSubjectEvent.deleteFragment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventDeleteFragment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return deleteFragment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return deleteFragment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteFragment != null) {
      return deleteFragment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return deleteFragment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return deleteFragment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteFragment != null) {
      return deleteFragment(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteFragment implements PdfEditSubjectEvent {
  const factory _EventDeleteFragment() = _$_EventDeleteFragment;
}

/// @nodoc
abstract class _$$_EventReorderFragmentCopyWith<$Res> {
  factory _$$_EventReorderFragmentCopyWith(_$_EventReorderFragment value,
          $Res Function(_$_EventReorderFragment) then) =
      __$$_EventReorderFragmentCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$_EventReorderFragmentCopyWithImpl<$Res>
    extends _$PdfEditSubjectEventCopyWithImpl<$Res, _$_EventReorderFragment>
    implements _$$_EventReorderFragmentCopyWith<$Res> {
  __$$_EventReorderFragmentCopyWithImpl(_$_EventReorderFragment _value,
      $Res Function(_$_EventReorderFragment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$_EventReorderFragment(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_EventReorderFragment implements _EventReorderFragment {
  const _$_EventReorderFragment({required final List<int> ids}) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'PdfEditSubjectEvent.reorderFragments(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventReorderFragment &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventReorderFragmentCopyWith<_$_EventReorderFragment> get copyWith =>
      __$$_EventReorderFragmentCopyWithImpl<_$_EventReorderFragment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String title,
            String description, String path, String duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(
            PdfFragment fragment, String title, String description, String path)
        imageAdded,
    required TResult Function(String title, String description) updateSubject,
    required TResult Function(String title, String description) updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<int> ids) reorderFragments,
  }) {
    return reorderFragments(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult? Function(String title, String description)? updateSubject,
    TResult? Function(String title, String description)? updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<int> ids)? reorderFragments,
  }) {
    return reorderFragments?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String title, String description,
            String path, String duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, String title, String description,
            String path)?
        imageAdded,
    TResult Function(String title, String description)? updateSubject,
    TResult Function(String title, String description)? updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<int> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (reorderFragments != null) {
      return reorderFragments(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdateSubject value) updateSubject,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return reorderFragments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdateSubject value)? updateSubject,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return reorderFragments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdateSubject value)? updateSubject,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (reorderFragments != null) {
      return reorderFragments(this);
    }
    return orElse();
  }
}

abstract class _EventReorderFragment implements PdfEditSubjectEvent {
  const factory _EventReorderFragment({required final List<int> ids}) =
      _$_EventReorderFragment;

  List<int> get ids;
  @JsonKey(ignore: true)
  _$$_EventReorderFragmentCopyWith<_$_EventReorderFragment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PdfEditSubjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function(String? errorText) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function(String? errorText)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function(String? errorText)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfEditSubjectStateCopyWith<$Res> {
  factory $PdfEditSubjectStateCopyWith(
          PdfEditSubjectState value, $Res Function(PdfEditSubjectState) then) =
      _$PdfEditSubjectStateCopyWithImpl<$Res, PdfEditSubjectState>;
}

/// @nodoc
class _$PdfEditSubjectStateCopyWithImpl<$Res, $Val extends PdfEditSubjectState>
    implements $PdfEditSubjectStateCopyWith<$Res> {
  _$PdfEditSubjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StatePendingCopyWith<$Res> {
  factory _$$_StatePendingCopyWith(
          _$_StatePending value, $Res Function(_$_StatePending) then) =
      __$$_StatePendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatePendingCopyWithImpl<$Res>
    extends _$PdfEditSubjectStateCopyWithImpl<$Res, _$_StatePending>
    implements _$$_StatePendingCopyWith<$Res> {
  __$$_StatePendingCopyWithImpl(
      _$_StatePending _value, $Res Function(_$_StatePending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StatePending implements _StatePending {
  const _$_StatePending();

  @override
  String toString() {
    return 'PdfEditSubjectState.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StatePending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function(String? errorText) loadingError,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function(String? errorText)? loadingError,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements PdfEditSubjectState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<PdfFragment> fragments,
      PdfFragment? selectedFragment,
      bool subjectUpdatePending,
      bool fragmentUpdatePending,
      bool deleteFragmentPending});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PdfEditSubjectStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? fragments = null,
    Object? selectedFragment = freezed,
    Object? subjectUpdatePending = null,
    Object? fragmentUpdatePending = null,
    Object? deleteFragmentPending = null,
  }) {
    return _then(_$_ScreenState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fragments: null == fragments
          ? _value._fragments
          : fragments // ignore: cast_nullable_to_non_nullable
              as List<PdfFragment>,
      selectedFragment: freezed == selectedFragment
          ? _value.selectedFragment
          : selectedFragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment?,
      subjectUpdatePending: null == subjectUpdatePending
          ? _value.subjectUpdatePending
          : subjectUpdatePending // ignore: cast_nullable_to_non_nullable
              as bool,
      fragmentUpdatePending: null == fragmentUpdatePending
          ? _value.fragmentUpdatePending
          : fragmentUpdatePending // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteFragmentPending: null == deleteFragmentPending
          ? _value.deleteFragmentPending
          : deleteFragmentPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState(
      {required this.title,
      required this.description,
      required final List<PdfFragment> fragments,
      this.selectedFragment,
      this.subjectUpdatePending = false,
      this.fragmentUpdatePending = false,
      this.deleteFragmentPending = false})
      : _fragments = fragments;

  @override
  final String title;
  @override
  final String description;
  final List<PdfFragment> _fragments;
  @override
  List<PdfFragment> get fragments {
    if (_fragments is EqualUnmodifiableListView) return _fragments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fragments);
  }

  @override
  final PdfFragment? selectedFragment;
  @override
  @JsonKey()
  final bool subjectUpdatePending;
  @override
  @JsonKey()
  final bool fragmentUpdatePending;
  @override
  @JsonKey()
  final bool deleteFragmentPending;

  @override
  String toString() {
    return 'PdfEditSubjectState.screenState(title: $title, description: $description, fragments: $fragments, selectedFragment: $selectedFragment, subjectUpdatePending: $subjectUpdatePending, fragmentUpdatePending: $fragmentUpdatePending, deleteFragmentPending: $deleteFragmentPending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._fragments, _fragments) &&
            (identical(other.selectedFragment, selectedFragment) ||
                other.selectedFragment == selectedFragment) &&
            (identical(other.subjectUpdatePending, subjectUpdatePending) ||
                other.subjectUpdatePending == subjectUpdatePending) &&
            (identical(other.fragmentUpdatePending, fragmentUpdatePending) ||
                other.fragmentUpdatePending == fragmentUpdatePending) &&
            (identical(other.deleteFragmentPending, deleteFragmentPending) ||
                other.deleteFragmentPending == deleteFragmentPending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_fragments),
      selectedFragment,
      subjectUpdatePending,
      fragmentUpdatePending,
      deleteFragmentPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function(String? errorText) loadingError,
  }) {
    return screenState(title, description, fragments, selectedFragment,
        subjectUpdatePending, fragmentUpdatePending, deleteFragmentPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return screenState?.call(title, description, fragments, selectedFragment,
        subjectUpdatePending, fragmentUpdatePending, deleteFragmentPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function(String? errorText)? loadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(title, description, fragments, selectedFragment,
          subjectUpdatePending, fragmentUpdatePending, deleteFragmentPending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements PdfEditSubjectState {
  const factory _ScreenState(
      {required final String title,
      required final String description,
      required final List<PdfFragment> fragments,
      final PdfFragment? selectedFragment,
      final bool subjectUpdatePending,
      final bool fragmentUpdatePending,
      final bool deleteFragmentPending}) = _$_ScreenState;

  String get title;
  String get description;
  List<PdfFragment> get fragments;
  PdfFragment? get selectedFragment;
  bool get subjectUpdatePending;
  bool get fragmentUpdatePending;
  bool get deleteFragmentPending;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$PdfEditSubjectStateCopyWithImpl<$Res, _$_StateRequestError>
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

class _$_StateRequestError implements _StateRequestError {
  const _$_StateRequestError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'PdfEditSubjectState.requestError(errorText: $errorText)';
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
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function(String? errorText) loadingError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function(String? errorText)? loadingError,
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
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements PdfEditSubjectState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateLoadingErrorCopyWith<$Res> {
  factory _$$_StateLoadingErrorCopyWith(_$_StateLoadingError value,
          $Res Function(_$_StateLoadingError) then) =
      __$$_StateLoadingErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateLoadingErrorCopyWithImpl<$Res>
    extends _$PdfEditSubjectStateCopyWithImpl<$Res, _$_StateLoadingError>
    implements _$$_StateLoadingErrorCopyWith<$Res> {
  __$$_StateLoadingErrorCopyWithImpl(
      _$_StateLoadingError _value, $Res Function(_$_StateLoadingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateLoadingError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateLoadingError implements _StateLoadingError {
  const _$_StateLoadingError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'PdfEditSubjectState.loadingError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoadingError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadingErrorCopyWith<_$_StateLoadingError> get copyWith =>
      __$$_StateLoadingErrorCopyWithImpl<_$_StateLoadingError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function(String? errorText) loadingError,
  }) {
    return loadingError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return loadingError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool subjectUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function(String? errorText)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingError implements PdfEditSubjectState {
  const factory _StateLoadingError({final String? errorText}) =
      _$_StateLoadingError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateLoadingErrorCopyWith<_$_StateLoadingError> get copyWith =>
      throw _privateConstructorUsedError;
}
