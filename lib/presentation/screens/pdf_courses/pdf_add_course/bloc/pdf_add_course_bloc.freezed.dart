// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_add_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfAddCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(Subject subject) subjectSelected,
    required TResult Function(Subject subject) subjectUnSelected,
    required TResult Function(List<Subject> selectedSubjects) onReorderSubjects,
    required TResult Function(String title, String description)
        onSaveCourseClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(Subject subject)? subjectSelected,
    TResult? Function(Subject subject)? subjectUnSelected,
    TResult? Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult? Function(String title, String description)? onSaveCourseClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(Subject subject)? subjectSelected,
    TResult Function(Subject subject)? subjectUnSelected,
    TResult Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult Function(String title, String description)? onSaveCourseClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSubjectSelected value) subjectSelected,
    required TResult Function(_EventSubjectUnSelected value) subjectUnSelected,
    required TResult Function(_EventReorderSubject value) onReorderSubjects,
    required TResult Function(_EventOnSaveCourseClicked value)
        onSaveCourseClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSubjectSelected value)? subjectSelected,
    TResult? Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult? Function(_EventReorderSubject value)? onReorderSubjects,
    TResult? Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSubjectSelected value)? subjectSelected,
    TResult Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult Function(_EventReorderSubject value)? onReorderSubjects,
    TResult Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfAddCourseEventCopyWith<$Res> {
  factory $PdfAddCourseEventCopyWith(
          PdfAddCourseEvent value, $Res Function(PdfAddCourseEvent) then) =
      _$PdfAddCourseEventCopyWithImpl<$Res, PdfAddCourseEvent>;
}

/// @nodoc
class _$PdfAddCourseEventCopyWithImpl<$Res, $Val extends PdfAddCourseEvent>
    implements $PdfAddCourseEventCopyWith<$Res> {
  _$PdfAddCourseEventCopyWithImpl(this._value, this._then);

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
    extends _$PdfAddCourseEventCopyWithImpl<$Res, _$_EventDataRequested>
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
    return 'PdfAddCourseEvent.dataRequested()';
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
    required TResult Function(Subject subject) subjectSelected,
    required TResult Function(Subject subject) subjectUnSelected,
    required TResult Function(List<Subject> selectedSubjects) onReorderSubjects,
    required TResult Function(String title, String description)
        onSaveCourseClicked,
  }) {
    return dataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(Subject subject)? subjectSelected,
    TResult? Function(Subject subject)? subjectUnSelected,
    TResult? Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult? Function(String title, String description)? onSaveCourseClicked,
  }) {
    return dataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(Subject subject)? subjectSelected,
    TResult Function(Subject subject)? subjectUnSelected,
    TResult Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult Function(String title, String description)? onSaveCourseClicked,
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
    required TResult Function(_EventSubjectSelected value) subjectSelected,
    required TResult Function(_EventSubjectUnSelected value) subjectUnSelected,
    required TResult Function(_EventReorderSubject value) onReorderSubjects,
    required TResult Function(_EventOnSaveCourseClicked value)
        onSaveCourseClicked,
  }) {
    return dataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSubjectSelected value)? subjectSelected,
    TResult? Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult? Function(_EventReorderSubject value)? onReorderSubjects,
    TResult? Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
  }) {
    return dataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSubjectSelected value)? subjectSelected,
    TResult Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult Function(_EventReorderSubject value)? onReorderSubjects,
    TResult Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventDataRequested implements PdfAddCourseEvent {
  const factory _EventDataRequested() = _$_EventDataRequested;
}

/// @nodoc
abstract class _$$_EventSubjectSelectedCopyWith<$Res> {
  factory _$$_EventSubjectSelectedCopyWith(_$_EventSubjectSelected value,
          $Res Function(_$_EventSubjectSelected) then) =
      __$$_EventSubjectSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Subject subject});
}

/// @nodoc
class __$$_EventSubjectSelectedCopyWithImpl<$Res>
    extends _$PdfAddCourseEventCopyWithImpl<$Res, _$_EventSubjectSelected>
    implements _$$_EventSubjectSelectedCopyWith<$Res> {
  __$$_EventSubjectSelectedCopyWithImpl(_$_EventSubjectSelected _value,
      $Res Function(_$_EventSubjectSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
  }) {
    return _then(_$_EventSubjectSelected(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
    ));
  }
}

/// @nodoc

class _$_EventSubjectSelected implements _EventSubjectSelected {
  const _$_EventSubjectSelected({required this.subject});

  @override
  final Subject subject;

  @override
  String toString() {
    return 'PdfAddCourseEvent.subjectSelected(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSubjectSelected &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSubjectSelectedCopyWith<_$_EventSubjectSelected> get copyWith =>
      __$$_EventSubjectSelectedCopyWithImpl<_$_EventSubjectSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(Subject subject) subjectSelected,
    required TResult Function(Subject subject) subjectUnSelected,
    required TResult Function(List<Subject> selectedSubjects) onReorderSubjects,
    required TResult Function(String title, String description)
        onSaveCourseClicked,
  }) {
    return subjectSelected(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(Subject subject)? subjectSelected,
    TResult? Function(Subject subject)? subjectUnSelected,
    TResult? Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult? Function(String title, String description)? onSaveCourseClicked,
  }) {
    return subjectSelected?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(Subject subject)? subjectSelected,
    TResult Function(Subject subject)? subjectUnSelected,
    TResult Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult Function(String title, String description)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (subjectSelected != null) {
      return subjectSelected(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSubjectSelected value) subjectSelected,
    required TResult Function(_EventSubjectUnSelected value) subjectUnSelected,
    required TResult Function(_EventReorderSubject value) onReorderSubjects,
    required TResult Function(_EventOnSaveCourseClicked value)
        onSaveCourseClicked,
  }) {
    return subjectSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSubjectSelected value)? subjectSelected,
    TResult? Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult? Function(_EventReorderSubject value)? onReorderSubjects,
    TResult? Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
  }) {
    return subjectSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSubjectSelected value)? subjectSelected,
    TResult Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult Function(_EventReorderSubject value)? onReorderSubjects,
    TResult Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (subjectSelected != null) {
      return subjectSelected(this);
    }
    return orElse();
  }
}

abstract class _EventSubjectSelected implements PdfAddCourseEvent {
  const factory _EventSubjectSelected({required final Subject subject}) =
      _$_EventSubjectSelected;

  Subject get subject;
  @JsonKey(ignore: true)
  _$$_EventSubjectSelectedCopyWith<_$_EventSubjectSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSubjectUnSelectedCopyWith<$Res> {
  factory _$$_EventSubjectUnSelectedCopyWith(_$_EventSubjectUnSelected value,
          $Res Function(_$_EventSubjectUnSelected) then) =
      __$$_EventSubjectUnSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Subject subject});
}

/// @nodoc
class __$$_EventSubjectUnSelectedCopyWithImpl<$Res>
    extends _$PdfAddCourseEventCopyWithImpl<$Res, _$_EventSubjectUnSelected>
    implements _$$_EventSubjectUnSelectedCopyWith<$Res> {
  __$$_EventSubjectUnSelectedCopyWithImpl(_$_EventSubjectUnSelected _value,
      $Res Function(_$_EventSubjectUnSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
  }) {
    return _then(_$_EventSubjectUnSelected(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
    ));
  }
}

/// @nodoc

class _$_EventSubjectUnSelected implements _EventSubjectUnSelected {
  const _$_EventSubjectUnSelected({required this.subject});

  @override
  final Subject subject;

  @override
  String toString() {
    return 'PdfAddCourseEvent.subjectUnSelected(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSubjectUnSelected &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSubjectUnSelectedCopyWith<_$_EventSubjectUnSelected> get copyWith =>
      __$$_EventSubjectUnSelectedCopyWithImpl<_$_EventSubjectUnSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(Subject subject) subjectSelected,
    required TResult Function(Subject subject) subjectUnSelected,
    required TResult Function(List<Subject> selectedSubjects) onReorderSubjects,
    required TResult Function(String title, String description)
        onSaveCourseClicked,
  }) {
    return subjectUnSelected(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(Subject subject)? subjectSelected,
    TResult? Function(Subject subject)? subjectUnSelected,
    TResult? Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult? Function(String title, String description)? onSaveCourseClicked,
  }) {
    return subjectUnSelected?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(Subject subject)? subjectSelected,
    TResult Function(Subject subject)? subjectUnSelected,
    TResult Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult Function(String title, String description)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (subjectUnSelected != null) {
      return subjectUnSelected(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSubjectSelected value) subjectSelected,
    required TResult Function(_EventSubjectUnSelected value) subjectUnSelected,
    required TResult Function(_EventReorderSubject value) onReorderSubjects,
    required TResult Function(_EventOnSaveCourseClicked value)
        onSaveCourseClicked,
  }) {
    return subjectUnSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSubjectSelected value)? subjectSelected,
    TResult? Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult? Function(_EventReorderSubject value)? onReorderSubjects,
    TResult? Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
  }) {
    return subjectUnSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSubjectSelected value)? subjectSelected,
    TResult Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult Function(_EventReorderSubject value)? onReorderSubjects,
    TResult Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (subjectUnSelected != null) {
      return subjectUnSelected(this);
    }
    return orElse();
  }
}

abstract class _EventSubjectUnSelected implements PdfAddCourseEvent {
  const factory _EventSubjectUnSelected({required final Subject subject}) =
      _$_EventSubjectUnSelected;

  Subject get subject;
  @JsonKey(ignore: true)
  _$$_EventSubjectUnSelectedCopyWith<_$_EventSubjectUnSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventReorderSubjectCopyWith<$Res> {
  factory _$$_EventReorderSubjectCopyWith(_$_EventReorderSubject value,
          $Res Function(_$_EventReorderSubject) then) =
      __$$_EventReorderSubjectCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Subject> selectedSubjects});
}

/// @nodoc
class __$$_EventReorderSubjectCopyWithImpl<$Res>
    extends _$PdfAddCourseEventCopyWithImpl<$Res, _$_EventReorderSubject>
    implements _$$_EventReorderSubjectCopyWith<$Res> {
  __$$_EventReorderSubjectCopyWithImpl(_$_EventReorderSubject _value,
      $Res Function(_$_EventReorderSubject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSubjects = null,
  }) {
    return _then(_$_EventReorderSubject(
      selectedSubjects: null == selectedSubjects
          ? _value._selectedSubjects
          : selectedSubjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

class _$_EventReorderSubject implements _EventReorderSubject {
  const _$_EventReorderSubject({required final List<Subject> selectedSubjects})
      : _selectedSubjects = selectedSubjects;

  final List<Subject> _selectedSubjects;
  @override
  List<Subject> get selectedSubjects {
    if (_selectedSubjects is EqualUnmodifiableListView)
      return _selectedSubjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSubjects);
  }

  @override
  String toString() {
    return 'PdfAddCourseEvent.onReorderSubjects(selectedSubjects: $selectedSubjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventReorderSubject &&
            const DeepCollectionEquality()
                .equals(other._selectedSubjects, _selectedSubjects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedSubjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventReorderSubjectCopyWith<_$_EventReorderSubject> get copyWith =>
      __$$_EventReorderSubjectCopyWithImpl<_$_EventReorderSubject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(Subject subject) subjectSelected,
    required TResult Function(Subject subject) subjectUnSelected,
    required TResult Function(List<Subject> selectedSubjects) onReorderSubjects,
    required TResult Function(String title, String description)
        onSaveCourseClicked,
  }) {
    return onReorderSubjects(selectedSubjects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(Subject subject)? subjectSelected,
    TResult? Function(Subject subject)? subjectUnSelected,
    TResult? Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult? Function(String title, String description)? onSaveCourseClicked,
  }) {
    return onReorderSubjects?.call(selectedSubjects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(Subject subject)? subjectSelected,
    TResult Function(Subject subject)? subjectUnSelected,
    TResult Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult Function(String title, String description)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (onReorderSubjects != null) {
      return onReorderSubjects(selectedSubjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSubjectSelected value) subjectSelected,
    required TResult Function(_EventSubjectUnSelected value) subjectUnSelected,
    required TResult Function(_EventReorderSubject value) onReorderSubjects,
    required TResult Function(_EventOnSaveCourseClicked value)
        onSaveCourseClicked,
  }) {
    return onReorderSubjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSubjectSelected value)? subjectSelected,
    TResult? Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult? Function(_EventReorderSubject value)? onReorderSubjects,
    TResult? Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
  }) {
    return onReorderSubjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSubjectSelected value)? subjectSelected,
    TResult Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult Function(_EventReorderSubject value)? onReorderSubjects,
    TResult Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (onReorderSubjects != null) {
      return onReorderSubjects(this);
    }
    return orElse();
  }
}

abstract class _EventReorderSubject implements PdfAddCourseEvent {
  const factory _EventReorderSubject(
      {required final List<Subject> selectedSubjects}) = _$_EventReorderSubject;

  List<Subject> get selectedSubjects;
  @JsonKey(ignore: true)
  _$$_EventReorderSubjectCopyWith<_$_EventReorderSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventOnSaveCourseClickedCopyWith<$Res> {
  factory _$$_EventOnSaveCourseClickedCopyWith(
          _$_EventOnSaveCourseClicked value,
          $Res Function(_$_EventOnSaveCourseClicked) then) =
      __$$_EventOnSaveCourseClickedCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_EventOnSaveCourseClickedCopyWithImpl<$Res>
    extends _$PdfAddCourseEventCopyWithImpl<$Res, _$_EventOnSaveCourseClicked>
    implements _$$_EventOnSaveCourseClickedCopyWith<$Res> {
  __$$_EventOnSaveCourseClickedCopyWithImpl(_$_EventOnSaveCourseClicked _value,
      $Res Function(_$_EventOnSaveCourseClicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EventOnSaveCourseClicked(
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

class _$_EventOnSaveCourseClicked implements _EventOnSaveCourseClicked {
  const _$_EventOnSaveCourseClicked(
      {required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'PdfAddCourseEvent.onSaveCourseClicked(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnSaveCourseClicked &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnSaveCourseClickedCopyWith<_$_EventOnSaveCourseClicked>
      get copyWith => __$$_EventOnSaveCourseClickedCopyWithImpl<
          _$_EventOnSaveCourseClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function(Subject subject) subjectSelected,
    required TResult Function(Subject subject) subjectUnSelected,
    required TResult Function(List<Subject> selectedSubjects) onReorderSubjects,
    required TResult Function(String title, String description)
        onSaveCourseClicked,
  }) {
    return onSaveCourseClicked(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function(Subject subject)? subjectSelected,
    TResult? Function(Subject subject)? subjectUnSelected,
    TResult? Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult? Function(String title, String description)? onSaveCourseClicked,
  }) {
    return onSaveCourseClicked?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function(Subject subject)? subjectSelected,
    TResult Function(Subject subject)? subjectUnSelected,
    TResult Function(List<Subject> selectedSubjects)? onReorderSubjects,
    TResult Function(String title, String description)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (onSaveCourseClicked != null) {
      return onSaveCourseClicked(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSubjectSelected value) subjectSelected,
    required TResult Function(_EventSubjectUnSelected value) subjectUnSelected,
    required TResult Function(_EventReorderSubject value) onReorderSubjects,
    required TResult Function(_EventOnSaveCourseClicked value)
        onSaveCourseClicked,
  }) {
    return onSaveCourseClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSubjectSelected value)? subjectSelected,
    TResult? Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult? Function(_EventReorderSubject value)? onReorderSubjects,
    TResult? Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
  }) {
    return onSaveCourseClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSubjectSelected value)? subjectSelected,
    TResult Function(_EventSubjectUnSelected value)? subjectUnSelected,
    TResult Function(_EventReorderSubject value)? onReorderSubjects,
    TResult Function(_EventOnSaveCourseClicked value)? onSaveCourseClicked,
    required TResult orElse(),
  }) {
    if (onSaveCourseClicked != null) {
      return onSaveCourseClicked(this);
    }
    return orElse();
  }
}

abstract class _EventOnSaveCourseClicked implements PdfAddCourseEvent {
  const factory _EventOnSaveCourseClicked(
      {required final String title,
      required final String description}) = _$_EventOnSaveCourseClicked;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$_EventOnSaveCourseClickedCopyWith<_$_EventOnSaveCourseClicked>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PdfAddCourseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loadingError,
    required TResult Function(
            List<Subject> subjects, List<Subject> selectedSubjects)
        screenState,
    required TResult Function(String? errorText) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
    TResult? Function(String? errorText)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
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
abstract class $PdfAddCourseStateCopyWith<$Res> {
  factory $PdfAddCourseStateCopyWith(
          PdfAddCourseState value, $Res Function(PdfAddCourseState) then) =
      _$PdfAddCourseStateCopyWithImpl<$Res, PdfAddCourseState>;
}

/// @nodoc
class _$PdfAddCourseStateCopyWithImpl<$Res, $Val extends PdfAddCourseState>
    implements $PdfAddCourseStateCopyWith<$Res> {
  _$PdfAddCourseStateCopyWithImpl(this._value, this._then);

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
    extends _$PdfAddCourseStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'PdfAddCourseState.pending()';
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
    required TResult Function(
            List<Subject> subjects, List<Subject> selectedSubjects)
        screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
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

abstract class _StatePending implements PdfAddCourseState {
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
    extends _$PdfAddCourseStateCopyWithImpl<$Res, _$_StateLoadingError>
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
    return 'PdfAddCourseState.loadingError()';
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
    required TResult Function(
            List<Subject> subjects, List<Subject> selectedSubjects)
        screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return loadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return loadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
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

abstract class _StateLoadingError implements PdfAddCourseState {
  const factory _StateLoadingError() = _$_StateLoadingError;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Subject> subjects, List<Subject> selectedSubjects});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PdfAddCourseStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = null,
    Object? selectedSubjects = null,
  }) {
    return _then(_$_ScreenState(
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
      selectedSubjects: null == selectedSubjects
          ? _value._selectedSubjects
          : selectedSubjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState(
      {required final List<Subject> subjects,
      required final List<Subject> selectedSubjects})
      : _subjects = subjects,
        _selectedSubjects = selectedSubjects;

  final List<Subject> _subjects;
  @override
  List<Subject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  final List<Subject> _selectedSubjects;
  @override
  List<Subject> get selectedSubjects {
    if (_selectedSubjects is EqualUnmodifiableListView)
      return _selectedSubjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSubjects);
  }

  @override
  String toString() {
    return 'PdfAddCourseState.screenState(subjects: $subjects, selectedSubjects: $selectedSubjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality()
                .equals(other._selectedSubjects, _selectedSubjects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_selectedSubjects));

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
    required TResult Function(
            List<Subject> subjects, List<Subject> selectedSubjects)
        screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return screenState(subjects, selectedSubjects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return screenState?.call(subjects, selectedSubjects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(subjects, selectedSubjects);
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

abstract class _ScreenState implements PdfAddCourseState {
  const factory _ScreenState(
      {required final List<Subject> subjects,
      required final List<Subject> selectedSubjects}) = _$_ScreenState;

  List<Subject> get subjects;
  List<Subject> get selectedSubjects;
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
    extends _$PdfAddCourseStateCopyWithImpl<$Res, _$_StateRequestError>
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
    return 'PdfAddCourseState.requestError(errorText: $errorText)';
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
    required TResult Function(
            List<Subject> subjects, List<Subject> selectedSubjects)
        screenState,
    required TResult Function(String? errorText) requestError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loadingError,
    TResult? Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
    TResult? Function(String? errorText)? requestError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loadingError,
    TResult Function(List<Subject> subjects, List<Subject> selectedSubjects)?
        screenState,
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

abstract class _StateRequestError implements PdfAddCourseState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
