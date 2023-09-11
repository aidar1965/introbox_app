// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'records_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecordsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() newRecord,
    required TResult Function(RecordCategory category) selectCategory,
    required TResult Function(RecordCategory category) editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function() resendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? newRecord,
    TResult? Function(RecordCategory category)? selectCategory,
    TResult? Function(RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function()? resendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? newRecord,
    TResult Function(RecordCategory category)? selectCategory,
    TResult Function(RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function()? resendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_NewRecord value) newRecord,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_ResendData value) resendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_NewRecord value)? newRecord,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_ResendData value)? resendData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_NewRecord value)? newRecord,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_ResendData value)? resendData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsEventCopyWith<$Res> {
  factory $RecordsEventCopyWith(
          RecordsEvent value, $Res Function(RecordsEvent) then) =
      _$RecordsEventCopyWithImpl<$Res, RecordsEvent>;
}

/// @nodoc
class _$RecordsEventCopyWithImpl<$Res, $Val extends RecordsEvent>
    implements $RecordsEventCopyWith<$Res> {
  _$RecordsEventCopyWithImpl(this._value, this._then);

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
    extends _$RecordsEventCopyWithImpl<$Res, _$_DataRequested>
    implements _$$_DataRequestedCopyWith<$Res> {
  __$$_DataRequestedCopyWithImpl(
      _$_DataRequested _value, $Res Function(_$_DataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataRequested with DiagnosticableTreeMixin implements _DataRequested {
  const _$_DataRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsEvent.dataRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordsEvent.dataRequested'));
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
    required TResult Function() newRecord,
    required TResult Function(RecordCategory category) selectCategory,
    required TResult Function(RecordCategory category) editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function() resendData,
  }) {
    return dataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? newRecord,
    TResult? Function(RecordCategory category)? selectCategory,
    TResult? Function(RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function()? resendData,
  }) {
    return dataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? newRecord,
    TResult Function(RecordCategory category)? selectCategory,
    TResult Function(RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function()? resendData,
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
    required TResult Function(_NewRecord value) newRecord,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_ResendData value) resendData,
  }) {
    return dataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_NewRecord value)? newRecord,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_ResendData value)? resendData,
  }) {
    return dataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_NewRecord value)? newRecord,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_ResendData value)? resendData,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested(this);
    }
    return orElse();
  }
}

abstract class _DataRequested implements RecordsEvent {
  const factory _DataRequested() = _$_DataRequested;
}

/// @nodoc
abstract class _$$_NewRecordCopyWith<$Res> {
  factory _$$_NewRecordCopyWith(
          _$_NewRecord value, $Res Function(_$_NewRecord) then) =
      __$$_NewRecordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewRecordCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$_NewRecord>
    implements _$$_NewRecordCopyWith<$Res> {
  __$$_NewRecordCopyWithImpl(
      _$_NewRecord _value, $Res Function(_$_NewRecord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewRecord with DiagnosticableTreeMixin implements _NewRecord {
  const _$_NewRecord();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsEvent.newRecord()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordsEvent.newRecord'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewRecord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() newRecord,
    required TResult Function(RecordCategory category) selectCategory,
    required TResult Function(RecordCategory category) editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function() resendData,
  }) {
    return newRecord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? newRecord,
    TResult? Function(RecordCategory category)? selectCategory,
    TResult? Function(RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function()? resendData,
  }) {
    return newRecord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? newRecord,
    TResult Function(RecordCategory category)? selectCategory,
    TResult Function(RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function()? resendData,
    required TResult orElse(),
  }) {
    if (newRecord != null) {
      return newRecord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataRequested value) dataRequested,
    required TResult Function(_NewRecord value) newRecord,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_ResendData value) resendData,
  }) {
    return newRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_NewRecord value)? newRecord,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_ResendData value)? resendData,
  }) {
    return newRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_NewRecord value)? newRecord,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_ResendData value)? resendData,
    required TResult orElse(),
  }) {
    if (newRecord != null) {
      return newRecord(this);
    }
    return orElse();
  }
}

abstract class _NewRecord implements RecordsEvent {
  const factory _NewRecord() = _$_NewRecord;
}

/// @nodoc
abstract class _$$_SelectCategoryCopyWith<$Res> {
  factory _$$_SelectCategoryCopyWith(
          _$_SelectCategory value, $Res Function(_$_SelectCategory) then) =
      __$$_SelectCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({RecordCategory category});
}

/// @nodoc
class __$$_SelectCategoryCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$_SelectCategory>
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
              as RecordCategory,
    ));
  }
}

/// @nodoc

class _$_SelectCategory
    with DiagnosticableTreeMixin
    implements _SelectCategory {
  const _$_SelectCategory(this.category);

  @override
  final RecordCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsEvent.selectCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordsEvent.selectCategory'))
      ..add(DiagnosticsProperty('category', category));
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
    required TResult Function() newRecord,
    required TResult Function(RecordCategory category) selectCategory,
    required TResult Function(RecordCategory category) editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function() resendData,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? newRecord,
    TResult? Function(RecordCategory category)? selectCategory,
    TResult? Function(RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function()? resendData,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? newRecord,
    TResult Function(RecordCategory category)? selectCategory,
    TResult Function(RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function()? resendData,
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
    required TResult Function(_NewRecord value) newRecord,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_ResendData value) resendData,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_NewRecord value)? newRecord,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_ResendData value)? resendData,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_NewRecord value)? newRecord,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_ResendData value)? resendData,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements RecordsEvent {
  const factory _SelectCategory(final RecordCategory category) =
      _$_SelectCategory;

  RecordCategory get category;
  @JsonKey(ignore: true)
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditCategoryCopyWith<$Res> {
  factory _$$_EditCategoryCopyWith(
          _$_EditCategory value, $Res Function(_$_EditCategory) then) =
      __$$_EditCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({RecordCategory category});
}

/// @nodoc
class __$$_EditCategoryCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$_EditCategory>
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
              as RecordCategory,
    ));
  }
}

/// @nodoc

class _$_EditCategory with DiagnosticableTreeMixin implements _EditCategory {
  const _$_EditCategory(this.category);

  @override
  final RecordCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsEvent.editCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordsEvent.editCategory'))
      ..add(DiagnosticsProperty('category', category));
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
    required TResult Function() newRecord,
    required TResult Function(RecordCategory category) selectCategory,
    required TResult Function(RecordCategory category) editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function() resendData,
  }) {
    return editCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? newRecord,
    TResult? Function(RecordCategory category)? selectCategory,
    TResult? Function(RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function()? resendData,
  }) {
    return editCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? newRecord,
    TResult Function(RecordCategory category)? selectCategory,
    TResult Function(RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function()? resendData,
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
    required TResult Function(_NewRecord value) newRecord,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_ResendData value) resendData,
  }) {
    return editCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_NewRecord value)? newRecord,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_ResendData value)? resendData,
  }) {
    return editCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_NewRecord value)? newRecord,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_ResendData value)? resendData,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(this);
    }
    return orElse();
  }
}

abstract class _EditCategory implements RecordsEvent {
  const factory _EditCategory(final RecordCategory category) = _$_EditCategory;

  RecordCategory get category;
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
  $Res call({RecordCategory category});
}

/// @nodoc
class __$$_DeleteCategoryCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$_DeleteCategory>
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
              as RecordCategory,
    ));
  }
}

/// @nodoc

class _$_DeleteCategory
    with DiagnosticableTreeMixin
    implements _DeleteCategory {
  const _$_DeleteCategory(this.category);

  @override
  final RecordCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsEvent.deleteCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordsEvent.deleteCategory'))
      ..add(DiagnosticsProperty('category', category));
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
    required TResult Function() newRecord,
    required TResult Function(RecordCategory category) selectCategory,
    required TResult Function(RecordCategory category) editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function() resendData,
  }) {
    return deleteCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? newRecord,
    TResult? Function(RecordCategory category)? selectCategory,
    TResult? Function(RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function()? resendData,
  }) {
    return deleteCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? newRecord,
    TResult Function(RecordCategory category)? selectCategory,
    TResult Function(RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function()? resendData,
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
    required TResult Function(_NewRecord value) newRecord,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_ResendData value) resendData,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_NewRecord value)? newRecord,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_ResendData value)? resendData,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_NewRecord value)? newRecord,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_ResendData value)? resendData,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements RecordsEvent {
  const factory _DeleteCategory(final RecordCategory category) =
      _$_DeleteCategory;

  RecordCategory get category;
  @JsonKey(ignore: true)
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendDataCopyWith<$Res> {
  factory _$$_ResendDataCopyWith(
          _$_ResendData value, $Res Function(_$_ResendData) then) =
      __$$_ResendDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResendDataCopyWithImpl<$Res>
    extends _$RecordsEventCopyWithImpl<$Res, _$_ResendData>
    implements _$$_ResendDataCopyWith<$Res> {
  __$$_ResendDataCopyWithImpl(
      _$_ResendData _value, $Res Function(_$_ResendData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResendData with DiagnosticableTreeMixin implements _ResendData {
  const _$_ResendData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsEvent.resendData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordsEvent.resendData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResendData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() newRecord,
    required TResult Function(RecordCategory category) selectCategory,
    required TResult Function(RecordCategory category) editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function() resendData,
  }) {
    return resendData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? newRecord,
    TResult? Function(RecordCategory category)? selectCategory,
    TResult? Function(RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function()? resendData,
  }) {
    return resendData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? newRecord,
    TResult Function(RecordCategory category)? selectCategory,
    TResult Function(RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function()? resendData,
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
    required TResult Function(_NewRecord value) newRecord,
    required TResult Function(_SelectCategory value) selectCategory,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_ResendData value) resendData,
  }) {
    return resendData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataRequested value)? dataRequested,
    TResult? Function(_NewRecord value)? newRecord,
    TResult? Function(_SelectCategory value)? selectCategory,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_ResendData value)? resendData,
  }) {
    return resendData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataRequested value)? dataRequested,
    TResult Function(_NewRecord value)? newRecord,
    TResult Function(_SelectCategory value)? selectCategory,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_ResendData value)? resendData,
    required TResult orElse(),
  }) {
    if (resendData != null) {
      return resendData(this);
    }
    return orElse();
  }
}

abstract class _ResendData implements RecordsEvent {
  const factory _ResendData() = _$_ResendData;
}

/// @nodoc
mixin _$RecordsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Record> records,
            List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)
        dataReceived,
    required TResult Function() addRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult? Function()? addRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult Function()? addRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_AddRecord value) addRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddRecord value)? addRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddRecord value)? addRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsStateCopyWith<$Res> {
  factory $RecordsStateCopyWith(
          RecordsState value, $Res Function(RecordsState) then) =
      _$RecordsStateCopyWithImpl<$Res, RecordsState>;
}

/// @nodoc
class _$RecordsStateCopyWithImpl<$Res, $Val extends RecordsState>
    implements $RecordsStateCopyWith<$Res> {
  _$RecordsStateCopyWithImpl(this._value, this._then);

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
    extends _$RecordsStateCopyWithImpl<$Res, _$_Pending>
    implements _$$_PendingCopyWith<$Res> {
  __$$_PendingCopyWithImpl(_$_Pending _value, $Res Function(_$_Pending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Pending with DiagnosticableTreeMixin implements _Pending {
  const _$_Pending();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsState.pending()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordsState.pending'));
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
            List<Record> records,
            List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)
        dataReceived,
    required TResult Function() addRecord,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult? Function()? addRecord,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult Function()? addRecord,
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
    required TResult Function(_AddRecord value) addRecord,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddRecord value)? addRecord,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddRecord value)? addRecord,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements RecordsState {
  const factory _Pending() = _$_Pending;
}

/// @nodoc
abstract class _$$_DataReceivedCopyWith<$Res> {
  factory _$$_DataReceivedCopyWith(
          _$_DataReceived value, $Res Function(_$_DataReceived) then) =
      __$$_DataReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Record> records,
      List<RecordCategory> categories,
      List<RecordCategory> selectedCategories});
}

/// @nodoc
class __$$_DataReceivedCopyWithImpl<$Res>
    extends _$RecordsStateCopyWithImpl<$Res, _$_DataReceived>
    implements _$$_DataReceivedCopyWith<$Res> {
  __$$_DataReceivedCopyWithImpl(
      _$_DataReceived _value, $Res Function(_$_DataReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? categories = null,
    Object? selectedCategories = null,
  }) {
    return _then(_$_DataReceived(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<Record>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<RecordCategory>,
      selectedCategories: null == selectedCategories
          ? _value._selectedCategories
          : selectedCategories // ignore: cast_nullable_to_non_nullable
              as List<RecordCategory>,
    ));
  }
}

/// @nodoc

class _$_DataReceived with DiagnosticableTreeMixin implements _DataReceived {
  const _$_DataReceived(
      {required final List<Record> records,
      required final List<RecordCategory> categories,
      required final List<RecordCategory> selectedCategories})
      : _records = records,
        _categories = categories,
        _selectedCategories = selectedCategories;

  final List<Record> _records;
  @override
  List<Record> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  final List<RecordCategory> _categories;
  @override
  List<RecordCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<RecordCategory> _selectedCategories;
  @override
  List<RecordCategory> get selectedCategories {
    if (_selectedCategories is EqualUnmodifiableListView)
      return _selectedCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsState.dataReceived(records: $records, categories: $categories, selectedCategories: $selectedCategories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordsState.dataReceived'))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('selectedCategories', selectedCategories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataReceived &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategories, _selectedCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_records),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_selectedCategories));

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
            List<Record> records,
            List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)
        dataReceived,
    required TResult Function() addRecord,
  }) {
    return dataReceived(records, categories, selectedCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult? Function()? addRecord,
  }) {
    return dataReceived?.call(records, categories, selectedCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult Function()? addRecord,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(records, categories, selectedCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_AddRecord value) addRecord,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddRecord value)? addRecord,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddRecord value)? addRecord,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _DataReceived implements RecordsState {
  const factory _DataReceived(
          {required final List<Record> records,
          required final List<RecordCategory> categories,
          required final List<RecordCategory> selectedCategories}) =
      _$_DataReceived;

  List<Record> get records;
  List<RecordCategory> get categories;
  List<RecordCategory> get selectedCategories;
  @JsonKey(ignore: true)
  _$$_DataReceivedCopyWith<_$_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddRecordCopyWith<$Res> {
  factory _$$_AddRecordCopyWith(
          _$_AddRecord value, $Res Function(_$_AddRecord) then) =
      __$$_AddRecordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddRecordCopyWithImpl<$Res>
    extends _$RecordsStateCopyWithImpl<$Res, _$_AddRecord>
    implements _$$_AddRecordCopyWith<$Res> {
  __$$_AddRecordCopyWithImpl(
      _$_AddRecord _value, $Res Function(_$_AddRecord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddRecord with DiagnosticableTreeMixin implements _AddRecord {
  const _$_AddRecord();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsState.addRecord()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RecordsState.addRecord'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddRecord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Record> records,
            List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)
        dataReceived,
    required TResult Function() addRecord,
  }) {
    return addRecord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult? Function()? addRecord,
  }) {
    return addRecord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Record> records, List<RecordCategory> categories,
            List<RecordCategory> selectedCategories)?
        dataReceived,
    TResult Function()? addRecord,
    required TResult orElse(),
  }) {
    if (addRecord != null) {
      return addRecord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
    required TResult Function(_AddRecord value) addRecord,
  }) {
    return addRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
    TResult? Function(_AddRecord value)? addRecord,
  }) {
    return addRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    TResult Function(_AddRecord value)? addRecord,
    required TResult orElse(),
  }) {
    if (addRecord != null) {
      return addRecord(this);
    }
    return orElse();
  }
}

abstract class _AddRecord implements RecordsState {
  const factory _AddRecord() = _$_AddRecord;
}
