// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditRecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)
        saveRecord,
    required TResult Function(String name) addCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String name, RecordCategory category)
        editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function(RecordCategory category) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult? Function(String name)? addCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String name, RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function(RecordCategory category)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult Function(String name)? addCategory,
    TResult Function()? fetchCategories,
    TResult Function(String name, RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function(RecordCategory category)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveRecord value) saveRecord,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_SelectCategory value) selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveRecord value)? saveRecord,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveRecord value)? saveRecord,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRecordEventCopyWith<$Res> {
  factory $EditRecordEventCopyWith(
          EditRecordEvent value, $Res Function(EditRecordEvent) then) =
      _$EditRecordEventCopyWithImpl<$Res, EditRecordEvent>;
}

/// @nodoc
class _$EditRecordEventCopyWithImpl<$Res, $Val extends EditRecordEvent>
    implements $EditRecordEventCopyWith<$Res> {
  _$EditRecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveRecordCopyWith<$Res> {
  factory _$$_SaveRecordCopyWith(
          _$_SaveRecord value, $Res Function(_$_SaveRecord) then) =
      __$$_SaveRecordCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Record record,
      String title,
      String? description,
      Map<String, int>? images,
      String audioPath,
      int recordDuration});
}

/// @nodoc
class __$$_SaveRecordCopyWithImpl<$Res>
    extends _$EditRecordEventCopyWithImpl<$Res, _$_SaveRecord>
    implements _$$_SaveRecordCopyWith<$Res> {
  __$$_SaveRecordCopyWithImpl(
      _$_SaveRecord _value, $Res Function(_$_SaveRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
    Object? title = null,
    Object? description = freezed,
    Object? images = freezed,
    Object? audioPath = null,
    Object? recordDuration = null,
  }) {
    return _then(_$_SaveRecord(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as Record,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      recordDuration: null == recordDuration
          ? _value.recordDuration
          : recordDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SaveRecord implements _SaveRecord {
  const _$_SaveRecord(
      {required this.record,
      required this.title,
      this.description,
      final Map<String, int>? images,
      required this.audioPath,
      required this.recordDuration})
      : _images = images;

  @override
  final Record record;
  @override
  final String title;
  @override
  final String? description;
  final Map<String, int>? _images;
  @override
  Map<String, int>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableMapView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String audioPath;
  @override
  final int recordDuration;

  @override
  String toString() {
    return 'EditRecordEvent.saveRecord(record: $record, title: $title, description: $description, images: $images, audioPath: $audioPath, recordDuration: $recordDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveRecord &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.recordDuration, recordDuration) ||
                other.recordDuration == recordDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, record, title, description,
      const DeepCollectionEquality().hash(_images), audioPath, recordDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveRecordCopyWith<_$_SaveRecord> get copyWith =>
      __$$_SaveRecordCopyWithImpl<_$_SaveRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)
        saveRecord,
    required TResult Function(String name) addCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String name, RecordCategory category)
        editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function(RecordCategory category) selectCategory,
  }) {
    return saveRecord(
        record, title, description, images, audioPath, recordDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult? Function(String name)? addCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String name, RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function(RecordCategory category)? selectCategory,
  }) {
    return saveRecord?.call(
        record, title, description, images, audioPath, recordDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult Function(String name)? addCategory,
    TResult Function()? fetchCategories,
    TResult Function(String name, RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function(RecordCategory category)? selectCategory,
    required TResult orElse(),
  }) {
    if (saveRecord != null) {
      return saveRecord(
          record, title, description, images, audioPath, recordDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveRecord value) saveRecord,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return saveRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveRecord value)? saveRecord,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return saveRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveRecord value)? saveRecord,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (saveRecord != null) {
      return saveRecord(this);
    }
    return orElse();
  }
}

abstract class _SaveRecord implements EditRecordEvent {
  const factory _SaveRecord(
      {required final Record record,
      required final String title,
      final String? description,
      final Map<String, int>? images,
      required final String audioPath,
      required final int recordDuration}) = _$_SaveRecord;

  Record get record;
  String get title;
  String? get description;
  Map<String, int>? get images;
  String get audioPath;
  int get recordDuration;
  @JsonKey(ignore: true)
  _$$_SaveRecordCopyWith<_$_SaveRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCategoryCopyWith<$Res> {
  factory _$$_AddCategoryCopyWith(
          _$_AddCategory value, $Res Function(_$_AddCategory) then) =
      __$$_AddCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AddCategoryCopyWithImpl<$Res>
    extends _$EditRecordEventCopyWithImpl<$Res, _$_AddCategory>
    implements _$$_AddCategoryCopyWith<$Res> {
  __$$_AddCategoryCopyWithImpl(
      _$_AddCategory _value, $Res Function(_$_AddCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_AddCategory(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCategory implements _AddCategory {
  const _$_AddCategory(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'EditRecordEvent.addCategory(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCategory &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCategoryCopyWith<_$_AddCategory> get copyWith =>
      __$$_AddCategoryCopyWithImpl<_$_AddCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)
        saveRecord,
    required TResult Function(String name) addCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String name, RecordCategory category)
        editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function(RecordCategory category) selectCategory,
  }) {
    return addCategory(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult? Function(String name)? addCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String name, RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function(RecordCategory category)? selectCategory,
  }) {
    return addCategory?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult Function(String name)? addCategory,
    TResult Function()? fetchCategories,
    TResult Function(String name, RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function(RecordCategory category)? selectCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveRecord value) saveRecord,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveRecord value)? saveRecord,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveRecord value)? saveRecord,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements EditRecordEvent {
  const factory _AddCategory(final String name) = _$_AddCategory;

  String get name;
  @JsonKey(ignore: true)
  _$$_AddCategoryCopyWith<_$_AddCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchCategoriesCopyWith<$Res> {
  factory _$$_FetchCategoriesCopyWith(
          _$_FetchCategories value, $Res Function(_$_FetchCategories) then) =
      __$$_FetchCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCategoriesCopyWithImpl<$Res>
    extends _$EditRecordEventCopyWithImpl<$Res, _$_FetchCategories>
    implements _$$_FetchCategoriesCopyWith<$Res> {
  __$$_FetchCategoriesCopyWithImpl(
      _$_FetchCategories _value, $Res Function(_$_FetchCategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchCategories implements _FetchCategories {
  const _$_FetchCategories();

  @override
  String toString() {
    return 'EditRecordEvent.fetchCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)
        saveRecord,
    required TResult Function(String name) addCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String name, RecordCategory category)
        editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function(RecordCategory category) selectCategory,
  }) {
    return fetchCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult? Function(String name)? addCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String name, RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function(RecordCategory category)? selectCategory,
  }) {
    return fetchCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult Function(String name)? addCategory,
    TResult Function()? fetchCategories,
    TResult Function(String name, RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function(RecordCategory category)? selectCategory,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveRecord value) saveRecord,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveRecord value)? saveRecord,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return fetchCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveRecord value)? saveRecord,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class _FetchCategories implements EditRecordEvent {
  const factory _FetchCategories() = _$_FetchCategories;
}

/// @nodoc
abstract class _$$_EditCategoryCopyWith<$Res> {
  factory _$$_EditCategoryCopyWith(
          _$_EditCategory value, $Res Function(_$_EditCategory) then) =
      __$$_EditCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, RecordCategory category});
}

/// @nodoc
class __$$_EditCategoryCopyWithImpl<$Res>
    extends _$EditRecordEventCopyWithImpl<$Res, _$_EditCategory>
    implements _$$_EditCategoryCopyWith<$Res> {
  __$$_EditCategoryCopyWithImpl(
      _$_EditCategory _value, $Res Function(_$_EditCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
  }) {
    return _then(_$_EditCategory(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as RecordCategory,
    ));
  }
}

/// @nodoc

class _$_EditCategory implements _EditCategory {
  const _$_EditCategory(this.name, this.category);

  @override
  final String name;
  @override
  final RecordCategory category;

  @override
  String toString() {
    return 'EditRecordEvent.editCategory(name: $name, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCategory &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditCategoryCopyWith<_$_EditCategory> get copyWith =>
      __$$_EditCategoryCopyWithImpl<_$_EditCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)
        saveRecord,
    required TResult Function(String name) addCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String name, RecordCategory category)
        editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function(RecordCategory category) selectCategory,
  }) {
    return editCategory(name, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult? Function(String name)? addCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String name, RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function(RecordCategory category)? selectCategory,
  }) {
    return editCategory?.call(name, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult Function(String name)? addCategory,
    TResult Function()? fetchCategories,
    TResult Function(String name, RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function(RecordCategory category)? selectCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(name, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveRecord value) saveRecord,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return editCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveRecord value)? saveRecord,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return editCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveRecord value)? saveRecord,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(this);
    }
    return orElse();
  }
}

abstract class _EditCategory implements EditRecordEvent {
  const factory _EditCategory(
      final String name, final RecordCategory category) = _$_EditCategory;

  String get name;
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
    extends _$EditRecordEventCopyWithImpl<$Res, _$_DeleteCategory>
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

class _$_DeleteCategory implements _DeleteCategory {
  const _$_DeleteCategory(this.category);

  @override
  final RecordCategory category;

  @override
  String toString() {
    return 'EditRecordEvent.deleteCategory(category: $category)';
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
    required TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)
        saveRecord,
    required TResult Function(String name) addCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String name, RecordCategory category)
        editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function(RecordCategory category) selectCategory,
  }) {
    return deleteCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult? Function(String name)? addCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String name, RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function(RecordCategory category)? selectCategory,
  }) {
    return deleteCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult Function(String name)? addCategory,
    TResult Function()? fetchCategories,
    TResult Function(String name, RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function(RecordCategory category)? selectCategory,
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
    required TResult Function(_SaveRecord value) saveRecord,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveRecord value)? saveRecord,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveRecord value)? saveRecord,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements EditRecordEvent {
  const factory _DeleteCategory(final RecordCategory category) =
      _$_DeleteCategory;

  RecordCategory get category;
  @JsonKey(ignore: true)
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$EditRecordEventCopyWithImpl<$Res, _$_SelectCategory>
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

class _$_SelectCategory implements _SelectCategory {
  const _$_SelectCategory(this.category);

  @override
  final RecordCategory category;

  @override
  String toString() {
    return 'EditRecordEvent.selectCategory(category: $category)';
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
    required TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)
        saveRecord,
    required TResult Function(String name) addCategory,
    required TResult Function() fetchCategories,
    required TResult Function(String name, RecordCategory category)
        editCategory,
    required TResult Function(RecordCategory category) deleteCategory,
    required TResult Function(RecordCategory category) selectCategory,
  }) {
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult? Function(String name)? addCategory,
    TResult? Function()? fetchCategories,
    TResult? Function(String name, RecordCategory category)? editCategory,
    TResult? Function(RecordCategory category)? deleteCategory,
    TResult? Function(RecordCategory category)? selectCategory,
  }) {
    return selectCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Record record, String title, String? description,
            Map<String, int>? images, String audioPath, int recordDuration)?
        saveRecord,
    TResult Function(String name)? addCategory,
    TResult Function()? fetchCategories,
    TResult Function(String name, RecordCategory category)? editCategory,
    TResult Function(RecordCategory category)? deleteCategory,
    TResult Function(RecordCategory category)? selectCategory,
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
    required TResult Function(_SaveRecord value) saveRecord,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_FetchCategories value) fetchCategories,
    required TResult Function(_EditCategory value) editCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_SelectCategory value) selectCategory,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveRecord value)? saveRecord,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_FetchCategories value)? fetchCategories,
    TResult? Function(_EditCategory value)? editCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_SelectCategory value)? selectCategory,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveRecord value)? saveRecord,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_FetchCategories value)? fetchCategories,
    TResult Function(_EditCategory value)? editCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_SelectCategory value)? selectCategory,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements EditRecordEvent {
  const factory _SelectCategory(final RecordCategory category) =
      _$_SelectCategory;

  RecordCategory get category;
  @JsonKey(ignore: true)
  _$$_SelectCategoryCopyWith<_$_SelectCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditRecordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)
        dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)?
        dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)?
        dataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRecordStateCopyWith<$Res> {
  factory $EditRecordStateCopyWith(
          EditRecordState value, $Res Function(EditRecordState) then) =
      _$EditRecordStateCopyWithImpl<$Res, EditRecordState>;
}

/// @nodoc
class _$EditRecordStateCopyWithImpl<$Res, $Val extends EditRecordState>
    implements $EditRecordStateCopyWith<$Res> {
  _$EditRecordStateCopyWithImpl(this._value, this._then);

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
    extends _$EditRecordStateCopyWithImpl<$Res, _$_Pending>
    implements _$$_PendingCopyWith<$Res> {
  __$$_PendingCopyWithImpl(_$_Pending _value, $Res Function(_$_Pending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Pending implements _Pending {
  const _$_Pending();

  @override
  String toString() {
    return 'EditRecordState.pending()';
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
    required TResult Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)
        dataReceived,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)?
        dataReceived,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)?
        dataReceived,
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
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements EditRecordState {
  const factory _Pending() = _$_Pending;
}

/// @nodoc
abstract class _$$_DataReceivedCopyWith<$Res> {
  factory _$$_DataReceivedCopyWith(
          _$_DataReceived value, $Res Function(_$_DataReceived) then) =
      __$$_DataReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RecordCategory> categoties,
      List<RecordCategory> selectedCategoties});
}

/// @nodoc
class __$$_DataReceivedCopyWithImpl<$Res>
    extends _$EditRecordStateCopyWithImpl<$Res, _$_DataReceived>
    implements _$$_DataReceivedCopyWith<$Res> {
  __$$_DataReceivedCopyWithImpl(
      _$_DataReceived _value, $Res Function(_$_DataReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoties = null,
    Object? selectedCategoties = null,
  }) {
    return _then(_$_DataReceived(
      null == categoties
          ? _value._categoties
          : categoties // ignore: cast_nullable_to_non_nullable
              as List<RecordCategory>,
      null == selectedCategoties
          ? _value._selectedCategoties
          : selectedCategoties // ignore: cast_nullable_to_non_nullable
              as List<RecordCategory>,
    ));
  }
}

/// @nodoc

class _$_DataReceived implements _DataReceived {
  const _$_DataReceived(final List<RecordCategory> categoties,
      final List<RecordCategory> selectedCategoties)
      : _categoties = categoties,
        _selectedCategoties = selectedCategoties;

  final List<RecordCategory> _categoties;
  @override
  List<RecordCategory> get categoties {
    if (_categoties is EqualUnmodifiableListView) return _categoties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoties);
  }

  final List<RecordCategory> _selectedCategoties;
  @override
  List<RecordCategory> get selectedCategoties {
    if (_selectedCategoties is EqualUnmodifiableListView)
      return _selectedCategoties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategoties);
  }

  @override
  String toString() {
    return 'EditRecordState.dataReceived(categoties: $categoties, selectedCategoties: $selectedCategoties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataReceived &&
            const DeepCollectionEquality()
                .equals(other._categoties, _categoties) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategoties, _selectedCategoties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoties),
      const DeepCollectionEquality().hash(_selectedCategoties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataReceivedCopyWith<_$_DataReceived> get copyWith =>
      __$$_DataReceivedCopyWithImpl<_$_DataReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)
        dataReceived,
  }) {
    return dataReceived(categoties, selectedCategoties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)?
        dataReceived,
  }) {
    return dataReceived?.call(categoties, selectedCategoties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<RecordCategory> categoties,
            List<RecordCategory> selectedCategoties)?
        dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(categoties, selectedCategoties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_DataReceived value) dataReceived,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_DataReceived value)? dataReceived,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_DataReceived value)? dataReceived,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _DataReceived implements EditRecordState {
  const factory _DataReceived(final List<RecordCategory> categoties,
      final List<RecordCategory> selectedCategoties) = _$_DataReceived;

  List<RecordCategory> get categoties;
  List<RecordCategory> get selectedCategoties;
  @JsonKey(ignore: true)
  _$$_DataReceivedCopyWith<_$_DataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}