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
mixin _$CoursesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() newCourse,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) selectCourse,
    required TResult Function(CourseCategory category) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? newCourse,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? selectCourse,
    TResult? Function(CourseCategory category)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? newCourse,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? selectCourse,
    TResult Function(CourseCategory category)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDataRequested value) initialDataRequested,
    required TResult Function(_NewCourse value) newCourse,
    required TResult Function(_PublishCourse value) publishCourse,
    required TResult Function(_SelectCourse value) selectCourse,
    required TResult Function(_SelectCategory value) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDataRequested value)? initialDataRequested,
    TResult? Function(_NewCourse value)? newCourse,
    TResult? Function(_PublishCourse value)? publishCourse,
    TResult? Function(_SelectCourse value)? selectCourse,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDataRequested value)? initialDataRequested,
    TResult Function(_NewCourse value)? newCourse,
    TResult Function(_PublishCourse value)? publishCourse,
    TResult Function(_SelectCourse value)? selectCourse,
    TResult Function(_SelectCategory value)? selectCategory,
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
abstract class _$$_InitialDataRequestedCopyWith<$Res> {
  factory _$$_InitialDataRequestedCopyWith(_$_InitialDataRequested value,
          $Res Function(_$_InitialDataRequested) then) =
      __$$_InitialDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialDataRequestedCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$_InitialDataRequested>
    implements _$$_InitialDataRequestedCopyWith<$Res> {
  __$$_InitialDataRequestedCopyWithImpl(_$_InitialDataRequested _value,
      $Res Function(_$_InitialDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialDataRequested implements _InitialDataRequested {
  const _$_InitialDataRequested();

  @override
  String toString() {
    return 'CoursesEvent.initialDataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialDataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() newCourse,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) selectCourse,
    required TResult Function(CourseCategory category) selectCategory,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? newCourse,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? selectCourse,
    TResult? Function(CourseCategory category)? selectCategory,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? newCourse,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? selectCourse,
    TResult Function(CourseCategory category)? selectCategory,
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
    required TResult Function(_InitialDataRequested value) initialDataRequested,
    required TResult Function(_NewCourse value) newCourse,
    required TResult Function(_PublishCourse value) publishCourse,
    required TResult Function(_SelectCourse value) selectCourse,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDataRequested value)? initialDataRequested,
    TResult? Function(_NewCourse value)? newCourse,
    TResult? Function(_PublishCourse value)? publishCourse,
    TResult? Function(_SelectCourse value)? selectCourse,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDataRequested value)? initialDataRequested,
    TResult Function(_NewCourse value)? newCourse,
    TResult Function(_PublishCourse value)? publishCourse,
    TResult Function(_SelectCourse value)? selectCourse,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _InitialDataRequested implements CoursesEvent {
  const factory _InitialDataRequested() = _$_InitialDataRequested;
}

/// @nodoc
abstract class _$$_NewCourseCopyWith<$Res> {
  factory _$$_NewCourseCopyWith(
          _$_NewCourse value, $Res Function(_$_NewCourse) then) =
      __$$_NewCourseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewCourseCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$_NewCourse>
    implements _$$_NewCourseCopyWith<$Res> {
  __$$_NewCourseCopyWithImpl(
      _$_NewCourse _value, $Res Function(_$_NewCourse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewCourse implements _NewCourse {
  const _$_NewCourse();

  @override
  String toString() {
    return 'CoursesEvent.newCourse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewCourse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() newCourse,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) selectCourse,
    required TResult Function(CourseCategory category) selectCategory,
  }) {
    return newCourse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? newCourse,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? selectCourse,
    TResult? Function(CourseCategory category)? selectCategory,
  }) {
    return newCourse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? newCourse,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? selectCourse,
    TResult Function(CourseCategory category)? selectCategory,
    required TResult orElse(),
  }) {
    if (newCourse != null) {
      return newCourse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDataRequested value) initialDataRequested,
    required TResult Function(_NewCourse value) newCourse,
    required TResult Function(_PublishCourse value) publishCourse,
    required TResult Function(_SelectCourse value) selectCourse,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return newCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDataRequested value)? initialDataRequested,
    TResult? Function(_NewCourse value)? newCourse,
    TResult? Function(_PublishCourse value)? publishCourse,
    TResult? Function(_SelectCourse value)? selectCourse,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return newCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDataRequested value)? initialDataRequested,
    TResult Function(_NewCourse value)? newCourse,
    TResult Function(_PublishCourse value)? publishCourse,
    TResult Function(_SelectCourse value)? selectCourse,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (newCourse != null) {
      return newCourse(this);
    }
    return orElse();
  }
}

abstract class _NewCourse implements CoursesEvent {
  const factory _NewCourse() = _$_NewCourse;
}

/// @nodoc
abstract class _$$_PublishCourseCopyWith<$Res> {
  factory _$$_PublishCourseCopyWith(
          _$_PublishCourse value, $Res Function(_$_PublishCourse) then) =
      __$$_PublishCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({Course course});
}

/// @nodoc
class __$$_PublishCourseCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$_PublishCourse>
    implements _$$_PublishCourseCopyWith<$Res> {
  __$$_PublishCourseCopyWithImpl(
      _$_PublishCourse _value, $Res Function(_$_PublishCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$_PublishCourse(
      null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc

class _$_PublishCourse implements _PublishCourse {
  const _$_PublishCourse(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CoursesEvent.publishCourse(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublishCourse &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublishCourseCopyWith<_$_PublishCourse> get copyWith =>
      __$$_PublishCourseCopyWithImpl<_$_PublishCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() newCourse,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) selectCourse,
    required TResult Function(CourseCategory category) selectCategory,
  }) {
    return publishCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? newCourse,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? selectCourse,
    TResult? Function(CourseCategory category)? selectCategory,
  }) {
    return publishCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? newCourse,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? selectCourse,
    TResult Function(CourseCategory category)? selectCategory,
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
    required TResult Function(_InitialDataRequested value) initialDataRequested,
    required TResult Function(_NewCourse value) newCourse,
    required TResult Function(_PublishCourse value) publishCourse,
    required TResult Function(_SelectCourse value) selectCourse,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return publishCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDataRequested value)? initialDataRequested,
    TResult? Function(_NewCourse value)? newCourse,
    TResult? Function(_PublishCourse value)? publishCourse,
    TResult? Function(_SelectCourse value)? selectCourse,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return publishCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDataRequested value)? initialDataRequested,
    TResult Function(_NewCourse value)? newCourse,
    TResult Function(_PublishCourse value)? publishCourse,
    TResult Function(_SelectCourse value)? selectCourse,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (publishCourse != null) {
      return publishCourse(this);
    }
    return orElse();
  }
}

abstract class _PublishCourse implements CoursesEvent {
  const factory _PublishCourse(final Course course) = _$_PublishCourse;

  Course get course;
  @JsonKey(ignore: true)
  _$$_PublishCourseCopyWith<_$_PublishCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCourseCopyWith<$Res> {
  factory _$$_SelectCourseCopyWith(
          _$_SelectCourse value, $Res Function(_$_SelectCourse) then) =
      __$$_SelectCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({Course course});
}

/// @nodoc
class __$$_SelectCourseCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$_SelectCourse>
    implements _$$_SelectCourseCopyWith<$Res> {
  __$$_SelectCourseCopyWithImpl(
      _$_SelectCourse _value, $Res Function(_$_SelectCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$_SelectCourse(
      null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }
}

/// @nodoc

class _$_SelectCourse implements _SelectCourse {
  const _$_SelectCourse(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CoursesEvent.selectCourse(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCourse &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCourseCopyWith<_$_SelectCourse> get copyWith =>
      __$$_SelectCourseCopyWithImpl<_$_SelectCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() newCourse,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) selectCourse,
    required TResult Function(CourseCategory category) selectCategory,
  }) {
    return selectCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? newCourse,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? selectCourse,
    TResult? Function(CourseCategory category)? selectCategory,
  }) {
    return selectCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? newCourse,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? selectCourse,
    TResult Function(CourseCategory category)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCourse != null) {
      return selectCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDataRequested value) initialDataRequested,
    required TResult Function(_NewCourse value) newCourse,
    required TResult Function(_PublishCourse value) publishCourse,
    required TResult Function(_SelectCourse value) selectCourse,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return selectCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDataRequested value)? initialDataRequested,
    TResult? Function(_NewCourse value)? newCourse,
    TResult? Function(_PublishCourse value)? publishCourse,
    TResult? Function(_SelectCourse value)? selectCourse,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return selectCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDataRequested value)? initialDataRequested,
    TResult Function(_NewCourse value)? newCourse,
    TResult Function(_PublishCourse value)? publishCourse,
    TResult Function(_SelectCourse value)? selectCourse,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCourse != null) {
      return selectCourse(this);
    }
    return orElse();
  }
}

abstract class _SelectCourse implements CoursesEvent {
  const factory _SelectCourse(final Course course) = _$_SelectCourse;

  Course get course;
  @JsonKey(ignore: true)
  _$$_SelectCourseCopyWith<_$_SelectCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCategoryCopyWith<$Res> {
  factory _$$_SelectCategoryCopyWith(
          _$_SelectCategory value, $Res Function(_$_SelectCategory) then) =
      __$$_SelectCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseCategory category});
}

/// @nodoc
class __$$_SelectCategoryCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$_SelectCategory>
    implements _$$_SelectCategoryCopyWith<$Res> {
  __$$_SelectCategoryCopyWithImpl(
      _$_SelectCategory _value, $Res Function(_$_SelectCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_SelectCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CourseCategory,
    ));
  }
}

/// @nodoc

class _$_SelectCategory implements _SelectCategory {
  const _$_SelectCategory(this.category);

  @override
  final CourseCategory category;

  @override
  String toString() {
    return 'CoursesEvent.selectCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      __$$_SelectCategoryCopyWithImpl<_$_SelectCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() newCourse,
    required TResult Function(Course course) publishCourse,
    required TResult Function(Course course) selectCourse,
    required TResult Function(CourseCategory category) selectCategory,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? newCourse,
    TResult? Function(Course course)? publishCourse,
    TResult? Function(Course course)? selectCourse,
    TResult? Function(CourseCategory category)? selectCategory,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? newCourse,
    TResult Function(Course course)? publishCourse,
    TResult Function(Course course)? selectCourse,
    TResult Function(CourseCategory category)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDataRequested value) initialDataRequested,
    required TResult Function(_NewCourse value) newCourse,
    required TResult Function(_PublishCourse value) publishCourse,
    required TResult Function(_SelectCourse value) selectCourse,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDataRequested value)? initialDataRequested,
    TResult? Function(_NewCourse value)? newCourse,
    TResult? Function(_PublishCourse value)? publishCourse,
    TResult? Function(_SelectCourse value)? selectCourse,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDataRequested value)? initialDataRequested,
    TResult Function(_NewCourse value)? newCourse,
    TResult Function(_PublishCourse value)? publishCourse,
    TResult Function(_SelectCourse value)? selectCourse,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements CoursesEvent {
  const factory _SelectCategory(final CourseCategory category) =
      _$_SelectCategory;

  CourseCategory get category;
  @JsonKey(ignore: true)
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoursesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)
        initialDataReceived,
    required TResult Function() newCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult? Function()? newCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult Function()? newCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_InitialDataReceived value) initialDataReceived,
    required TResult Function(_NewCoursePage value) newCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_InitialDataReceived value)? initialDataReceived,
    TResult? Function(_NewCoursePage value)? newCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_InitialDataReceived value)? initialDataReceived,
    TResult Function(_NewCoursePage value)? newCourse,
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
abstract class _$$_PendingCopyWith<$Res> {
  factory _$$_PendingCopyWith(
          _$_Pending value, $Res Function(_$_Pending) then) =
      __$$_PendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PendingCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_Pending>
    implements _$$_PendingCopyWith<$Res> {
  __$$_PendingCopyWithImpl(_$_Pending _value, $Res Function(_$_Pending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Pending implements _Pending {
  const _$_Pending();

  @override
  String toString() {
    return 'CoursesState.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)
        initialDataReceived,
    required TResult Function() newCourse,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult? Function()? newCourse,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult Function()? newCourse,
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
    required TResult Function(_Pending value) pending,
    required TResult Function(_InitialDataReceived value) initialDataReceived,
    required TResult Function(_NewCoursePage value) newCourse,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_InitialDataReceived value)? initialDataReceived,
    TResult? Function(_NewCoursePage value)? newCourse,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_InitialDataReceived value)? initialDataReceived,
    TResult Function(_NewCoursePage value)? newCourse,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements CoursesState {
  const factory _Pending() = _$_Pending;
}

/// @nodoc
abstract class _$$_InitialDataReceivedCopyWith<$Res> {
  factory _$$_InitialDataReceivedCopyWith(_$_InitialDataReceived value,
          $Res Function(_$_InitialDataReceived) then) =
      __$$_InitialDataReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Course> courses,
      List<CourseCategory> categories,
      List<CourseCategory> selectedCategories,
      Course? selectedCourse,
      bool isAuthorized,
      List<Course> publishedCourses});
}

/// @nodoc
class __$$_InitialDataReceivedCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_InitialDataReceived>
    implements _$$_InitialDataReceivedCopyWith<$Res> {
  __$$_InitialDataReceivedCopyWithImpl(_$_InitialDataReceived _value,
      $Res Function(_$_InitialDataReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? categories = null,
    Object? selectedCategories = null,
    Object? selectedCourse = freezed,
    Object? isAuthorized = null,
    Object? publishedCourses = null,
  }) {
    return _then(_$_InitialDataReceived(
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CourseCategory>,
      selectedCategories: null == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<CourseCategory>,
      selectedCourse: freezed == selectedCourse
          ? _value.selectedCourse
          : selectedCourse // ignore: cast_nullable_to_non_nullable
              as Course?,
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedCourses: null == publishedCourses
          ? _value._publishedCourses
          : publishedCourses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$_InitialDataReceived implements _InitialDataReceived {
  const _$_InitialDataReceived(
      {required final List<Course> courses,
      required final List<CourseCategory> categories,
      required final List<CourseCategory> selectedCategories,
      this.selectedCourse,
      required this.isAuthorized,
      required final List<Course> publishedCourses})
      : _courses = courses,
        _categories = categories,
        _selectedCategories = selectedCategories,
        _publishedCourses = publishedCourses;

  final List<Course> _courses;
  @override
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  final List<CourseCategory> _categories;
  @override
  List<CourseCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<CourseCategory> _selectedCategories;
  @override
  List<CourseCategory> get selectedCategories {
    if (_selectedCategories is EqualUnmodifiableListView)
      return _selectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategories);
  }

  @override
  final Course? selectedCourse;
  @override
  final bool isAuthorized;
  final List<Course> _publishedCourses;
  @override
  List<Course> get publishedCourses {
    if (_publishedCourses is EqualUnmodifiableListView)
      return _publishedCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publishedCourses);
  }

  @override
  String toString() {
    return 'CoursesState.initialDataReceived(courses: $courses, categories: $categories, selectedCategories: $selectedCategories, selectedCourse: $selectedCourse, isAuthorized: $isAuthorized, publishedCourses: $publishedCourses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialDataReceived &&
            const DeepCollectionEquality().equals(other._courses, _courses) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories) &&
            (identical(other.selectedCourse, selectedCourse) ||
                other.selectedCourse == selectedCourse) &&
            (identical(other.isAuthorized, isAuthorized) ||
                other.isAuthorized == isAuthorized) &&
            const DeepCollectionEquality()
                .equals(other._publishedCourses, _publishedCourses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_courses),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_selectedCategories),
      selectedCourse,
      isAuthorized,
      const DeepCollectionEquality().hash(_publishedCourses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialDataReceivedCopyWith<_$_InitialDataReceived> get copyWith =>
      __$$_InitialDataReceivedCopyWithImpl<_$_InitialDataReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)
        initialDataReceived,
    required TResult Function() newCourse,
  }) {
    return initialDataReceived(courses, categories, selectedCategories,
        selectedCourse, isAuthorized, publishedCourses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult? Function()? newCourse,
  }) {
    return initialDataReceived?.call(courses, categories, selectedCategories,
        selectedCourse, isAuthorized, publishedCourses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult Function()? newCourse,
    required TResult orElse(),
  }) {
    if (initialDataReceived != null) {
      return initialDataReceived(courses, categories, selectedCategories,
          selectedCourse, isAuthorized, publishedCourses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_InitialDataReceived value) initialDataReceived,
    required TResult Function(_NewCoursePage value) newCourse,
  }) {
    return initialDataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_InitialDataReceived value)? initialDataReceived,
    TResult? Function(_NewCoursePage value)? newCourse,
  }) {
    return initialDataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_InitialDataReceived value)? initialDataReceived,
    TResult Function(_NewCoursePage value)? newCourse,
    required TResult orElse(),
  }) {
    if (initialDataReceived != null) {
      return initialDataReceived(this);
    }
    return orElse();
  }
}

abstract class _InitialDataReceived implements CoursesState {
  const factory _InitialDataReceived(
      {required final List<Course> courses,
      required final List<CourseCategory> categories,
      required final List<CourseCategory> selectedCategories,
      final Course? selectedCourse,
      required final bool isAuthorized,
      required final List<Course> publishedCourses}) = _$_InitialDataReceived;

  List<Course> get courses;
  List<CourseCategory> get categories;
  List<CourseCategory> get selectedCategories;
  Course? get selectedCourse;
  bool get isAuthorized;
  List<Course> get publishedCourses;
  @JsonKey(ignore: true)
  _$$_InitialDataReceivedCopyWith<_$_InitialDataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewCoursePageCopyWith<$Res> {
  factory _$$_NewCoursePageCopyWith(
          _$_NewCoursePage value, $Res Function(_$_NewCoursePage) then) =
      __$$_NewCoursePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewCoursePageCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$_NewCoursePage>
    implements _$$_NewCoursePageCopyWith<$Res> {
  __$$_NewCoursePageCopyWithImpl(
      _$_NewCoursePage _value, $Res Function(_$_NewCoursePage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewCoursePage implements _NewCoursePage {
  const _$_NewCoursePage();

  @override
  String toString() {
    return 'CoursesState.newCourse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewCoursePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)
        initialDataReceived,
    required TResult Function() newCourse,
  }) {
    return newCourse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult? Function()? newCourse,
  }) {
    return newCourse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Course> courses,
            List<CourseCategory> categories,
            List<CourseCategory> selectedCategories,
            Course? selectedCourse,
            bool isAuthorized,
            List<Course> publishedCourses)?
        initialDataReceived,
    TResult Function()? newCourse,
    required TResult orElse(),
  }) {
    if (newCourse != null) {
      return newCourse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_InitialDataReceived value) initialDataReceived,
    required TResult Function(_NewCoursePage value) newCourse,
  }) {
    return newCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_InitialDataReceived value)? initialDataReceived,
    TResult? Function(_NewCoursePage value)? newCourse,
  }) {
    return newCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_InitialDataReceived value)? initialDataReceived,
    TResult Function(_NewCoursePage value)? newCourse,
    required TResult orElse(),
  }) {
    if (newCourse != null) {
      return newCourse(this);
    }
    return orElse();
  }
}

abstract class _NewCoursePage implements CoursesState {
  const factory _NewCoursePage() = _$_NewCoursePage;
}
