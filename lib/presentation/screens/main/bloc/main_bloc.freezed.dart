// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAuthorized, bool isPending, List<Presentation> presentations)
        screenState,
    required TResult Function() initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, bool isPending,
            List<Presentation> presentations)?
        screenState,
    TResult? Function()? initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, bool isPending,
            List<Presentation> presentations)?
        screenState,
    TResult Function()? initialLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

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
      {bool isAuthorized, bool isPending, List<Presentation> presentations});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthorized = null,
    Object? isPending = null,
    Object? presentations = null,
  }) {
    return _then(_$_ScreenState(
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
      presentations: null == presentations
          ? _value._presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<Presentation>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState(
      {required this.isAuthorized,
      this.isPending = false,
      required final List<Presentation> presentations})
      : _presentations = presentations;

  @override
  final bool isAuthorized;
  @override
  @JsonKey()
  final bool isPending;
  final List<Presentation> _presentations;
  @override
  List<Presentation> get presentations {
    if (_presentations is EqualUnmodifiableListView) return _presentations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_presentations);
  }

  @override
  String toString() {
    return 'MainState.screenState(isAuthorized: $isAuthorized, isPending: $isPending, presentations: $presentations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            (identical(other.isAuthorized, isAuthorized) ||
                other.isAuthorized == isAuthorized) &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending) &&
            const DeepCollectionEquality()
                .equals(other._presentations, _presentations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthorized, isPending,
      const DeepCollectionEquality().hash(_presentations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAuthorized, bool isPending, List<Presentation> presentations)
        screenState,
    required TResult Function() initialLoadingError,
  }) {
    return screenState(isAuthorized, isPending, presentations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, bool isPending,
            List<Presentation> presentations)?
        screenState,
    TResult? Function()? initialLoadingError,
  }) {
    return screenState?.call(isAuthorized, isPending, presentations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, bool isPending,
            List<Presentation> presentations)?
        screenState,
    TResult Function()? initialLoadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(isAuthorized, isPending, presentations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements MainState {
  const factory _ScreenState(
      {required final bool isAuthorized,
      final bool isPending,
      required final List<Presentation> presentations}) = _$_ScreenState;

  bool get isAuthorized;
  bool get isPending;
  List<Presentation> get presentations;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateInitialLoadingErrorCopyWith<$Res> {
  factory _$$_StateInitialLoadingErrorCopyWith(
          _$_StateInitialLoadingError value,
          $Res Function(_$_StateInitialLoadingError) then) =
      __$$_StateInitialLoadingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateInitialLoadingErrorCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_StateInitialLoadingError>
    implements _$$_StateInitialLoadingErrorCopyWith<$Res> {
  __$$_StateInitialLoadingErrorCopyWithImpl(_$_StateInitialLoadingError _value,
      $Res Function(_$_StateInitialLoadingError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateInitialLoadingError implements _StateInitialLoadingError {
  const _$_StateInitialLoadingError();

  @override
  String toString() {
    return 'MainState.initialLoadingError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateInitialLoadingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isAuthorized, bool isPending, List<Presentation> presentations)
        screenState,
    required TResult Function() initialLoadingError,
  }) {
    return initialLoadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, bool isPending,
            List<Presentation> presentations)?
        screenState,
    TResult? Function()? initialLoadingError,
  }) {
    return initialLoadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, bool isPending,
            List<Presentation> presentations)?
        screenState,
    TResult Function()? initialLoadingError,
    required TResult orElse(),
  }) {
    if (initialLoadingError != null) {
      return initialLoadingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) {
    return initialLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) {
    return initialLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (initialLoadingError != null) {
      return initialLoadingError(this);
    }
    return orElse();
  }
}

abstract class _StateInitialLoadingError implements MainState {
  const factory _StateInitialLoadingError() = _$_StateInitialLoadingError;
}

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchText) initialDataRequested,
    required TResult Function() reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchText)? initialDataRequested,
    TResult? Function()? reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchText)? initialDataRequested,
    TResult Function()? reloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String? searchText});
}

/// @nodoc
class __$$_EventInitialDataRequestedCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_EventInitialDataRequested>
    implements _$$_EventInitialDataRequestedCopyWith<$Res> {
  __$$_EventInitialDataRequestedCopyWithImpl(
      _$_EventInitialDataRequested _value,
      $Res Function(_$_EventInitialDataRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = freezed,
  }) {
    return _then(_$_EventInitialDataRequested(
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EventInitialDataRequested implements _EventInitialDataRequested {
  const _$_EventInitialDataRequested({this.searchText});

  @override
  final String? searchText;

  @override
  String toString() {
    return 'MainEvent.initialDataRequested(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventInitialDataRequested &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventInitialDataRequestedCopyWith<_$_EventInitialDataRequested>
      get copyWith => __$$_EventInitialDataRequestedCopyWithImpl<
          _$_EventInitialDataRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchText) initialDataRequested,
    required TResult Function() reloadData,
  }) {
    return initialDataRequested(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchText)? initialDataRequested,
    TResult? Function()? reloadData,
  }) {
    return initialDataRequested?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchText)? initialDataRequested,
    TResult Function()? reloadData,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements MainEvent {
  const factory _EventInitialDataRequested({final String? searchText}) =
      _$_EventInitialDataRequested;

  String? get searchText;
  @JsonKey(ignore: true)
  _$$_EventInitialDataRequestedCopyWith<_$_EventInitialDataRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventReloadDataCopyWith<$Res> {
  factory _$$_EventReloadDataCopyWith(
          _$_EventReloadData value, $Res Function(_$_EventReloadData) then) =
      __$$_EventReloadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventReloadDataCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_EventReloadData>
    implements _$$_EventReloadDataCopyWith<$Res> {
  __$$_EventReloadDataCopyWithImpl(
      _$_EventReloadData _value, $Res Function(_$_EventReloadData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventReloadData implements _EventReloadData {
  const _$_EventReloadData();

  @override
  String toString() {
    return 'MainEvent.reloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventReloadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? searchText) initialDataRequested,
    required TResult Function() reloadData,
  }) {
    return reloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? searchText)? initialDataRequested,
    TResult? Function()? reloadData,
  }) {
    return reloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? searchText)? initialDataRequested,
    TResult Function()? reloadData,
    required TResult orElse(),
  }) {
    if (reloadData != null) {
      return reloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
  }) {
    return reloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
  }) {
    return reloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    required TResult orElse(),
  }) {
    if (reloadData != null) {
      return reloadData(this);
    }
    return orElse();
  }
}

abstract class _EventReloadData implements MainEvent {
  const factory _EventReloadData() = _$_EventReloadData;
}
