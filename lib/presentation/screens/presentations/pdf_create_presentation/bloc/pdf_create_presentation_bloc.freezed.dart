// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_create_presentation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfCreatePresentationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
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
abstract class $PdfCreatePresentationStateCopyWith<$Res> {
  factory $PdfCreatePresentationStateCopyWith(PdfCreatePresentationState value,
          $Res Function(PdfCreatePresentationState) then) =
      _$PdfCreatePresentationStateCopyWithImpl<$Res,
          PdfCreatePresentationState>;
}

/// @nodoc
class _$PdfCreatePresentationStateCopyWithImpl<$Res,
        $Val extends PdfCreatePresentationState>
    implements $PdfCreatePresentationStateCopyWith<$Res> {
  _$PdfCreatePresentationStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<PdfFragmentSample>? pdfFragmentList, bool isPending});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PdfCreatePresentationStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFragmentList = freezed,
    Object? isPending = null,
  }) {
    return _then(_$_ScreenState(
      pdfFragmentList: freezed == pdfFragmentList
          ? _value._pdfFragmentList
          : pdfFragmentList // ignore: cast_nullable_to_non_nullable
              as List<PdfFragmentSample>?,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState with DiagnosticableTreeMixin implements _ScreenState {
  const _$_ScreenState(
      {final List<PdfFragmentSample>? pdfFragmentList, this.isPending = false})
      : _pdfFragmentList = pdfFragmentList;

  final List<PdfFragmentSample>? _pdfFragmentList;
  @override
  List<PdfFragmentSample>? get pdfFragmentList {
    final value = _pdfFragmentList;
    if (value == null) return null;
    if (_pdfFragmentList is EqualUnmodifiableListView) return _pdfFragmentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isPending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationState.screenState(pdfFragmentList: $pdfFragmentList, isPending: $isPending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PdfCreatePresentationState.screenState'))
      ..add(DiagnosticsProperty('pdfFragmentList', pdfFragmentList))
      ..add(DiagnosticsProperty('isPending', isPending));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality()
                .equals(other._pdfFragmentList, _pdfFragmentList) &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_pdfFragmentList), isPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return screenState(pdfFragmentList, isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return screenState?.call(pdfFragmentList, isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
        screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(pdfFragmentList, isPending);
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

abstract class _ScreenState implements PdfCreatePresentationState {
  const factory _ScreenState(
      {final List<PdfFragmentSample>? pdfFragmentList,
      final bool isPending}) = _$_ScreenState;

  List<PdfFragmentSample>? get pdfFragmentList;
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
    extends _$PdfCreatePresentationStateCopyWithImpl<$Res, _$_StateSaveSuccess>
    implements _$$_StateSaveSuccessCopyWith<$Res> {
  __$$_StateSaveSuccessCopyWithImpl(
      _$_StateSaveSuccess _value, $Res Function(_$_StateSaveSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateSaveSuccess
    with DiagnosticableTreeMixin
    implements _StateSaveSuccess {
  const _$_StateSaveSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationState.saveSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PdfCreatePresentationState.saveSuccess'));
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
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return saveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return saveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
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

abstract class _StateSaveSuccess implements PdfCreatePresentationState {
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
    extends _$PdfCreatePresentationStateCopyWithImpl<$Res, _$_StateSaveError>
    implements _$$_StateSaveErrorCopyWith<$Res> {
  __$$_StateSaveErrorCopyWithImpl(
      _$_StateSaveError _value, $Res Function(_$_StateSaveError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateSaveError
    with DiagnosticableTreeMixin
    implements _StateSaveError {
  const _$_StateSaveError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationState.saveError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PdfCreatePresentationState.saveError'));
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
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList, bool isPending)
        screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return saveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
        screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return saveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PdfFragmentSample>? pdfFragmentList, bool isPending)?
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

abstract class _StateSaveError implements PdfCreatePresentationState {
  const factory _StateSaveError() = _$_StateSaveError;
}

/// @nodoc
mixin _$PdfCreatePresentationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pdfFilePath) convertPdf,
    required TResult Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pdfFilePath)? convertPdf,
    TResult? Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pdfFilePath)? convertPdf,
    TResult Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventSavePdfPresentation value)? savePdfPresentation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCreatePresentationEventCopyWith<$Res> {
  factory $PdfCreatePresentationEventCopyWith(PdfCreatePresentationEvent value,
          $Res Function(PdfCreatePresentationEvent) then) =
      _$PdfCreatePresentationEventCopyWithImpl<$Res,
          PdfCreatePresentationEvent>;
}

/// @nodoc
class _$PdfCreatePresentationEventCopyWithImpl<$Res,
        $Val extends PdfCreatePresentationEvent>
    implements $PdfCreatePresentationEventCopyWith<$Res> {
  _$PdfCreatePresentationEventCopyWithImpl(this._value, this._then);

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
    extends _$PdfCreatePresentationEventCopyWithImpl<$Res, _$_EventConvertFile>
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

class _$_EventConvertFile
    with DiagnosticableTreeMixin
    implements _EventConvertFile {
  const _$_EventConvertFile({required this.pdfFilePath});

  @override
  final String pdfFilePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationEvent.convertPdf(pdfFilePath: $pdfFilePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PdfCreatePresentationEvent.convertPdf'))
      ..add(DiagnosticsProperty('pdfFilePath', pdfFilePath));
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
    required TResult Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return convertPdf(pdfFilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pdfFilePath)? convertPdf,
    TResult? Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return convertPdf?.call(pdfFilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pdfFilePath)? convertPdf,
    TResult Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
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
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return convertPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return convertPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventSavePdfPresentation value)? savePdfPresentation,
    required TResult orElse(),
  }) {
    if (convertPdf != null) {
      return convertPdf(this);
    }
    return orElse();
  }
}

abstract class _EventConvertFile implements PdfCreatePresentationEvent {
  const factory _EventConvertFile({required final String pdfFilePath}) =
      _$_EventConvertFile;

  String get pdfFilePath;
  @JsonKey(ignore: true)
  _$$_EventConvertFileCopyWith<_$_EventConvertFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSavePdfPresentationCopyWith<$Res> {
  factory _$$_EventSavePdfPresentationCopyWith(
          _$_EventSavePdfPresentation value,
          $Res Function(_$_EventSavePdfPresentation) then) =
      __$$_EventSavePdfPresentationCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String pdfFile,
      String description,
      bool isAudio,
      List<PdfFragmentSample> pdfFragmentList});
}

/// @nodoc
class __$$_EventSavePdfPresentationCopyWithImpl<$Res>
    extends _$PdfCreatePresentationEventCopyWithImpl<$Res,
        _$_EventSavePdfPresentation>
    implements _$$_EventSavePdfPresentationCopyWith<$Res> {
  __$$_EventSavePdfPresentationCopyWithImpl(_$_EventSavePdfPresentation _value,
      $Res Function(_$_EventSavePdfPresentation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? pdfFile = null,
    Object? description = null,
    Object? isAudio = null,
    Object? pdfFragmentList = null,
  }) {
    return _then(_$_EventSavePdfPresentation(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pdfFile: null == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAudio: null == isAudio
          ? _value.isAudio
          : isAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      pdfFragmentList: null == pdfFragmentList
          ? _value._pdfFragmentList
          : pdfFragmentList // ignore: cast_nullable_to_non_nullable
              as List<PdfFragmentSample>,
    ));
  }
}

/// @nodoc

class _$_EventSavePdfPresentation
    with DiagnosticableTreeMixin
    implements _EventSavePdfPresentation {
  const _$_EventSavePdfPresentation(
      {required this.title,
      required this.pdfFile,
      required this.description,
      required this.isAudio,
      required final List<PdfFragmentSample> pdfFragmentList})
      : _pdfFragmentList = pdfFragmentList;

  @override
  final String title;
  @override
  final String pdfFile;
  @override
  final String description;
  @override
  final bool isAudio;
  final List<PdfFragmentSample> _pdfFragmentList;
  @override
  List<PdfFragmentSample> get pdfFragmentList {
    if (_pdfFragmentList is EqualUnmodifiableListView) return _pdfFragmentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pdfFragmentList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationEvent.savePdfPresentation(title: $title, pdfFile: $pdfFile, description: $description, isAudio: $isAudio, pdfFragmentList: $pdfFragmentList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PdfCreatePresentationEvent.savePdfPresentation'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('pdfFile', pdfFile))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isAudio', isAudio))
      ..add(DiagnosticsProperty('pdfFragmentList', pdfFragmentList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSavePdfPresentation &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pdfFile, pdfFile) || other.pdfFile == pdfFile) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isAudio, isAudio) || other.isAudio == isAudio) &&
            const DeepCollectionEquality()
                .equals(other._pdfFragmentList, _pdfFragmentList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, pdfFile, description,
      isAudio, const DeepCollectionEquality().hash(_pdfFragmentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSavePdfPresentationCopyWith<_$_EventSavePdfPresentation>
      get copyWith => __$$_EventSavePdfPresentationCopyWithImpl<
          _$_EventSavePdfPresentation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pdfFilePath) convertPdf,
    required TResult Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return savePdfPresentation(
        title, pdfFile, description, isAudio, pdfFragmentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pdfFilePath)? convertPdf,
    TResult? Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return savePdfPresentation?.call(
        title, pdfFile, description, isAudio, pdfFragmentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pdfFilePath)? convertPdf,
    TResult Function(String title, String pdfFile, String description,
            bool isAudio, List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) {
    if (savePdfPresentation != null) {
      return savePdfPresentation(
          title, pdfFile, description, isAudio, pdfFragmentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return savePdfPresentation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return savePdfPresentation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventSavePdfPresentation value)? savePdfPresentation,
    required TResult orElse(),
  }) {
    if (savePdfPresentation != null) {
      return savePdfPresentation(this);
    }
    return orElse();
  }
}

abstract class _EventSavePdfPresentation implements PdfCreatePresentationEvent {
  const factory _EventSavePdfPresentation(
          {required final String title,
          required final String pdfFile,
          required final String description,
          required final bool isAudio,
          required final List<PdfFragmentSample> pdfFragmentList}) =
      _$_EventSavePdfPresentation;

  String get title;
  String get pdfFile;
  String get description;
  bool get isAudio;
  List<PdfFragmentSample> get pdfFragmentList;
  @JsonKey(ignore: true)
  _$$_EventSavePdfPresentationCopyWith<_$_EventSavePdfPresentation>
      get copyWith => throw _privateConstructorUsedError;
}
