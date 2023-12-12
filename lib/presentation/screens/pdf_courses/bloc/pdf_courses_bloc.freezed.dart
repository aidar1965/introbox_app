// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfCoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(int courseId) courseDetailsClicked,
    required TResult Function(int courseId) editCourseClicked,
    required TResult Function() reloadPage,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) deleteCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(int courseId)? courseDetailsClicked,
    TResult? Function(int courseId)? editCourseClicked,
    TResult? Function()? reloadPage,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? deleteCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(int courseId)? courseDetailsClicked,
    TResult Function(int courseId)? editCourseClicked,
    TResult Function()? reloadPage,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? deleteCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventCourseDetailsClicked value)
        courseDetailsClicked,
    required TResult Function(_EvenEditCourseClicked value) editCourseClicked,
    required TResult Function(_EventReloadPage value) reloadPage,
    required TResult Function(_EventPublishCourse value) publishCourse,
    required TResult Function(_EventDeleteCourse value) deleteCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult? Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult? Function(_EventReloadPage value)? reloadPage,
    TResult? Function(_EventPublishCourse value)? publishCourse,
    TResult? Function(_EventDeleteCourse value)? deleteCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult Function(_EventReloadPage value)? reloadPage,
    TResult Function(_EventPublishCourse value)? publishCourse,
    TResult Function(_EventDeleteCourse value)? deleteCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCoursesEventCopyWith<$Res> {
  factory $PdfCoursesEventCopyWith(
          PdfCoursesEvent value, $Res Function(PdfCoursesEvent) then) =
      _$PdfCoursesEventCopyWithImpl<$Res, PdfCoursesEvent>;
}

/// @nodoc
class _$PdfCoursesEventCopyWithImpl<$Res, $Val extends PdfCoursesEvent>
    implements $PdfCoursesEventCopyWith<$Res> {
  _$PdfCoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventDataRequestedCopyWith<$Res> {
  factory _$$_EventDataRequestedCopyWith(_$_EventDataRequested value,
          $Res Function(_$_EventDataRequested) then) =
      __$$_EventDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventDataRequestedCopyWithImpl<$Res>
    extends _$PdfCoursesEventCopyWithImpl<$Res, _$_EventDataRequested>
    implements _$$_EventDataRequestedCopyWith<$Res> {
  __$$_EventDataRequestedCopyWithImpl(
      _$_EventDataRequested _value, $Res Function(_$_EventDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventDataRequested implements _EventDataRequested {
  const _$_EventDataRequested();

  @override
  String toString() {
    return 'PdfCoursesEvent.dataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventDataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(int courseId) courseDetailsClicked,
    required TResult Function(int courseId) editCourseClicked,
    required TResult Function() reloadPage,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) deleteCourse,
  }) {
    return dataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(int courseId)? courseDetailsClicked,
    TResult? Function(int courseId)? editCourseClicked,
    TResult? Function()? reloadPage,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? deleteCourse,
  }) {
    return dataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(int courseId)? courseDetailsClicked,
    TResult Function(int courseId)? editCourseClicked,
    TResult Function()? reloadPage,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? deleteCourse,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventCourseDetailsClicked value)
        courseDetailsClicked,
    required TResult Function(_EvenEditCourseClicked value) editCourseClicked,
    required TResult Function(_EventReloadPage value) reloadPage,
    required TResult Function(_EventPublishCourse value) publishCourse,
    required TResult Function(_EventDeleteCourse value) deleteCourse,
  }) {
    return dataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult? Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult? Function(_EventReloadPage value)? reloadPage,
    TResult? Function(_EventPublishCourse value)? publishCourse,
    TResult? Function(_EventDeleteCourse value)? deleteCourse,
  }) {
    return dataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult Function(_EventReloadPage value)? reloadPage,
    TResult Function(_EventPublishCourse value)? publishCourse,
    TResult Function(_EventDeleteCourse value)? deleteCourse,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventDataRequested implements PdfCoursesEvent {
  const factory _EventDataRequested() = _$_EventDataRequested;
}

/// @nodoc
abstract class _$$_EventCourseDetailsClickedCopyWith<$Res> {
  factory _$$_EventCourseDetailsClickedCopyWith(
          _$_EventCourseDetailsClicked value,
          $Res Function(_$_EventCourseDetailsClicked) then) =
      __$$_EventCourseDetailsClickedCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$_EventCourseDetailsClickedCopyWithImpl<$Res>
    extends _$PdfCoursesEventCopyWithImpl<$Res, _$_EventCourseDetailsClicked>
    implements _$$_EventCourseDetailsClickedCopyWith<$Res> {
  __$$_EventCourseDetailsClickedCopyWithImpl(
      _$_EventCourseDetailsClicked _value,
      $Res Function(_$_EventCourseDetailsClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$_EventCourseDetailsClicked(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventCourseDetailsClicked implements _EventCourseDetailsClicked {
  const _$_EventCourseDetailsClicked({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'PdfCoursesEvent.courseDetailsClicked(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCourseDetailsClicked &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCourseDetailsClickedCopyWith<_$_EventCourseDetailsClicked>
      get copyWith => __$$_EventCourseDetailsClickedCopyWithImpl<
          _$_EventCourseDetailsClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(int courseId) courseDetailsClicked,
    required TResult Function(int courseId) editCourseClicked,
    required TResult Function() reloadPage,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) deleteCourse,
  }) {
    return courseDetailsClicked(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(int courseId)? courseDetailsClicked,
    TResult? Function(int courseId)? editCourseClicked,
    TResult? Function()? reloadPage,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? deleteCourse,
  }) {
    return courseDetailsClicked?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(int courseId)? courseDetailsClicked,
    TResult Function(int courseId)? editCourseClicked,
    TResult Function()? reloadPage,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? deleteCourse,
    required TResult orElse(),
  }) {
    if (courseDetailsClicked != null) {
      return courseDetailsClicked(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventCourseDetailsClicked value)
        courseDetailsClicked,
    required TResult Function(_EvenEditCourseClicked value) editCourseClicked,
    required TResult Function(_EventReloadPage value) reloadPage,
    required TResult Function(_EventPublishCourse value) publishCourse,
    required TResult Function(_EventDeleteCourse value) deleteCourse,
  }) {
    return courseDetailsClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult? Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult? Function(_EventReloadPage value)? reloadPage,
    TResult? Function(_EventPublishCourse value)? publishCourse,
    TResult? Function(_EventDeleteCourse value)? deleteCourse,
  }) {
    return courseDetailsClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult Function(_EventReloadPage value)? reloadPage,
    TResult Function(_EventPublishCourse value)? publishCourse,
    TResult Function(_EventDeleteCourse value)? deleteCourse,
    required TResult orElse(),
  }) {
    if (courseDetailsClicked != null) {
      return courseDetailsClicked(this);
    }
    return orElse();
  }
}

abstract class _EventCourseDetailsClicked implements PdfCoursesEvent {
  const factory _EventCourseDetailsClicked({required final int courseId}) =
      _$_EventCourseDetailsClicked;

  int get courseId;
  @JsonKey(ignore: true)
  _$$_EventCourseDetailsClickedCopyWith<_$_EventCourseDetailsClicked>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EvenEditCourseClickedCopyWith<$Res> {
  factory _$$_EvenEditCourseClickedCopyWith(_$_EvenEditCourseClicked value,
          $Res Function(_$_EvenEditCourseClicked) then) =
      __$$_EvenEditCourseClickedCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$_EvenEditCourseClickedCopyWithImpl<$Res>
    extends _$PdfCoursesEventCopyWithImpl<$Res, _$_EvenEditCourseClicked>
    implements _$$_EvenEditCourseClickedCopyWith<$Res> {
  __$$_EvenEditCourseClickedCopyWithImpl(_$_EvenEditCourseClicked _value,
      $Res Function(_$_EvenEditCourseClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$_EvenEditCourseClicked(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EvenEditCourseClicked implements _EvenEditCourseClicked {
  const _$_EvenEditCourseClicked({required this.courseId});

  @override
  final int courseId;

  @override
  String toString() {
    return 'PdfCoursesEvent.editCourseClicked(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvenEditCourseClicked &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvenEditCourseClickedCopyWith<_$_EvenEditCourseClicked> get copyWith =>
      __$$_EvenEditCourseClickedCopyWithImpl<_$_EvenEditCourseClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(int courseId) courseDetailsClicked,
    required TResult Function(int courseId) editCourseClicked,
    required TResult Function() reloadPage,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) deleteCourse,
  }) {
    return editCourseClicked(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(int courseId)? courseDetailsClicked,
    TResult? Function(int courseId)? editCourseClicked,
    TResult? Function()? reloadPage,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? deleteCourse,
  }) {
    return editCourseClicked?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(int courseId)? courseDetailsClicked,
    TResult Function(int courseId)? editCourseClicked,
    TResult Function()? reloadPage,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? deleteCourse,
    required TResult orElse(),
  }) {
    if (editCourseClicked != null) {
      return editCourseClicked(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventCourseDetailsClicked value)
        courseDetailsClicked,
    required TResult Function(_EvenEditCourseClicked value) editCourseClicked,
    required TResult Function(_EventReloadPage value) reloadPage,
    required TResult Function(_EventPublishCourse value) publishCourse,
    required TResult Function(_EventDeleteCourse value) deleteCourse,
  }) {
    return editCourseClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult? Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult? Function(_EventReloadPage value)? reloadPage,
    TResult? Function(_EventPublishCourse value)? publishCourse,
    TResult? Function(_EventDeleteCourse value)? deleteCourse,
  }) {
    return editCourseClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult Function(_EventReloadPage value)? reloadPage,
    TResult Function(_EventPublishCourse value)? publishCourse,
    TResult Function(_EventDeleteCourse value)? deleteCourse,
    required TResult orElse(),
  }) {
    if (editCourseClicked != null) {
      return editCourseClicked(this);
    }
    return orElse();
  }
}

abstract class _EvenEditCourseClicked implements PdfCoursesEvent {
  const factory _EvenEditCourseClicked({required final int courseId}) =
      _$_EvenEditCourseClicked;

  int get courseId;
  @JsonKey(ignore: true)
  _$$_EvenEditCourseClickedCopyWith<_$_EvenEditCourseClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventReloadPageCopyWith<$Res> {
  factory _$$_EventReloadPageCopyWith(
          _$_EventReloadPage value, $Res Function(_$_EventReloadPage) then) =
      __$$_EventReloadPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventReloadPageCopyWithImpl<$Res>
    extends _$PdfCoursesEventCopyWithImpl<$Res, _$_EventReloadPage>
    implements _$$_EventReloadPageCopyWith<$Res> {
  __$$_EventReloadPageCopyWithImpl(
      _$_EventReloadPage _value, $Res Function(_$_EventReloadPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventReloadPage implements _EventReloadPage {
  const _$_EventReloadPage();

  @override
  String toString() {
    return 'PdfCoursesEvent.reloadPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventReloadPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(int courseId) courseDetailsClicked,
    required TResult Function(int courseId) editCourseClicked,
    required TResult Function() reloadPage,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) deleteCourse,
  }) {
    return reloadPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(int courseId)? courseDetailsClicked,
    TResult? Function(int courseId)? editCourseClicked,
    TResult? Function()? reloadPage,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? deleteCourse,
  }) {
    return reloadPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(int courseId)? courseDetailsClicked,
    TResult Function(int courseId)? editCourseClicked,
    TResult Function()? reloadPage,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? deleteCourse,
    required TResult orElse(),
  }) {
    if (reloadPage != null) {
      return reloadPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventCourseDetailsClicked value)
        courseDetailsClicked,
    required TResult Function(_EvenEditCourseClicked value) editCourseClicked,
    required TResult Function(_EventReloadPage value) reloadPage,
    required TResult Function(_EventPublishCourse value) publishCourse,
    required TResult Function(_EventDeleteCourse value) deleteCourse,
  }) {
    return reloadPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult? Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult? Function(_EventReloadPage value)? reloadPage,
    TResult? Function(_EventPublishCourse value)? publishCourse,
    TResult? Function(_EventDeleteCourse value)? deleteCourse,
  }) {
    return reloadPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult Function(_EventReloadPage value)? reloadPage,
    TResult Function(_EventPublishCourse value)? publishCourse,
    TResult Function(_EventDeleteCourse value)? deleteCourse,
    required TResult orElse(),
  }) {
    if (reloadPage != null) {
      return reloadPage(this);
    }
    return orElse();
  }
}

abstract class _EventReloadPage implements PdfCoursesEvent {
  const factory _EventReloadPage() = _$_EventReloadPage;
}

/// @nodoc
abstract class _$$_EventPublishCourseCopyWith<$Res> {
  factory _$$_EventPublishCourseCopyWith(_$_EventPublishCourse value,
          $Res Function(_$_EventPublishCourse) then) =
      __$$_EventPublishCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({Course course});
}

/// @nodoc
class __$$_EventPublishCourseCopyWithImpl<$Res>
    extends _$PdfCoursesEventCopyWithImpl<$Res, _$_EventPublishCourse>
    implements _$$_EventPublishCourseCopyWith<$Res> {
  __$$_EventPublishCourseCopyWithImpl(
      _$_EventPublishCourse _value, $Res Function(_$_EventPublishCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$_EventPublishCourse(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc

class _$_EventPublishCourse implements _EventPublishCourse {
  const _$_EventPublishCourse({required this.course});

  @override
  final Course course;

  @override
  String toString() {
    return 'PdfCoursesEvent.publishCourse(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventPublishCourse &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventPublishCourseCopyWith<_$_EventPublishCourse> get copyWith =>
      __$$_EventPublishCourseCopyWithImpl<_$_EventPublishCourse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(int courseId) courseDetailsClicked,
    required TResult Function(int courseId) editCourseClicked,
    required TResult Function() reloadPage,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) deleteCourse,
  }) {
    return publishCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(int courseId)? courseDetailsClicked,
    TResult? Function(int courseId)? editCourseClicked,
    TResult? Function()? reloadPage,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? deleteCourse,
  }) {
    return publishCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(int courseId)? courseDetailsClicked,
    TResult Function(int courseId)? editCourseClicked,
    TResult Function()? reloadPage,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? deleteCourse,
    required TResult orElse(),
  }) {
    if (publishCourse != null) {
      return publishCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventCourseDetailsClicked value)
        courseDetailsClicked,
    required TResult Function(_EvenEditCourseClicked value) editCourseClicked,
    required TResult Function(_EventReloadPage value) reloadPage,
    required TResult Function(_EventPublishCourse value) publishCourse,
    required TResult Function(_EventDeleteCourse value) deleteCourse,
  }) {
    return publishCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult? Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult? Function(_EventReloadPage value)? reloadPage,
    TResult? Function(_EventPublishCourse value)? publishCourse,
    TResult? Function(_EventDeleteCourse value)? deleteCourse,
  }) {
    return publishCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult Function(_EventReloadPage value)? reloadPage,
    TResult Function(_EventPublishCourse value)? publishCourse,
    TResult Function(_EventDeleteCourse value)? deleteCourse,
    required TResult orElse(),
  }) {
    if (publishCourse != null) {
      return publishCourse(this);
    }
    return orElse();
  }
}

abstract class _EventPublishCourse implements PdfCoursesEvent {
  const factory _EventPublishCourse({required final Course course}) =
      _$_EventPublishCourse;

  Course get course;
  @JsonKey(ignore: true)
  _$$_EventPublishCourseCopyWith<_$_EventPublishCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventDeleteCourseCopyWith<$Res> {
  factory _$$_EventDeleteCourseCopyWith(_$_EventDeleteCourse value,
          $Res Function(_$_EventDeleteCourse) then) =
      __$$_EventDeleteCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({Course course});
}

/// @nodoc
class __$$_EventDeleteCourseCopyWithImpl<$Res>
    extends _$PdfCoursesEventCopyWithImpl<$Res, _$_EventDeleteCourse>
    implements _$$_EventDeleteCourseCopyWith<$Res> {
  __$$_EventDeleteCourseCopyWithImpl(
      _$_EventDeleteCourse _value, $Res Function(_$_EventDeleteCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$_EventDeleteCourse(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc

class _$_EventDeleteCourse implements _EventDeleteCourse {
  const _$_EventDeleteCourse({required this.course});

  @override
  final Course course;

  @override
  String toString() {
    return 'PdfCoursesEvent.deleteCourse(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDeleteCourse &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDeleteCourseCopyWith<_$_EventDeleteCourse> get copyWith =>
      __$$_EventDeleteCourseCopyWithImpl<_$_EventDeleteCourse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(int courseId) courseDetailsClicked,
    required TResult Function(int courseId) editCourseClicked,
    required TResult Function() reloadPage,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) deleteCourse,
  }) {
    return deleteCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(int courseId)? courseDetailsClicked,
    TResult? Function(int courseId)? editCourseClicked,
    TResult? Function()? reloadPage,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? deleteCourse,
  }) {
    return deleteCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(int courseId)? courseDetailsClicked,
    TResult Function(int courseId)? editCourseClicked,
    TResult Function()? reloadPage,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? deleteCourse,
    required TResult orElse(),
  }) {
    if (deleteCourse != null) {
      return deleteCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventCourseDetailsClicked value)
        courseDetailsClicked,
    required TResult Function(_EvenEditCourseClicked value) editCourseClicked,
    required TResult Function(_EventReloadPage value) reloadPage,
    required TResult Function(_EventPublishCourse value) publishCourse,
    required TResult Function(_EventDeleteCourse value) deleteCourse,
  }) {
    return deleteCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult? Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult? Function(_EventReloadPage value)? reloadPage,
    TResult? Function(_EventPublishCourse value)? publishCourse,
    TResult? Function(_EventDeleteCourse value)? deleteCourse,
  }) {
    return deleteCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventCourseDetailsClicked value)? courseDetailsClicked,
    TResult Function(_EvenEditCourseClicked value)? editCourseClicked,
    TResult Function(_EventReloadPage value)? reloadPage,
    TResult Function(_EventPublishCourse value)? publishCourse,
    TResult Function(_EventDeleteCourse value)? deleteCourse,
    required TResult orElse(),
  }) {
    if (deleteCourse != null) {
      return deleteCourse(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteCourse implements PdfCoursesEvent {
  const factory _EventDeleteCourse({required final Course course}) =
      _$_EventDeleteCourse;

  Course get course;
  @JsonKey(ignore: true)
  _$$_EventDeleteCourseCopyWith<_$_EventDeleteCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PdfCoursesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loadingError,
    required TResult Function(List<Course> courses) screenState,
    required TResult Function(String? errorText) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Course> courses)? screenState,
    TResult? Function(String? errorText)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Course> courses)? screenState,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCoursesStateCopyWith<$Res> {
  factory $PdfCoursesStateCopyWith(
          PdfCoursesState value, $Res Function(PdfCoursesState) then) =
      _$PdfCoursesStateCopyWithImpl<$Res, PdfCoursesState>;
}

/// @nodoc
class _$PdfCoursesStateCopyWithImpl<$Res, $Val extends PdfCoursesState>
    implements $PdfCoursesStateCopyWith<$Res> {
  _$PdfCoursesStateCopyWithImpl(this._value, this._then);

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
    extends _$PdfCoursesStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'PdfCoursesState.pending()';
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
    required TResult Function() loadingError,
    required TResult Function(List<Course> courses) screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Course> courses)? screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Course> courses)? screenState,
    TResult Function(String? errorText)? requestError,
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
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements PdfCoursesState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_StateLoadingErrorCopyWith<$Res> {
  factory _$$_StateLoadingErrorCopyWith(_$_StateLoadingError value,
          $Res Function(_$_StateLoadingError) then) =
      __$$_StateLoadingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateLoadingErrorCopyWithImpl<$Res>
    extends _$PdfCoursesStateCopyWithImpl<$Res, _$_StateLoadingError>
    implements _$$_StateLoadingErrorCopyWith<$Res> {
  __$$_StateLoadingErrorCopyWithImpl(
      _$_StateLoadingError _value, $Res Function(_$_StateLoadingError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateLoadingError implements _StateLoadingError {
  const _$_StateLoadingError();

  @override
  String toString() {
    return 'PdfCoursesState.loadingError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateLoadingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loadingError,
    required TResult Function(List<Course> courses) screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return loadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Course> courses)? screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return loadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Course> courses)? screenState,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingError implements PdfCoursesState {
  const factory _StateLoadingError() = _$_StateLoadingError;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Course> courses});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PdfCoursesStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_$_ScreenState(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState({required final List<Course> courses})
      : _courses = courses;

  final List<Course> _courses;
  @override
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'PdfCoursesState.screenState(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loadingError,
    required TResult Function(List<Course> courses) screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return screenState(courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Course> courses)? screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return screenState?.call(courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Course> courses)? screenState,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements PdfCoursesState {
  const factory _ScreenState({required final List<Course> courses}) =
      _$_ScreenState;

  List<Course> get courses;
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
    extends _$PdfCoursesStateCopyWithImpl<$Res, _$_StateRequestError>
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
    return 'PdfCoursesState.requestError(errorText: $errorText)';
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
    required TResult Function() loadingError,
    required TResult Function(List<Course> courses) screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Course> courses)? screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Course> courses)? screenState,
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
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements PdfCoursesState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
