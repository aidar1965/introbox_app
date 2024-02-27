// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoursesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isAuthorized) loadingError,
    required TResult Function() loadMoreError,
    required TResult Function(List<Course> courses, bool isAuthorized)
        screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isAuthorized)? loadingError,
    TResult? Function()? loadMoreError,
    TResult? Function(List<Course> courses, bool isAuthorized)? screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isAuthorized)? loadingError,
    TResult Function()? loadMoreError,
    TResult Function(List<Course> courses, bool isAuthorized)? screenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLoadMoreError value) loadMoreError,
    required TResult Function(_ScreenState value) screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLoadMoreError value)? loadMoreError,
    TResult? Function(_ScreenState value)? screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLoadMoreError value)? loadMoreError,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesStateCopyWith<$Res> {
  factory $CoursesStateCopyWith(
          CoursesState value, $Res Function(CoursesState) then) =
      _$CoursesStateCopyWithImpl<$Res, CoursesState>;
}

/// @nodoc
class _$CoursesStateCopyWithImpl<$Res, $Val extends CoursesState>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._value, this._then);

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
    extends _$CoursesStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'CoursesState.pending()';
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
    required TResult Function(bool isAuthorized) loadingError,
    required TResult Function() loadMoreError,
    required TResult Function(List<Course> courses, bool isAuthorized)
        screenState,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isAuthorized)? loadingError,
    TResult? Function()? loadMoreError,
    TResult? Function(List<Course> courses, bool isAuthorized)? screenState,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isAuthorized)? loadingError,
    TResult Function()? loadMoreError,
    TResult Function(List<Course> courses, bool isAuthorized)? screenState,
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
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLoadMoreError value) loadMoreError,
    required TResult Function(_ScreenState value) screenState,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLoadMoreError value)? loadMoreError,
    TResult? Function(_ScreenState value)? screenState,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLoadMoreError value)? loadMoreError,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements CoursesState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_StateLoadingErrorCopyWith<$Res> {
  factory _$$_StateLoadingErrorCopyWith(_$_StateLoadingError value,
          $Res Function(_$_StateLoadingError) then) =
      __$$_StateLoadingErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuthorized});
}

/// @nodoc
class __$$_StateLoadingErrorCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_StateLoadingError>
    implements _$$_StateLoadingErrorCopyWith<$Res> {
  __$$_StateLoadingErrorCopyWithImpl(
      _$_StateLoadingError _value, $Res Function(_$_StateLoadingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthorized = null,
  }) {
    return _then(_$_StateLoadingError(
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StateLoadingError implements _StateLoadingError {
  const _$_StateLoadingError({required this.isAuthorized});

  @override
  final bool isAuthorized;

  @override
  String toString() {
    return 'CoursesState.loadingError(isAuthorized: $isAuthorized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoadingError &&
            (identical(other.isAuthorized, isAuthorized) ||
                other.isAuthorized == isAuthorized));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthorized);

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
    required TResult Function(bool isAuthorized) loadingError,
    required TResult Function() loadMoreError,
    required TResult Function(List<Course> courses, bool isAuthorized)
        screenState,
  }) {
    return loadingError(isAuthorized);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isAuthorized)? loadingError,
    TResult? Function()? loadMoreError,
    TResult? Function(List<Course> courses, bool isAuthorized)? screenState,
  }) {
    return loadingError?.call(isAuthorized);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isAuthorized)? loadingError,
    TResult Function()? loadMoreError,
    TResult Function(List<Course> courses, bool isAuthorized)? screenState,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(isAuthorized);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLoadMoreError value) loadMoreError,
    required TResult Function(_ScreenState value) screenState,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLoadMoreError value)? loadMoreError,
    TResult? Function(_ScreenState value)? screenState,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLoadMoreError value)? loadMoreError,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingError implements CoursesState {
  const factory _StateLoadingError({required final bool isAuthorized}) =
      _$_StateLoadingError;

  bool get isAuthorized;
  @JsonKey(ignore: true)
  _$$_StateLoadingErrorCopyWith<_$_StateLoadingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateLoadMoreErrorCopyWith<$Res> {
  factory _$$_StateLoadMoreErrorCopyWith(_$_StateLoadMoreError value,
          $Res Function(_$_StateLoadMoreError) then) =
      __$$_StateLoadMoreErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateLoadMoreErrorCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_StateLoadMoreError>
    implements _$$_StateLoadMoreErrorCopyWith<$Res> {
  __$$_StateLoadMoreErrorCopyWithImpl(
      _$_StateLoadMoreError _value, $Res Function(_$_StateLoadMoreError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateLoadMoreError implements _StateLoadMoreError {
  const _$_StateLoadMoreError();

  @override
  String toString() {
    return 'CoursesState.loadMoreError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateLoadMoreError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isAuthorized) loadingError,
    required TResult Function() loadMoreError,
    required TResult Function(List<Course> courses, bool isAuthorized)
        screenState,
  }) {
    return loadMoreError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isAuthorized)? loadingError,
    TResult? Function()? loadMoreError,
    TResult? Function(List<Course> courses, bool isAuthorized)? screenState,
  }) {
    return loadMoreError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isAuthorized)? loadingError,
    TResult Function()? loadMoreError,
    TResult Function(List<Course> courses, bool isAuthorized)? screenState,
    required TResult orElse(),
  }) {
    if (loadMoreError != null) {
      return loadMoreError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLoadMoreError value) loadMoreError,
    required TResult Function(_ScreenState value) screenState,
  }) {
    return loadMoreError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLoadMoreError value)? loadMoreError,
    TResult? Function(_ScreenState value)? screenState,
  }) {
    return loadMoreError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLoadMoreError value)? loadMoreError,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) {
    if (loadMoreError != null) {
      return loadMoreError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadMoreError implements CoursesState {
  const factory _StateLoadMoreError() = _$_StateLoadMoreError;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Course> courses, bool isAuthorized});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isAuthorized = null,
  }) {
    return _then(_$_ScreenState(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState(
      {required final List<Course> courses, required this.isAuthorized})
      : _courses = courses;

  final List<Course> _courses;
  @override
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  final bool isAuthorized;

  @override
  String toString() {
    return 'CoursesState.screenState(courses: $courses, isAuthorized: $isAuthorized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            (identical(other.isAuthorized, isAuthorized) ||
                other.isAuthorized == isAuthorized));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_courses), isAuthorized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isAuthorized) loadingError,
    required TResult Function() loadMoreError,
    required TResult Function(List<Course> courses, bool isAuthorized)
        screenState,
  }) {
    return screenState(courses, isAuthorized);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isAuthorized)? loadingError,
    TResult? Function()? loadMoreError,
    TResult? Function(List<Course> courses, bool isAuthorized)? screenState,
  }) {
    return screenState?.call(courses, isAuthorized);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isAuthorized)? loadingError,
    TResult Function()? loadMoreError,
    TResult Function(List<Course> courses, bool isAuthorized)? screenState,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(courses, isAuthorized);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLoadMoreError value) loadMoreError,
    required TResult Function(_ScreenState value) screenState,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLoadMoreError value)? loadMoreError,
    TResult? Function(_ScreenState value)? screenState,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLoadMoreError value)? loadMoreError,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements CoursesState {
  const factory _ScreenState(
      {required final List<Course> courses,
      required final bool isAuthorized}) = _$_ScreenState;

  List<Course> get courses;
  bool get isAuthorized;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventLoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesEventCopyWith<$Res> {
  factory $CoursesEventCopyWith(
          CoursesEvent value, $Res Function(CoursesEvent) then) =
      _$CoursesEventCopyWithImpl<$Res, CoursesEvent>;
}

/// @nodoc
class _$CoursesEventCopyWithImpl<$Res, $Val extends CoursesEvent>
    implements $CoursesEventCopyWith<$Res> {
  _$CoursesEventCopyWithImpl(this._value, this._then);

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
    extends _$CoursesEventCopyWithImpl<$Res, _$_EventInitialDataRequested>
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
    return 'CoursesEvent.initialDataRequested()';
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
    required TResult Function() loadMore,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? loadMore,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? loadMore,
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
    required TResult Function(_EventLoadMore value) loadMore,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements CoursesEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventLoadMoreCopyWith<$Res> {
  factory _$$_EventLoadMoreCopyWith(
          _$_EventLoadMore value, $Res Function(_$_EventLoadMore) then) =
      __$$_EventLoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventLoadMoreCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$_EventLoadMore>
    implements _$$_EventLoadMoreCopyWith<$Res> {
  __$$_EventLoadMoreCopyWithImpl(
      _$_EventLoadMore _value, $Res Function(_$_EventLoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventLoadMore implements _EventLoadMore {
  const _$_EventLoadMore();

  @override
  String toString() {
    return 'CoursesEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventLoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventLoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _EventLoadMore implements CoursesEvent {
  const factory _EventLoadMore() = _$_EventLoadMore;
}
