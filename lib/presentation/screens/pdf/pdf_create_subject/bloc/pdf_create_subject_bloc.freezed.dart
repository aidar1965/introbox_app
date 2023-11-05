// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_create_subject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfCreateSubjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pdfFilePath) convertPdf,
    required TResult Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)
        savePdfSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pdfFilePath)? convertPdf,
    TResult? Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)?
        savePdfSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pdfFilePath)? convertPdf,
    TResult Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)?
        savePdfSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventSavePdfSubject value) savePdfSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventSavePdfSubject value)? savePdfSubject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventSavePdfSubject value)? savePdfSubject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCreateSubjectEventCopyWith<$Res> {
  factory $PdfCreateSubjectEventCopyWith(PdfCreateSubjectEvent value,
          $Res Function(PdfCreateSubjectEvent) then) =
      _$PdfCreateSubjectEventCopyWithImpl<$Res, PdfCreateSubjectEvent>;
}

/// @nodoc
class _$PdfCreateSubjectEventCopyWithImpl<$Res,
        $Val extends PdfCreateSubjectEvent>
    implements $PdfCreateSubjectEventCopyWith<$Res> {
  _$PdfCreateSubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventConvertFileCopyWith<$Res> {
  factory _$$_EventConvertFileCopyWith(
          _$_EventConvertFile value, $Res Function(_$_EventConvertFile) then) =
      __$$_EventConvertFileCopyWithImpl<$Res>;
  @useResult
  $Res call({String pdfFilePath});
}

/// @nodoc
class __$$_EventConvertFileCopyWithImpl<$Res>
    extends _$PdfCreateSubjectEventCopyWithImpl<$Res, _$_EventConvertFile>
    implements _$$_EventConvertFileCopyWith<$Res> {
  __$$_EventConvertFileCopyWithImpl(
      _$_EventConvertFile _value, $Res Function(_$_EventConvertFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFilePath = null,
  }) {
    return _then(_$_EventConvertFile(
      pdfFilePath: null == pdfFilePath
          ? _value.pdfFilePath
          : pdfFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventConvertFile implements _EventConvertFile {
  const _$_EventConvertFile({required this.pdfFilePath});

  @override
  final String pdfFilePath;

  @override
  String toString() {
    return 'PdfCreateSubjectEvent.convertPdf(pdfFilePath: $pdfFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventConvertFile &&
            (identical(other.pdfFilePath, pdfFilePath) ||
                other.pdfFilePath == pdfFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pdfFilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventConvertFileCopyWith<_$_EventConvertFile> get copyWith =>
      __$$_EventConvertFileCopyWithImpl<_$_EventConvertFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pdfFilePath) convertPdf,
    required TResult Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)
        savePdfSubject,
  }) {
    return convertPdf(pdfFilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pdfFilePath)? convertPdf,
    TResult? Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)?
        savePdfSubject,
  }) {
    return convertPdf?.call(pdfFilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pdfFilePath)? convertPdf,
    TResult Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)?
        savePdfSubject,
    required TResult orElse(),
  }) {
    if (convertPdf != null) {
      return convertPdf(pdfFilePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventSavePdfSubject value) savePdfSubject,
  }) {
    return convertPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventSavePdfSubject value)? savePdfSubject,
  }) {
    return convertPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventSavePdfSubject value)? savePdfSubject,
    required TResult orElse(),
  }) {
    if (convertPdf != null) {
      return convertPdf(this);
    }
    return orElse();
  }
}

abstract class _EventConvertFile implements PdfCreateSubjectEvent {
  const factory _EventConvertFile({required final String pdfFilePath}) =
      _$_EventConvertFile;

  String get pdfFilePath;
  @JsonKey(ignore: true)
  _$$_EventConvertFileCopyWith<_$_EventConvertFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSavePdfSubjectCopyWith<$Res> {
  factory _$$_EventSavePdfSubjectCopyWith(_$_EventSavePdfSubject value,
          $Res Function(_$_EventSavePdfSubject) then) =
      __$$_EventSavePdfSubjectCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String pdfFile,
      String? description,
      List<PdfFragment> pdfFragmentList});
}

/// @nodoc
class __$$_EventSavePdfSubjectCopyWithImpl<$Res>
    extends _$PdfCreateSubjectEventCopyWithImpl<$Res, _$_EventSavePdfSubject>
    implements _$$_EventSavePdfSubjectCopyWith<$Res> {
  __$$_EventSavePdfSubjectCopyWithImpl(_$_EventSavePdfSubject _value,
      $Res Function(_$_EventSavePdfSubject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? pdfFile = null,
    Object? description = freezed,
    Object? pdfFragmentList = null,
  }) {
    return _then(_$_EventSavePdfSubject(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pdfFile: null == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfFragmentList: null == pdfFragmentList
          ? _value._pdfFragmentList
          : pdfFragmentList // ignore: cast_nullable_to_non_nullable
              as List<PdfFragment>,
    ));
  }
}

/// @nodoc

class _$_EventSavePdfSubject implements _EventSavePdfSubject {
  const _$_EventSavePdfSubject(
      {required this.title,
      required this.pdfFile,
      this.description,
      required final List<PdfFragment> pdfFragmentList})
      : _pdfFragmentList = pdfFragmentList;

  @override
  final String title;
  @override
  final String pdfFile;
  @override
  final String? description;
  final List<PdfFragment> _pdfFragmentList;
  @override
  List<PdfFragment> get pdfFragmentList {
    if (_pdfFragmentList is EqualUnmodifiableListView) return _pdfFragmentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pdfFragmentList);
  }

  @override
  String toString() {
    return 'PdfCreateSubjectEvent.savePdfSubject(title: $title, pdfFile: $pdfFile, description: $description, pdfFragmentList: $pdfFragmentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSavePdfSubject &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pdfFile, pdfFile) || other.pdfFile == pdfFile) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._pdfFragmentList, _pdfFragmentList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, pdfFile, description,
      const DeepCollectionEquality().hash(_pdfFragmentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSavePdfSubjectCopyWith<_$_EventSavePdfSubject> get copyWith =>
      __$$_EventSavePdfSubjectCopyWithImpl<_$_EventSavePdfSubject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pdfFilePath) convertPdf,
    required TResult Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)
        savePdfSubject,
  }) {
    return savePdfSubject(title, pdfFile, description, pdfFragmentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pdfFilePath)? convertPdf,
    TResult? Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)?
        savePdfSubject,
  }) {
    return savePdfSubject?.call(title, pdfFile, description, pdfFragmentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pdfFilePath)? convertPdf,
    TResult Function(String title, String pdfFile, String? description,
            List<PdfFragment> pdfFragmentList)?
        savePdfSubject,
    required TResult orElse(),
  }) {
    if (savePdfSubject != null) {
      return savePdfSubject(title, pdfFile, description, pdfFragmentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventSavePdfSubject value) savePdfSubject,
  }) {
    return savePdfSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventSavePdfSubject value)? savePdfSubject,
  }) {
    return savePdfSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventSavePdfSubject value)? savePdfSubject,
    required TResult orElse(),
  }) {
    if (savePdfSubject != null) {
      return savePdfSubject(this);
    }
    return orElse();
  }
}

abstract class _EventSavePdfSubject implements PdfCreateSubjectEvent {
  const factory _EventSavePdfSubject(
          {required final String title,
          required final String pdfFile,
          final String? description,
          required final List<PdfFragment> pdfFragmentList}) =
      _$_EventSavePdfSubject;

  String get title;
  String get pdfFile;
  String? get description;
  List<PdfFragment> get pdfFragmentList;
  @JsonKey(ignore: true)
  _$$_EventSavePdfSubjectCopyWith<_$_EventSavePdfSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PdfCreateSubjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCreateSubjectStateCopyWith<$Res> {
  factory $PdfCreateSubjectStateCopyWith(PdfCreateSubjectState value,
          $Res Function(PdfCreateSubjectState) then) =
      _$PdfCreateSubjectStateCopyWithImpl<$Res, PdfCreateSubjectState>;
}

/// @nodoc
class _$PdfCreateSubjectStateCopyWithImpl<$Res,
        $Val extends PdfCreateSubjectState>
    implements $PdfCreateSubjectStateCopyWith<$Res> {
  _$PdfCreateSubjectStateCopyWithImpl(this._value, this._then);

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
      {List<PdfFragment>? pdfFragmentList,
      Iterable<String>? audioPathList,
      bool isPending});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PdfCreateSubjectStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFragmentList = freezed,
    Object? audioPathList = freezed,
    Object? isPending = null,
  }) {
    return _then(_$_ScreenState(
      pdfFragmentList: freezed == pdfFragmentList
          ? _value._pdfFragmentList
          : pdfFragmentList // ignore: cast_nullable_to_non_nullable
              as List<PdfFragment>?,
      audioPathList: freezed == audioPathList
          ? _value.audioPathList
          : audioPathList // ignore: cast_nullable_to_non_nullable
              as Iterable<String>?,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState(
      {final List<PdfFragment>? pdfFragmentList,
      this.audioPathList,
      this.isPending = false})
      : _pdfFragmentList = pdfFragmentList;

  final List<PdfFragment>? _pdfFragmentList;
  @override
  List<PdfFragment>? get pdfFragmentList {
    final value = _pdfFragmentList;
    if (value == null) return null;
    if (_pdfFragmentList is EqualUnmodifiableListView) return _pdfFragmentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Iterable<String>? audioPathList;
  @override
  @JsonKey()
  final bool isPending;

  @override
  String toString() {
    return 'PdfCreateSubjectState.screenState(pdfFragmentList: $pdfFragmentList, audioPathList: $audioPathList, isPending: $isPending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality()
                .equals(other._pdfFragmentList, _pdfFragmentList) &&
            const DeepCollectionEquality()
                .equals(other.audioPathList, audioPathList) &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pdfFragmentList),
      const DeepCollectionEquality().hash(audioPathList),
      isPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return screenState(pdfFragmentList, audioPathList, isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return screenState?.call(pdfFragmentList, audioPathList, isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(pdfFragmentList, audioPathList, isPending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements PdfCreateSubjectState {
  const factory _ScreenState(
      {final List<PdfFragment>? pdfFragmentList,
      final Iterable<String>? audioPathList,
      final bool isPending}) = _$_ScreenState;

  List<PdfFragment>? get pdfFragmentList;
  Iterable<String>? get audioPathList;
  bool get isPending;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateSaveSuccessCopyWith<$Res> {
  factory _$$_StateSaveSuccessCopyWith(
          _$_StateSaveSuccess value, $Res Function(_$_StateSaveSuccess) then) =
      __$$_StateSaveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateSaveSuccessCopyWithImpl<$Res>
    extends _$PdfCreateSubjectStateCopyWithImpl<$Res, _$_StateSaveSuccess>
    implements _$$_StateSaveSuccessCopyWith<$Res> {
  __$$_StateSaveSuccessCopyWithImpl(
      _$_StateSaveSuccess _value, $Res Function(_$_StateSaveSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateSaveSuccess implements _StateSaveSuccess {
  const _$_StateSaveSuccess();

  @override
  String toString() {
    return 'PdfCreateSubjectState.saveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateSaveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return saveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return saveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateSaveSuccess implements PdfCreateSubjectState {
  const factory _StateSaveSuccess() = _$_StateSaveSuccess;
}

/// @nodoc
abstract class _$$_StateSaveErrorCopyWith<$Res> {
  factory _$$_StateSaveErrorCopyWith(
          _$_StateSaveError value, $Res Function(_$_StateSaveError) then) =
      __$$_StateSaveErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateSaveErrorCopyWithImpl<$Res>
    extends _$PdfCreateSubjectStateCopyWithImpl<$Res, _$_StateSaveError>
    implements _$$_StateSaveErrorCopyWith<$Res> {
  __$$_StateSaveErrorCopyWithImpl(
      _$_StateSaveError _value, $Res Function(_$_StateSaveError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateSaveError implements _StateSaveError {
  const _$_StateSaveError();

  @override
  String toString() {
    return 'PdfCreateSubjectState.saveError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateSaveError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return saveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return saveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragment>? pdfFragmentList,
            Iterable<String>? audioPathList, bool isPending)?
        screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class _StateSaveError implements PdfCreateSubjectState {
  const factory _StateSaveError() = _$_StateSaveError;
}
