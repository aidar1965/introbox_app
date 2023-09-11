// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subjects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubjectsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsEventCopyWith<$Res> {
  factory $SubjectsEventCopyWith(
          SubjectsEvent value, $Res Function(SubjectsEvent) then) =
      _$SubjectsEventCopyWithImpl<$Res, SubjectsEvent>;
}

/// @nodoc
class _$SubjectsEventCopyWithImpl<$Res, $Val extends SubjectsEvent>
    implements $SubjectsEventCopyWith<$Res> {
  _$SubjectsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataRequestedCopyWith<$Res> {
  factory _$$_DataRequestedCopyWith(
          _$_DataRequested value, $Res Function(_$_DataRequested) then) =
      __$$_DataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataRequestedCopyWithImpl<$Res>
    extends _$SubjectsEventCopyWithImpl<$Res, _$_DataRequested>
    implements _$$_DataRequestedCopyWith<$Res> {
  __$$_DataRequestedCopyWithImpl(
      _$_DataRequested _value, $Res Function(_$_DataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataRequested implements _DataRequested {
  const _$_DataRequested();

  @override
  String toString() {
    return 'SubjectsEvent.dataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) {
    return dataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) {
    return dataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
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
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return dataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return dataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested(this);
    }
    return orElse();
  }
}

abstract class _DataRequested implements SubjectsEvent {
  const factory _DataRequested() = _$_DataRequested;
}

/// @nodoc
abstract class _$$_ResendRequestedCopyWith<$Res> {
  factory _$$_ResendRequestedCopyWith(
          _$_ResendRequested value, $Res Function(_$_ResendRequested) then) =
      __$$_ResendRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResendRequestedCopyWithImpl<$Res>
    extends _$SubjectsEventCopyWithImpl<$Res, _$_ResendRequested>
    implements _$$_ResendRequestedCopyWith<$Res> {
  __$$_ResendRequestedCopyWithImpl(
      _$_ResendRequested _value, $Res Function(_$_ResendRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResendRequested implements _ResendRequested {
  const _$_ResendRequested();

  @override
  String toString() {
    return 'SubjectsEvent.resendData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResendRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) {
    return resendData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) {
    return resendData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
    required TResult orElse(),
  }) {
    if (resendData != null) {
      return resendData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return resendData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return resendData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (resendData != null) {
      return resendData(this);
    }
    return orElse();
  }
}

abstract class _ResendRequested implements SubjectsEvent {
  const factory _ResendRequested() = _$_ResendRequested;
}

/// @nodoc
abstract class _$$_NewSubjectCopyWith<$Res> {
  factory _$$_NewSubjectCopyWith(
          _$_NewSubject value, $Res Function(_$_NewSubject) then) =
      __$$_NewSubjectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewSubjectCopyWithImpl<$Res>
    extends _$SubjectsEventCopyWithImpl<$Res, _$_NewSubject>
    implements _$$_NewSubjectCopyWith<$Res> {
  __$$_NewSubjectCopyWithImpl(
      _$_NewSubject _value, $Res Function(_$_NewSubject) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewSubject implements _NewSubject {
  const _$_NewSubject();

  @override
  String toString() {
    return 'SubjectsEvent.newSubject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewSubject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) {
    return newSubject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) {
    return newSubject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
    required TResult orElse(),
  }) {
    if (newSubject != null) {
      return newSubject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return newSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return newSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (newSubject != null) {
      return newSubject(this);
    }
    return orElse();
  }
}

abstract class _NewSubject implements SubjectsEvent {
  const factory _NewSubject() = _$_NewSubject;
}

/// @nodoc
abstract class _$$_SelectCategoryCopyWith<$Res> {
  factory _$$_SelectCategoryCopyWith(
          _$_SelectCategory value, $Res Function(_$_SelectCategory) then) =
      __$$_SelectCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({SubjectCategory category});
}

/// @nodoc
class __$$_SelectCategoryCopyWithImpl<$Res>
    extends _$SubjectsEventCopyWithImpl<$Res, _$_SelectCategory>
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
              as SubjectCategory,
    ));
  }
}

/// @nodoc

class _$_SelectCategory implements _SelectCategory {
  const _$_SelectCategory(this.category);

  @override
  final SubjectCategory category;

  @override
  String toString() {
    return 'SubjectsEvent.selectCategory(category: $category)';
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
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
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
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements SubjectsEvent {
  const factory _SelectCategory(final SubjectCategory category) =
      _$_SelectCategory;

  SubjectCategory get category;
  @JsonKey(ignore: true)
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectSubjectCopyWith<$Res> {
  factory _$$_SelectSubjectCopyWith(
          _$_SelectSubject value, $Res Function(_$_SelectSubject) then) =
      __$$_SelectSubjectCopyWithImpl<$Res>;
  @useResult
  $Res call({Subject subject});
}

/// @nodoc
class __$$_SelectSubjectCopyWithImpl<$Res>
    extends _$SubjectsEventCopyWithImpl<$Res, _$_SelectSubject>
    implements _$$_SelectSubjectCopyWith<$Res> {
  __$$_SelectSubjectCopyWithImpl(
      _$_SelectSubject _value, $Res Function(_$_SelectSubject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
  }) {
    return _then(_$_SelectSubject(
      null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
    ));
  }
}

/// @nodoc

class _$_SelectSubject implements _SelectSubject {
  const _$_SelectSubject(this.subject);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'SubjectsEvent.selectSubject(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectSubject &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectSubjectCopyWith<_$_SelectSubject> get copyWith =>
      __$$_SelectSubjectCopyWithImpl<_$_SelectSubject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) {
    return selectSubject(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) {
    return selectSubject?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
    required TResult orElse(),
  }) {
    if (selectSubject != null) {
      return selectSubject(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return selectSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return selectSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (selectSubject != null) {
      return selectSubject(this);
    }
    return orElse();
  }
}

abstract class _SelectSubject implements SubjectsEvent {
  const factory _SelectSubject(final Subject subject) = _$_SelectSubject;

  Subject get subject;
  @JsonKey(ignore: true)
  _$$_SelectSubjectCopyWith<_$_SelectSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCategoryCopyWith<$Res> {
  factory _$$_EditCategoryCopyWith(
          _$_EditCategory value, $Res Function(_$_EditCategory) then) =
      __$$_EditCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({SubjectCategory category});
}

/// @nodoc
class __$$_EditCategoryCopyWithImpl<$Res>
    extends _$SubjectsEventCopyWithImpl<$Res, _$_EditCategory>
    implements _$$_EditCategoryCopyWith<$Res> {
  __$$_EditCategoryCopyWithImpl(
      _$_EditCategory _value, $Res Function(_$_EditCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_EditCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SubjectCategory,
    ));
  }
}

/// @nodoc

class _$_EditCategory implements _EditCategory {
  const _$_EditCategory(this.category);

  @override
  final SubjectCategory category;

  @override
  String toString() {
    return 'SubjectsEvent.editCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCategoryCopyWith<_$_EditCategory> get copyWith =>
      __$$_EditCategoryCopyWithImpl<_$_EditCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) {
    return editCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) {
    return editCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return editCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return editCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(this);
    }
    return orElse();
  }
}

abstract class _EditCategory implements SubjectsEvent {
  const factory _EditCategory(final SubjectCategory category) = _$_EditCategory;

  SubjectCategory get category;
  @JsonKey(ignore: true)
  _$$_EditCategoryCopyWith<_$_EditCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCategoryCopyWith<$Res> {
  factory _$$_DeleteCategoryCopyWith(
          _$_DeleteCategory value, $Res Function(_$_DeleteCategory) then) =
      __$$_DeleteCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({SubjectCategory category});
}

/// @nodoc
class __$$_DeleteCategoryCopyWithImpl<$Res>
    extends _$SubjectsEventCopyWithImpl<$Res, _$_DeleteCategory>
    implements _$$_DeleteCategoryCopyWith<$Res> {
  __$$_DeleteCategoryCopyWithImpl(
      _$_DeleteCategory _value, $Res Function(_$_DeleteCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_DeleteCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as SubjectCategory,
    ));
  }
}

/// @nodoc

class _$_DeleteCategory implements _DeleteCategory {
  const _$_DeleteCategory(this.category);

  @override
  final SubjectCategory category;

  @override
  String toString() {
    return 'SubjectsEvent.deleteCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      __$$_DeleteCategoryCopyWithImpl<_$_DeleteCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() resendData,
    required TResult Function() newSubject,
    required TResult Function(SubjectCategory category) selectCategory,
    required TResult Function(Subject subject) selectSubject,
    required TResult Function(SubjectCategory category) editCategory,
    required TResult Function(SubjectCategory category) deleteCategory,
  }) {
    return deleteCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? resendData,
    TResult? Function()? newSubject,
    TResult? Function(SubjectCategory category)? selectCategory,
    TResult? Function(Subject subject)? selectSubject,
    TResult? Function(SubjectCategory category)? editCategory,
    TResult? Function(SubjectCategory category)? deleteCategory,
  }) {
    return deleteCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? resendData,
    TResult Function()? newSubject,
    TResult Function(SubjectCategory category)? selectCategory,
    TResult Function(Subject subject)? selectSubject,
    TResult Function(SubjectCategory category)? editCategory,
    TResult Function(SubjectCategory category)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_ResendRequested value) resendData,
    required TResult Function(_NewSubject value) newSubject,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_SelectSubject value) selectSubject,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_ResendRequested value)? resendData,
    TResult? Function(_NewSubject value)? newSubject,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_SelectSubject value)? selectSubject,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_ResendRequested value)? resendData,
    TResult Function(_NewSubject value)? newSubject,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_SelectSubject value)? selectSubject,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements SubjectsEvent {
  const factory _DeleteCategory(final SubjectCategory category) =
      _$_DeleteCategory;

  SubjectCategory get category;
  @JsonKey(ignore: true)
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubjectsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Subject> subjects,
            List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories,
            Subject? selectedSubject)
        dataReceived,
    required TResult Function() addSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult? Function()? addSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult Function()? addSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_AddSubject value) addSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddSubject value)? addSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddSubject value)? addSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsStateCopyWith<$Res> {
  factory $SubjectsStateCopyWith(
          SubjectsState value, $Res Function(SubjectsState) then) =
      _$SubjectsStateCopyWithImpl<$Res, SubjectsState>;
}

/// @nodoc
class _$SubjectsStateCopyWithImpl<$Res, $Val extends SubjectsState>
    implements $SubjectsStateCopyWith<$Res> {
  _$SubjectsStateCopyWithImpl(this._value, this._then);

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
    extends _$SubjectsStateCopyWithImpl<$Res, _$_Pending>
    implements _$$_PendingCopyWith<$Res> {
  __$$_PendingCopyWithImpl(_$_Pending _value, $Res Function(_$_Pending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Pending implements _Pending {
  const _$_Pending();

  @override
  String toString() {
    return 'SubjectsState.pending()';
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
            List<Subject> subjects,
            List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories,
            Subject? selectedSubject)
        dataReceived,
    required TResult Function() addSubject,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult? Function()? addSubject,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult Function()? addSubject,
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
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_AddSubject value) addSubject,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddSubject value)? addSubject,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddSubject value)? addSubject,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements SubjectsState {
  const factory _Pending() = _$_Pending;
}

/// @nodoc
abstract class _$$_DataReceivedCopyWith<$Res> {
  factory _$$_DataReceivedCopyWith(
          _$_DataReceived value, $Res Function(_$_DataReceived) then) =
      __$$_DataReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Subject> subjects,
      List<SubjectCategory> categories,
      List<SubjectCategory> selectedCategories,
      Subject? selectedSubject});
}

/// @nodoc
class __$$_DataReceivedCopyWithImpl<$Res>
    extends _$SubjectsStateCopyWithImpl<$Res, _$_DataReceived>
    implements _$$_DataReceivedCopyWith<$Res> {
  __$$_DataReceivedCopyWithImpl(
      _$_DataReceived _value, $Res Function(_$_DataReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = null,
    Object? categories = null,
    Object? selectedCategories = null,
    Object? selectedSubject = freezed,
  }) {
    return _then(_$_DataReceived(
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SubjectCategory>,
      selectedCategories: null == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<SubjectCategory>,
      selectedSubject: freezed == selectedSubject
          ? _value.selectedSubject
          : selectedSubject // ignore: cast_nullable_to_non_nullable
              as Subject?,
    ));
  }
}

/// @nodoc

class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(
      {required final List<Subject> subjects,
      required final List<SubjectCategory> categories,
      required final List<SubjectCategory> selectedCategories,
      this.selectedSubject})
      : _subjects = subjects,
        _categories = categories,
        _selectedCategories = selectedCategories;

  final List<Subject> _subjects;
  @override
  List<Subject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<SubjectCategory> _categories;
  @override
  List<SubjectCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<SubjectCategory> _selectedCategories;
  @override
  List<SubjectCategory> get selectedCategories {
    if (_selectedCategories is EqualUnmodifiableListView)
      return _selectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategories);
  }

  @override
  final Subject? selectedSubject;

  @override
  String toString() {
    return 'SubjectsState.dataReceived(subjects: $subjects, categories: $categories, selectedCategories: $selectedCategories, selectedSubject: $selectedSubject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataReceived &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories) &&
            (identical(other.selectedSubject, selectedSubject) ||
                other.selectedSubject == selectedSubject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_selectedCategories),
      selectedSubject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataReceivedCopyWith<_$_DataReceived> get copyWith =>
      __$$_DataReceivedCopyWithImpl<_$_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Subject> subjects,
            List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories,
            Subject? selectedSubject)
        dataReceived,
    required TResult Function() addSubject,
  }) {
    return dataReceived(
        subjects, categories, selectedCategories, selectedSubject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult? Function()? addSubject,
  }) {
    return dataReceived?.call(
        subjects, categories, selectedCategories, selectedSubject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult Function()? addSubject,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(
          subjects, categories, selectedCategories, selectedSubject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_AddSubject value) addSubject,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddSubject value)? addSubject,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddSubject value)? addSubject,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _DataReceived implements SubjectsState {
  const factory _DataReceived(
      {required final List<Subject> subjects,
      required final List<SubjectCategory> categories,
      required final List<SubjectCategory> selectedCategories,
      final Subject? selectedSubject}) = _$_DataReceived;

  List<Subject> get subjects;
  List<SubjectCategory> get categories;
  List<SubjectCategory> get selectedCategories;
  Subject? get selectedSubject;
  @JsonKey(ignore: true)
  _$$_DataReceivedCopyWith<_$_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddSubjectCopyWith<$Res> {
  factory _$$_AddSubjectCopyWith(
          _$_AddSubject value, $Res Function(_$_AddSubject) then) =
      __$$_AddSubjectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddSubjectCopyWithImpl<$Res>
    extends _$SubjectsStateCopyWithImpl<$Res, _$_AddSubject>
    implements _$$_AddSubjectCopyWith<$Res> {
  __$$_AddSubjectCopyWithImpl(
      _$_AddSubject _value, $Res Function(_$_AddSubject) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddSubject implements _AddSubject {
  const _$_AddSubject();

  @override
  String toString() {
    return 'SubjectsState.addSubject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddSubject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Subject> subjects,
            List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories,
            Subject? selectedSubject)
        dataReceived,
    required TResult Function() addSubject,
  }) {
    return addSubject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult? Function()? addSubject,
  }) {
    return addSubject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Subject> subjects, List<SubjectCategory> categories,
            List<SubjectCategory> selectedCategories, Subject? selectedSubject)?
        dataReceived,
    TResult Function()? addSubject,
    required TResult orElse(),
  }) {
    if (addSubject != null) {
      return addSubject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_AddSubject value) addSubject,
  }) {
    return addSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddSubject value)? addSubject,
  }) {
    return addSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddSubject value)? addSubject,
    required TResult orElse(),
  }) {
    if (addSubject != null) {
      return addSubject(this);
    }
    return orElse();
  }
}

abstract class _AddSubject implements SubjectsState {
  const factory _AddSubject() = _$_AddSubject;
}
