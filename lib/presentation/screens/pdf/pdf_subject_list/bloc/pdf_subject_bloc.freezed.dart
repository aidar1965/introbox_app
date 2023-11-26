// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_subject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfSubjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChanged,
    required TResult Function(int id) deleteSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataChanged,
    TResult? Function(int id)? deleteSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChanged,
    TResult Function(int id)? deleteSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataChanged value) dataChanged,
    required TResult Function(_EventDeleteSubject value) deleteSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataChanged value)? dataChanged,
    TResult? Function(_EventDeleteSubject value)? deleteSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataChanged value)? dataChanged,
    TResult Function(_EventDeleteSubject value)? deleteSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfSubjectEventCopyWith<$Res> {
  factory $PdfSubjectEventCopyWith(
          PdfSubjectEvent value, $Res Function(PdfSubjectEvent) then) =
      _$PdfSubjectEventCopyWithImpl<$Res, PdfSubjectEvent>;
}

/// @nodoc
class _$PdfSubjectEventCopyWithImpl<$Res, $Val extends PdfSubjectEvent>
    implements $PdfSubjectEventCopyWith<$Res> {
  _$PdfSubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventDataChangedCopyWith<$Res> {
  factory _$$_EventDataChangedCopyWith(
          _$_EventDataChanged value, $Res Function(_$_EventDataChanged) then) =
      __$$_EventDataChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventDataChangedCopyWithImpl<$Res>
    extends _$PdfSubjectEventCopyWithImpl<$Res, _$_EventDataChanged>
    implements _$$_EventDataChangedCopyWith<$Res> {
  __$$_EventDataChangedCopyWithImpl(
      _$_EventDataChanged _value, $Res Function(_$_EventDataChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventDataChanged implements _EventDataChanged {
  const _$_EventDataChanged();

  @override
  String toString() {
    return 'PdfSubjectEvent.dataChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventDataChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChanged,
    required TResult Function(int id) deleteSubject,
  }) {
    return dataChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataChanged,
    TResult? Function(int id)? deleteSubject,
  }) {
    return dataChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChanged,
    TResult Function(int id)? deleteSubject,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataChanged value) dataChanged,
    required TResult Function(_EventDeleteSubject value) deleteSubject,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataChanged value)? dataChanged,
    TResult? Function(_EventDeleteSubject value)? deleteSubject,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataChanged value)? dataChanged,
    TResult Function(_EventDeleteSubject value)? deleteSubject,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class _EventDataChanged implements PdfSubjectEvent {
  const factory _EventDataChanged() = _$_EventDataChanged;
}

/// @nodoc
abstract class _$$_EventDeleteSubjectCopyWith<$Res> {
  factory _$$_EventDeleteSubjectCopyWith(_$_EventDeleteSubject value,
          $Res Function(_$_EventDeleteSubject) then) =
      __$$_EventDeleteSubjectCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_EventDeleteSubjectCopyWithImpl<$Res>
    extends _$PdfSubjectEventCopyWithImpl<$Res, _$_EventDeleteSubject>
    implements _$$_EventDeleteSubjectCopyWith<$Res> {
  __$$_EventDeleteSubjectCopyWithImpl(
      _$_EventDeleteSubject _value, $Res Function(_$_EventDeleteSubject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_EventDeleteSubject(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventDeleteSubject implements _EventDeleteSubject {
  const _$_EventDeleteSubject(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PdfSubjectEvent.deleteSubject(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDeleteSubject &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDeleteSubjectCopyWith<_$_EventDeleteSubject> get copyWith =>
      __$$_EventDeleteSubjectCopyWithImpl<_$_EventDeleteSubject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChanged,
    required TResult Function(int id) deleteSubject,
  }) {
    return deleteSubject(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataChanged,
    TResult? Function(int id)? deleteSubject,
  }) {
    return deleteSubject?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChanged,
    TResult Function(int id)? deleteSubject,
    required TResult orElse(),
  }) {
    if (deleteSubject != null) {
      return deleteSubject(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataChanged value) dataChanged,
    required TResult Function(_EventDeleteSubject value) deleteSubject,
  }) {
    return deleteSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataChanged value)? dataChanged,
    TResult? Function(_EventDeleteSubject value)? deleteSubject,
  }) {
    return deleteSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataChanged value)? dataChanged,
    TResult Function(_EventDeleteSubject value)? deleteSubject,
    required TResult orElse(),
  }) {
    if (deleteSubject != null) {
      return deleteSubject(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteSubject implements PdfSubjectEvent {
  const factory _EventDeleteSubject(final int id) = _$_EventDeleteSubject;

  int get id;
  @JsonKey(ignore: true)
  _$$_EventDeleteSubjectCopyWith<_$_EventDeleteSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PdfSubjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Subject> subjects) screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Subject> subjects)? screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Subject> subjects)? screenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfSubjectStateCopyWith<$Res> {
  factory $PdfSubjectStateCopyWith(
          PdfSubjectState value, $Res Function(PdfSubjectState) then) =
      _$PdfSubjectStateCopyWithImpl<$Res, PdfSubjectState>;
}

/// @nodoc
class _$PdfSubjectStateCopyWithImpl<$Res, $Val extends PdfSubjectState>
    implements $PdfSubjectStateCopyWith<$Res> {
  _$PdfSubjectStateCopyWithImpl(this._value, this._then);

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
    extends _$PdfSubjectStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'PdfSubjectState.pending()';
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
    required TResult Function(List<Subject> subjects) screenState,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Subject> subjects)? screenState,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Subject> subjects)? screenState,
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
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements PdfSubjectState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Subject> subjects});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PdfSubjectStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = null,
  }) {
    return _then(_$_ScreenState(
      subjects: null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState({required final List<Subject> subjects})
      : _subjects = subjects;

  final List<Subject> _subjects;
  @override
  List<Subject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString() {
    return 'PdfSubjectState.screenState(subjects: $subjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Subject> subjects) screenState,
  }) {
    return screenState(subjects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Subject> subjects)? screenState,
  }) {
    return screenState?.call(subjects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Subject> subjects)? screenState,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(subjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements PdfSubjectState {
  const factory _ScreenState({required final List<Subject> subjects}) =
      _$_ScreenState;

  List<Subject> get subjects;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
