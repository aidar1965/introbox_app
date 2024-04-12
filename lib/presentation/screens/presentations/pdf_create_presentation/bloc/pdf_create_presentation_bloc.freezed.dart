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
    required TResult Function() pending,
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)
        screenState,
    required TResult Function(int currentSlide, int totalSlides) savingProcess,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
    required TResult Function() initialDataNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult? Function(int currentSlide, int totalSlides)? savingProcess,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
    TResult? Function()? initialDataNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult Function(int currentSlide, int totalSlides)? savingProcess,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    TResult Function()? initialDataNotLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSavingProcess value) savingProcess,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
    required TResult Function(_StateInitialDataNotLoaded value)
        initialDataNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSavingProcess value)? savingProcess,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
    TResult? Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSavingProcess value)? savingProcess,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    TResult Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
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
abstract class _$$_StatePendingCopyWith<$Res> {
  factory _$$_StatePendingCopyWith(
          _$_StatePending value, $Res Function(_$_StatePending) then) =
      __$$_StatePendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatePendingCopyWithImpl<$Res>
    extends _$PdfCreatePresentationStateCopyWithImpl<$Res, _$_StatePending>
    implements _$$_StatePendingCopyWith<$Res> {
  __$$_StatePendingCopyWithImpl(
      _$_StatePending _value, $Res Function(_$_StatePending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StatePending with DiagnosticableTreeMixin implements _StatePending {
  const _$_StatePending();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationState.pending()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PdfCreatePresentationState.pending'));
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
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)
        screenState,
    required TResult Function(int currentSlide, int totalSlides) savingProcess,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
    required TResult Function() initialDataNotLoaded,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult? Function(int currentSlide, int totalSlides)? savingProcess,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
    TResult? Function()? initialDataNotLoaded,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult Function(int currentSlide, int totalSlides)? savingProcess,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    TResult Function()? initialDataNotLoaded,
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
    required TResult Function(_StateSavingProcess value) savingProcess,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
    required TResult Function(_StateInitialDataNotLoaded value)
        initialDataNotLoaded,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSavingProcess value)? savingProcess,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
    TResult? Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSavingProcess value)? savingProcess,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    TResult Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements PdfCreatePresentationState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PdfFragmentSample>? pdfFragmentList,
      List<Channel> channels,
      Channel selectedChanel,
      bool isPending,
      int? countFileGenerated,
      List<PresentationLink>? links});
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
    Object? channels = null,
    Object? selectedChanel = null,
    Object? isPending = null,
    Object? countFileGenerated = freezed,
    Object? links = freezed,
  }) {
    return _then(_$_ScreenState(
      pdfFragmentList: freezed == pdfFragmentList
          ? _value._pdfFragmentList
          : pdfFragmentList // ignore: cast_nullable_to_non_nullable
              as List<PdfFragmentSample>?,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      selectedChanel: null == selectedChanel
          ? _value.selectedChanel
          : selectedChanel // ignore: cast_nullable_to_non_nullable
              as Channel,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
      countFileGenerated: freezed == countFileGenerated
          ? _value.countFileGenerated
          : countFileGenerated // ignore: cast_nullable_to_non_nullable
              as int?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PresentationLink>?,
    ));
  }
}

/// @nodoc

class _$_ScreenState with DiagnosticableTreeMixin implements _ScreenState {
  const _$_ScreenState(
      {final List<PdfFragmentSample>? pdfFragmentList,
      required final List<Channel> channels,
      required this.selectedChanel,
      this.isPending = false,
      this.countFileGenerated,
      final List<PresentationLink>? links})
      : _pdfFragmentList = pdfFragmentList,
        _channels = channels,
        _links = links;

  final List<PdfFragmentSample>? _pdfFragmentList;
  @override
  List<PdfFragmentSample>? get pdfFragmentList {
    final value = _pdfFragmentList;
    if (value == null) return null;
    if (_pdfFragmentList is EqualUnmodifiableListView) return _pdfFragmentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Channel> _channels;
  @override
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  final Channel selectedChanel;
  @override
  @JsonKey()
  final bool isPending;
  @override
  final int? countFileGenerated;
  final List<PresentationLink>? _links;
  @override
  List<PresentationLink>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationState.screenState(pdfFragmentList: $pdfFragmentList, channels: $channels, selectedChanel: $selectedChanel, isPending: $isPending, countFileGenerated: $countFileGenerated, links: $links)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PdfCreatePresentationState.screenState'))
      ..add(DiagnosticsProperty('pdfFragmentList', pdfFragmentList))
      ..add(DiagnosticsProperty('channels', channels))
      ..add(DiagnosticsProperty('selectedChanel', selectedChanel))
      ..add(DiagnosticsProperty('isPending', isPending))
      ..add(DiagnosticsProperty('countFileGenerated', countFileGenerated))
      ..add(DiagnosticsProperty('links', links));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality()
                .equals(other._pdfFragmentList, _pdfFragmentList) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.selectedChanel, selectedChanel) ||
                other.selectedChanel == selectedChanel) &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending) &&
            (identical(other.countFileGenerated, countFileGenerated) ||
                other.countFileGenerated == countFileGenerated) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pdfFragmentList),
      const DeepCollectionEquality().hash(_channels),
      selectedChanel,
      isPending,
      countFileGenerated,
      const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)
        screenState,
    required TResult Function(int currentSlide, int totalSlides) savingProcess,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
    required TResult Function() initialDataNotLoaded,
  }) {
    return screenState(pdfFragmentList, channels, selectedChanel, isPending,
        countFileGenerated, links);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult? Function(int currentSlide, int totalSlides)? savingProcess,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
    TResult? Function()? initialDataNotLoaded,
  }) {
    return screenState?.call(pdfFragmentList, channels, selectedChanel,
        isPending, countFileGenerated, links);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult Function(int currentSlide, int totalSlides)? savingProcess,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    TResult Function()? initialDataNotLoaded,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(pdfFragmentList, channels, selectedChanel, isPending,
          countFileGenerated, links);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSavingProcess value) savingProcess,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
    required TResult Function(_StateInitialDataNotLoaded value)
        initialDataNotLoaded,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSavingProcess value)? savingProcess,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
    TResult? Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSavingProcess value)? savingProcess,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    TResult Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
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
      required final List<Channel> channels,
      required final Channel selectedChanel,
      final bool isPending,
      final int? countFileGenerated,
      final List<PresentationLink>? links}) = _$_ScreenState;

  List<PdfFragmentSample>? get pdfFragmentList;
  List<Channel> get channels;
  Channel get selectedChanel;
  bool get isPending;
  int? get countFileGenerated;
  List<PresentationLink>? get links;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateSavingProcessCopyWith<$Res> {
  factory _$$_StateSavingProcessCopyWith(_$_StateSavingProcess value,
          $Res Function(_$_StateSavingProcess) then) =
      __$$_StateSavingProcessCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentSlide, int totalSlides});
}

/// @nodoc
class __$$_StateSavingProcessCopyWithImpl<$Res>
    extends _$PdfCreatePresentationStateCopyWithImpl<$Res,
        _$_StateSavingProcess> implements _$$_StateSavingProcessCopyWith<$Res> {
  __$$_StateSavingProcessCopyWithImpl(
      _$_StateSavingProcess _value, $Res Function(_$_StateSavingProcess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSlide = null,
    Object? totalSlides = null,
  }) {
    return _then(_$_StateSavingProcess(
      currentSlide: null == currentSlide
          ? _value.currentSlide
          : currentSlide // ignore: cast_nullable_to_non_nullable
              as int,
      totalSlides: null == totalSlides
          ? _value.totalSlides
          : totalSlides // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StateSavingProcess
    with DiagnosticableTreeMixin
    implements _StateSavingProcess {
  const _$_StateSavingProcess(
      {required this.currentSlide, required this.totalSlides});

  @override
  final int currentSlide;
  @override
  final int totalSlides;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationState.savingProcess(currentSlide: $currentSlide, totalSlides: $totalSlides)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PdfCreatePresentationState.savingProcess'))
      ..add(DiagnosticsProperty('currentSlide', currentSlide))
      ..add(DiagnosticsProperty('totalSlides', totalSlides));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateSavingProcess &&
            (identical(other.currentSlide, currentSlide) ||
                other.currentSlide == currentSlide) &&
            (identical(other.totalSlides, totalSlides) ||
                other.totalSlides == totalSlides));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentSlide, totalSlides);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateSavingProcessCopyWith<_$_StateSavingProcess> get copyWith =>
      __$$_StateSavingProcessCopyWithImpl<_$_StateSavingProcess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)
        screenState,
    required TResult Function(int currentSlide, int totalSlides) savingProcess,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
    required TResult Function() initialDataNotLoaded,
  }) {
    return savingProcess(currentSlide, totalSlides);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult? Function(int currentSlide, int totalSlides)? savingProcess,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
    TResult? Function()? initialDataNotLoaded,
  }) {
    return savingProcess?.call(currentSlide, totalSlides);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult Function(int currentSlide, int totalSlides)? savingProcess,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    TResult Function()? initialDataNotLoaded,
    required TResult orElse(),
  }) {
    if (savingProcess != null) {
      return savingProcess(currentSlide, totalSlides);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSavingProcess value) savingProcess,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
    required TResult Function(_StateInitialDataNotLoaded value)
        initialDataNotLoaded,
  }) {
    return savingProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSavingProcess value)? savingProcess,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
    TResult? Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
  }) {
    return savingProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSavingProcess value)? savingProcess,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    TResult Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
    required TResult orElse(),
  }) {
    if (savingProcess != null) {
      return savingProcess(this);
    }
    return orElse();
  }
}

abstract class _StateSavingProcess implements PdfCreatePresentationState {
  const factory _StateSavingProcess(
      {required final int currentSlide,
      required final int totalSlides}) = _$_StateSavingProcess;

  int get currentSlide;
  int get totalSlides;
  @JsonKey(ignore: true)
  _$$_StateSavingProcessCopyWith<_$_StateSavingProcess> get copyWith =>
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
    required TResult Function() pending,
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)
        screenState,
    required TResult Function(int currentSlide, int totalSlides) savingProcess,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
    required TResult Function() initialDataNotLoaded,
  }) {
    return saveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult? Function(int currentSlide, int totalSlides)? savingProcess,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
    TResult? Function()? initialDataNotLoaded,
  }) {
    return saveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult Function(int currentSlide, int totalSlides)? savingProcess,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    TResult Function()? initialDataNotLoaded,
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
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSavingProcess value) savingProcess,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
    required TResult Function(_StateInitialDataNotLoaded value)
        initialDataNotLoaded,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSavingProcess value)? savingProcess,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
    TResult? Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSavingProcess value)? savingProcess,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    TResult Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
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
    required TResult Function() pending,
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)
        screenState,
    required TResult Function(int currentSlide, int totalSlides) savingProcess,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
    required TResult Function() initialDataNotLoaded,
  }) {
    return saveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult? Function(int currentSlide, int totalSlides)? savingProcess,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
    TResult? Function()? initialDataNotLoaded,
  }) {
    return saveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult Function(int currentSlide, int totalSlides)? savingProcess,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    TResult Function()? initialDataNotLoaded,
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
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSavingProcess value) savingProcess,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
    required TResult Function(_StateInitialDataNotLoaded value)
        initialDataNotLoaded,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSavingProcess value)? savingProcess,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
    TResult? Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSavingProcess value)? savingProcess,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    TResult Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
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
abstract class _$$_StateInitialDataNotLoadedCopyWith<$Res> {
  factory _$$_StateInitialDataNotLoadedCopyWith(
          _$_StateInitialDataNotLoaded value,
          $Res Function(_$_StateInitialDataNotLoaded) then) =
      __$$_StateInitialDataNotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateInitialDataNotLoadedCopyWithImpl<$Res>
    extends _$PdfCreatePresentationStateCopyWithImpl<$Res,
        _$_StateInitialDataNotLoaded>
    implements _$$_StateInitialDataNotLoadedCopyWith<$Res> {
  __$$_StateInitialDataNotLoadedCopyWithImpl(
      _$_StateInitialDataNotLoaded _value,
      $Res Function(_$_StateInitialDataNotLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateInitialDataNotLoaded
    with DiagnosticableTreeMixin
    implements _StateInitialDataNotLoaded {
  const _$_StateInitialDataNotLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationState.initialDataNotLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PdfCreatePresentationState.initialDataNotLoaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateInitialDataNotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)
        screenState,
    required TResult Function(int currentSlide, int totalSlides) savingProcess,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
    required TResult Function() initialDataNotLoaded,
  }) {
    return initialDataNotLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult? Function(int currentSlide, int totalSlides)? savingProcess,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
    TResult? Function()? initialDataNotLoaded,
  }) {
    return initialDataNotLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<PdfFragmentSample>? pdfFragmentList,
            List<Channel> channels,
            Channel selectedChanel,
            bool isPending,
            int? countFileGenerated,
            List<PresentationLink>? links)?
        screenState,
    TResult Function(int currentSlide, int totalSlides)? savingProcess,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    TResult Function()? initialDataNotLoaded,
    required TResult orElse(),
  }) {
    if (initialDataNotLoaded != null) {
      return initialDataNotLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSavingProcess value) savingProcess,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
    required TResult Function(_StateInitialDataNotLoaded value)
        initialDataNotLoaded,
  }) {
    return initialDataNotLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSavingProcess value)? savingProcess,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
    TResult? Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
  }) {
    return initialDataNotLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSavingProcess value)? savingProcess,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    TResult Function(_StateInitialDataNotLoaded value)? initialDataNotLoaded,
    required TResult orElse(),
  }) {
    if (initialDataNotLoaded != null) {
      return initialDataNotLoaded(this);
    }
    return orElse();
  }
}

abstract class _StateInitialDataNotLoaded
    implements PdfCreatePresentationState {
  const factory _StateInitialDataNotLoaded() = _$_StateInitialDataNotLoaded;
}

/// @nodoc
mixin _$PdfCreatePresentationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(Channel channel) channelSelected,
    required TResult Function(Uint8List pdfFile) convertPdf,
    required TResult Function(PresentationLink link) addLink,
    required TResult Function(int index) deleteLink,
    required TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(Channel channel)? channelSelected,
    TResult? Function(Uint8List pdfFile)? convertPdf,
    TResult? Function(PresentationLink link)? addLink,
    TResult? Function(int index)? deleteLink,
    TResult? Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(Channel channel)? channelSelected,
    TResult Function(Uint8List pdfFile)? convertPdf,
    TResult Function(PresentationLink link)? addLink,
    TResult Function(int index)? deleteLink,
    TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventChannelSelected value) channelSelected,
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventAddLink value) addLink,
    required TResult Function(_EventDeleteLink value) deleteLink,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventChannelSelected value)? channelSelected,
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventAddLink value)? addLink,
    TResult? Function(_EventDeleteLink value)? deleteLink,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventChannelSelected value)? channelSelected,
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventAddLink value)? addLink,
    TResult Function(_EventDeleteLink value)? deleteLink,
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
abstract class _$$_EventInitialDataRequestedCopyWith<$Res> {
  factory _$$_EventInitialDataRequestedCopyWith(
          _$_EventInitialDataRequested value,
          $Res Function(_$_EventInitialDataRequested) then) =
      __$$_EventInitialDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventInitialDataRequestedCopyWithImpl<$Res>
    extends _$PdfCreatePresentationEventCopyWithImpl<$Res,
        _$_EventInitialDataRequested>
    implements _$$_EventInitialDataRequestedCopyWith<$Res> {
  __$$_EventInitialDataRequestedCopyWithImpl(
      _$_EventInitialDataRequested _value,
      $Res Function(_$_EventInitialDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventInitialDataRequested
    with DiagnosticableTreeMixin
    implements _EventInitialDataRequested {
  const _$_EventInitialDataRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationEvent.initialDataRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PdfCreatePresentationEvent.initialDataRequested'));
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
    required TResult Function(Channel channel) channelSelected,
    required TResult Function(Uint8List pdfFile) convertPdf,
    required TResult Function(PresentationLink link) addLink,
    required TResult Function(int index) deleteLink,
    required TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(Channel channel)? channelSelected,
    TResult? Function(Uint8List pdfFile)? convertPdf,
    TResult? Function(PresentationLink link)? addLink,
    TResult? Function(int index)? deleteLink,
    TResult? Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(Channel channel)? channelSelected,
    TResult Function(Uint8List pdfFile)? convertPdf,
    TResult Function(PresentationLink link)? addLink,
    TResult Function(int index)? deleteLink,
    TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
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
    required TResult Function(_EventChannelSelected value) channelSelected,
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventAddLink value) addLink,
    required TResult Function(_EventDeleteLink value) deleteLink,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventChannelSelected value)? channelSelected,
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventAddLink value)? addLink,
    TResult? Function(_EventDeleteLink value)? deleteLink,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventChannelSelected value)? channelSelected,
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventAddLink value)? addLink,
    TResult Function(_EventDeleteLink value)? deleteLink,
    TResult Function(_EventSavePdfPresentation value)? savePdfPresentation,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested
    implements PdfCreatePresentationEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventChannelSelectedCopyWith<$Res> {
  factory _$$_EventChannelSelectedCopyWith(_$_EventChannelSelected value,
          $Res Function(_$_EventChannelSelected) then) =
      __$$_EventChannelSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Channel channel});
}

/// @nodoc
class __$$_EventChannelSelectedCopyWithImpl<$Res>
    extends _$PdfCreatePresentationEventCopyWithImpl<$Res,
        _$_EventChannelSelected>
    implements _$$_EventChannelSelectedCopyWith<$Res> {
  __$$_EventChannelSelectedCopyWithImpl(_$_EventChannelSelected _value,
      $Res Function(_$_EventChannelSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
  }) {
    return _then(_$_EventChannelSelected(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
    ));
  }
}

/// @nodoc

class _$_EventChannelSelected
    with DiagnosticableTreeMixin
    implements _EventChannelSelected {
  const _$_EventChannelSelected({required this.channel});

  @override
  final Channel channel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationEvent.channelSelected(channel: $channel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PdfCreatePresentationEvent.channelSelected'))
      ..add(DiagnosticsProperty('channel', channel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventChannelSelected &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventChannelSelectedCopyWith<_$_EventChannelSelected> get copyWith =>
      __$$_EventChannelSelectedCopyWithImpl<_$_EventChannelSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(Channel channel) channelSelected,
    required TResult Function(Uint8List pdfFile) convertPdf,
    required TResult Function(PresentationLink link) addLink,
    required TResult Function(int index) deleteLink,
    required TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return channelSelected(channel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(Channel channel)? channelSelected,
    TResult? Function(Uint8List pdfFile)? convertPdf,
    TResult? Function(PresentationLink link)? addLink,
    TResult? Function(int index)? deleteLink,
    TResult? Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return channelSelected?.call(channel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(Channel channel)? channelSelected,
    TResult Function(Uint8List pdfFile)? convertPdf,
    TResult Function(PresentationLink link)? addLink,
    TResult Function(int index)? deleteLink,
    TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) {
    if (channelSelected != null) {
      return channelSelected(channel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventChannelSelected value) channelSelected,
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventAddLink value) addLink,
    required TResult Function(_EventDeleteLink value) deleteLink,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return channelSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventChannelSelected value)? channelSelected,
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventAddLink value)? addLink,
    TResult? Function(_EventDeleteLink value)? deleteLink,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return channelSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventChannelSelected value)? channelSelected,
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventAddLink value)? addLink,
    TResult Function(_EventDeleteLink value)? deleteLink,
    TResult Function(_EventSavePdfPresentation value)? savePdfPresentation,
    required TResult orElse(),
  }) {
    if (channelSelected != null) {
      return channelSelected(this);
    }
    return orElse();
  }
}

abstract class _EventChannelSelected implements PdfCreatePresentationEvent {
  const factory _EventChannelSelected({required final Channel channel}) =
      _$_EventChannelSelected;

  Channel get channel;
  @JsonKey(ignore: true)
  _$$_EventChannelSelectedCopyWith<_$_EventChannelSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventConvertFileCopyWith<$Res> {
  factory _$$_EventConvertFileCopyWith(
          _$_EventConvertFile value, $Res Function(_$_EventConvertFile) then) =
      __$$_EventConvertFileCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List pdfFile});
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
    Object? pdfFile = null,
  }) {
    return _then(_$_EventConvertFile(
      pdfFile: null == pdfFile
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_EventConvertFile
    with DiagnosticableTreeMixin
    implements _EventConvertFile {
  const _$_EventConvertFile({required this.pdfFile});

  @override
  final Uint8List pdfFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationEvent.convertPdf(pdfFile: $pdfFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PdfCreatePresentationEvent.convertPdf'))
      ..add(DiagnosticsProperty('pdfFile', pdfFile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventConvertFile &&
            const DeepCollectionEquality().equals(other.pdfFile, pdfFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pdfFile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventConvertFileCopyWith<_$_EventConvertFile> get copyWith =>
      __$$_EventConvertFileCopyWithImpl<_$_EventConvertFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(Channel channel) channelSelected,
    required TResult Function(Uint8List pdfFile) convertPdf,
    required TResult Function(PresentationLink link) addLink,
    required TResult Function(int index) deleteLink,
    required TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return convertPdf(pdfFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(Channel channel)? channelSelected,
    TResult? Function(Uint8List pdfFile)? convertPdf,
    TResult? Function(PresentationLink link)? addLink,
    TResult? Function(int index)? deleteLink,
    TResult? Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return convertPdf?.call(pdfFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(Channel channel)? channelSelected,
    TResult Function(Uint8List pdfFile)? convertPdf,
    TResult Function(PresentationLink link)? addLink,
    TResult Function(int index)? deleteLink,
    TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) {
    if (convertPdf != null) {
      return convertPdf(pdfFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventChannelSelected value) channelSelected,
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventAddLink value) addLink,
    required TResult Function(_EventDeleteLink value) deleteLink,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return convertPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventChannelSelected value)? channelSelected,
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventAddLink value)? addLink,
    TResult? Function(_EventDeleteLink value)? deleteLink,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return convertPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventChannelSelected value)? channelSelected,
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventAddLink value)? addLink,
    TResult Function(_EventDeleteLink value)? deleteLink,
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
  const factory _EventConvertFile({required final Uint8List pdfFile}) =
      _$_EventConvertFile;

  Uint8List get pdfFile;
  @JsonKey(ignore: true)
  _$$_EventConvertFileCopyWith<_$_EventConvertFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventAddLinkCopyWith<$Res> {
  factory _$$_EventAddLinkCopyWith(
          _$_EventAddLink value, $Res Function(_$_EventAddLink) then) =
      __$$_EventAddLinkCopyWithImpl<$Res>;
  @useResult
  $Res call({PresentationLink link});
}

/// @nodoc
class __$$_EventAddLinkCopyWithImpl<$Res>
    extends _$PdfCreatePresentationEventCopyWithImpl<$Res, _$_EventAddLink>
    implements _$$_EventAddLinkCopyWith<$Res> {
  __$$_EventAddLinkCopyWithImpl(
      _$_EventAddLink _value, $Res Function(_$_EventAddLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$_EventAddLink(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as PresentationLink,
    ));
  }
}

/// @nodoc

class _$_EventAddLink with DiagnosticableTreeMixin implements _EventAddLink {
  const _$_EventAddLink({required this.link});

  @override
  final PresentationLink link;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationEvent.addLink(link: $link)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfCreatePresentationEvent.addLink'))
      ..add(DiagnosticsProperty('link', link));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAddLink &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventAddLinkCopyWith<_$_EventAddLink> get copyWith =>
      __$$_EventAddLinkCopyWithImpl<_$_EventAddLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(Channel channel) channelSelected,
    required TResult Function(Uint8List pdfFile) convertPdf,
    required TResult Function(PresentationLink link) addLink,
    required TResult Function(int index) deleteLink,
    required TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return addLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(Channel channel)? channelSelected,
    TResult? Function(Uint8List pdfFile)? convertPdf,
    TResult? Function(PresentationLink link)? addLink,
    TResult? Function(int index)? deleteLink,
    TResult? Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return addLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(Channel channel)? channelSelected,
    TResult Function(Uint8List pdfFile)? convertPdf,
    TResult Function(PresentationLink link)? addLink,
    TResult Function(int index)? deleteLink,
    TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) {
    if (addLink != null) {
      return addLink(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventChannelSelected value) channelSelected,
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventAddLink value) addLink,
    required TResult Function(_EventDeleteLink value) deleteLink,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return addLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventChannelSelected value)? channelSelected,
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventAddLink value)? addLink,
    TResult? Function(_EventDeleteLink value)? deleteLink,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return addLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventChannelSelected value)? channelSelected,
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventAddLink value)? addLink,
    TResult Function(_EventDeleteLink value)? deleteLink,
    TResult Function(_EventSavePdfPresentation value)? savePdfPresentation,
    required TResult orElse(),
  }) {
    if (addLink != null) {
      return addLink(this);
    }
    return orElse();
  }
}

abstract class _EventAddLink implements PdfCreatePresentationEvent {
  const factory _EventAddLink({required final PresentationLink link}) =
      _$_EventAddLink;

  PresentationLink get link;
  @JsonKey(ignore: true)
  _$$_EventAddLinkCopyWith<_$_EventAddLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventDeleteLinkCopyWith<$Res> {
  factory _$$_EventDeleteLinkCopyWith(
          _$_EventDeleteLink value, $Res Function(_$_EventDeleteLink) then) =
      __$$_EventDeleteLinkCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_EventDeleteLinkCopyWithImpl<$Res>
    extends _$PdfCreatePresentationEventCopyWithImpl<$Res, _$_EventDeleteLink>
    implements _$$_EventDeleteLinkCopyWith<$Res> {
  __$$_EventDeleteLinkCopyWithImpl(
      _$_EventDeleteLink _value, $Res Function(_$_EventDeleteLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_EventDeleteLink(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventDeleteLink
    with DiagnosticableTreeMixin
    implements _EventDeleteLink {
  const _$_EventDeleteLink(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfCreatePresentationEvent.deleteLink(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PdfCreatePresentationEvent.deleteLink'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDeleteLink &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDeleteLinkCopyWith<_$_EventDeleteLink> get copyWith =>
      __$$_EventDeleteLinkCopyWithImpl<_$_EventDeleteLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(Channel channel) channelSelected,
    required TResult Function(Uint8List pdfFile) convertPdf,
    required TResult Function(PresentationLink link) addLink,
    required TResult Function(int index) deleteLink,
    required TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return deleteLink(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(Channel channel)? channelSelected,
    TResult? Function(Uint8List pdfFile)? convertPdf,
    TResult? Function(PresentationLink link)? addLink,
    TResult? Function(int index)? deleteLink,
    TResult? Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return deleteLink?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(Channel channel)? channelSelected,
    TResult Function(Uint8List pdfFile)? convertPdf,
    TResult Function(PresentationLink link)? addLink,
    TResult Function(int index)? deleteLink,
    TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) {
    if (deleteLink != null) {
      return deleteLink(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventChannelSelected value) channelSelected,
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventAddLink value) addLink,
    required TResult Function(_EventDeleteLink value) deleteLink,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return deleteLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventChannelSelected value)? channelSelected,
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventAddLink value)? addLink,
    TResult? Function(_EventDeleteLink value)? deleteLink,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return deleteLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventChannelSelected value)? channelSelected,
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventAddLink value)? addLink,
    TResult Function(_EventDeleteLink value)? deleteLink,
    TResult Function(_EventSavePdfPresentation value)? savePdfPresentation,
    required TResult orElse(),
  }) {
    if (deleteLink != null) {
      return deleteLink(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteLink implements PdfCreatePresentationEvent {
  const factory _EventDeleteLink(final int index) = _$_EventDeleteLink;

  int get index;
  @JsonKey(ignore: true)
  _$$_EventDeleteLinkCopyWith<_$_EventDeleteLink> get copyWith =>
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
      Uint8List pdfFile,
      String pdfFileName,
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
    Object? pdfFileName = null,
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
              as Uint8List,
      pdfFileName: null == pdfFileName
          ? _value.pdfFileName
          : pdfFileName // ignore: cast_nullable_to_non_nullable
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
      required this.pdfFileName,
      required this.description,
      required this.isAudio,
      required final List<PdfFragmentSample> pdfFragmentList})
      : _pdfFragmentList = pdfFragmentList;

  @override
  final String title;
  @override
  final Uint8List pdfFile;
  @override
  final String pdfFileName;
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
    return 'PdfCreatePresentationEvent.savePdfPresentation(title: $title, pdfFile: $pdfFile, pdfFileName: $pdfFileName, description: $description, isAudio: $isAudio, pdfFragmentList: $pdfFragmentList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PdfCreatePresentationEvent.savePdfPresentation'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('pdfFile', pdfFile))
      ..add(DiagnosticsProperty('pdfFileName', pdfFileName))
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
            const DeepCollectionEquality().equals(other.pdfFile, pdfFile) &&
            (identical(other.pdfFileName, pdfFileName) ||
                other.pdfFileName == pdfFileName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isAudio, isAudio) || other.isAudio == isAudio) &&
            const DeepCollectionEquality()
                .equals(other._pdfFragmentList, _pdfFragmentList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(pdfFile),
      pdfFileName,
      description,
      isAudio,
      const DeepCollectionEquality().hash(_pdfFragmentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSavePdfPresentationCopyWith<_$_EventSavePdfPresentation>
      get copyWith => __$$_EventSavePdfPresentationCopyWithImpl<
          _$_EventSavePdfPresentation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(Channel channel) channelSelected,
    required TResult Function(Uint8List pdfFile) convertPdf,
    required TResult Function(PresentationLink link) addLink,
    required TResult Function(int index) deleteLink,
    required TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)
        savePdfPresentation,
  }) {
    return savePdfPresentation(
        title, pdfFile, pdfFileName, description, isAudio, pdfFragmentList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(Channel channel)? channelSelected,
    TResult? Function(Uint8List pdfFile)? convertPdf,
    TResult? Function(PresentationLink link)? addLink,
    TResult? Function(int index)? deleteLink,
    TResult? Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
  }) {
    return savePdfPresentation?.call(
        title, pdfFile, pdfFileName, description, isAudio, pdfFragmentList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(Channel channel)? channelSelected,
    TResult Function(Uint8List pdfFile)? convertPdf,
    TResult Function(PresentationLink link)? addLink,
    TResult Function(int index)? deleteLink,
    TResult Function(
            String title,
            Uint8List pdfFile,
            String pdfFileName,
            String description,
            bool isAudio,
            List<PdfFragmentSample> pdfFragmentList)?
        savePdfPresentation,
    required TResult orElse(),
  }) {
    if (savePdfPresentation != null) {
      return savePdfPresentation(
          title, pdfFile, pdfFileName, description, isAudio, pdfFragmentList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventChannelSelected value) channelSelected,
    required TResult Function(_EventConvertFile value) convertPdf,
    required TResult Function(_EventAddLink value) addLink,
    required TResult Function(_EventDeleteLink value) deleteLink,
    required TResult Function(_EventSavePdfPresentation value)
        savePdfPresentation,
  }) {
    return savePdfPresentation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventChannelSelected value)? channelSelected,
    TResult? Function(_EventConvertFile value)? convertPdf,
    TResult? Function(_EventAddLink value)? addLink,
    TResult? Function(_EventDeleteLink value)? deleteLink,
    TResult? Function(_EventSavePdfPresentation value)? savePdfPresentation,
  }) {
    return savePdfPresentation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventChannelSelected value)? channelSelected,
    TResult Function(_EventConvertFile value)? convertPdf,
    TResult Function(_EventAddLink value)? addLink,
    TResult Function(_EventDeleteLink value)? deleteLink,
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
          required final Uint8List pdfFile,
          required final String pdfFileName,
          required final String description,
          required final bool isAudio,
          required final List<PdfFragmentSample> pdfFragmentList}) =
      _$_EventSavePdfPresentation;

  String get title;
  Uint8List get pdfFile;
  String get pdfFileName;
  String get description;
  bool get isAudio;
  List<PdfFragmentSample> get pdfFragmentList;
  @JsonKey(ignore: true)
  _$$_EventSavePdfPresentationCopyWith<_$_EventSavePdfPresentation>
      get copyWith => throw _privateConstructorUsedError;
}
