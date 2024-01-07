// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PresentationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) deletePresentation,
    required TResult Function() initialDataRequested,
    required TResult Function() reloadData,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? deletePresentation,
    TResult? Function()? initialDataRequested,
    TResult? Function()? reloadData,
    TResult? Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? deletePresentation,
    TResult Function()? initialDataRequested,
    TResult Function()? reloadData,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDeletePresentation value)
        deletePresentation,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
    required TResult Function(_EventLoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDeletePresentation value)? deletePresentation,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDeletePresentation value)? deletePresentation,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationsEventCopyWith<$Res> {
  factory $PresentationsEventCopyWith(
          PresentationsEvent value, $Res Function(PresentationsEvent) then) =
      _$PresentationsEventCopyWithImpl<$Res, PresentationsEvent>;
}

/// @nodoc
class _$PresentationsEventCopyWithImpl<$Res, $Val extends PresentationsEvent>
    implements $PresentationsEventCopyWith<$Res> {
  _$PresentationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventDeletePresentationCopyWith<$Res> {
  factory _$$_EventDeletePresentationCopyWith(_$_EventDeletePresentation value,
          $Res Function(_$_EventDeletePresentation) then) =
      __$$_EventDeletePresentationCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_EventDeletePresentationCopyWithImpl<$Res>
    extends _$PresentationsEventCopyWithImpl<$Res, _$_EventDeletePresentation>
    implements _$$_EventDeletePresentationCopyWith<$Res> {
  __$$_EventDeletePresentationCopyWithImpl(_$_EventDeletePresentation _value,
      $Res Function(_$_EventDeletePresentation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_EventDeletePresentation(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventDeletePresentation implements _EventDeletePresentation {
  const _$_EventDeletePresentation(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PresentationsEvent.deletePresentation(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDeletePresentation &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDeletePresentationCopyWith<_$_EventDeletePresentation>
      get copyWith =>
          __$$_EventDeletePresentationCopyWithImpl<_$_EventDeletePresentation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) deletePresentation,
    required TResult Function() initialDataRequested,
    required TResult Function() reloadData,
    required TResult Function() loadMore,
  }) {
    return deletePresentation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? deletePresentation,
    TResult? Function()? initialDataRequested,
    TResult? Function()? reloadData,
    TResult? Function()? loadMore,
  }) {
    return deletePresentation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? deletePresentation,
    TResult Function()? initialDataRequested,
    TResult Function()? reloadData,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (deletePresentation != null) {
      return deletePresentation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDeletePresentation value)
        deletePresentation,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
    required TResult Function(_EventLoadMore value) loadMore,
  }) {
    return deletePresentation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDeletePresentation value)? deletePresentation,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) {
    return deletePresentation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDeletePresentation value)? deletePresentation,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (deletePresentation != null) {
      return deletePresentation(this);
    }
    return orElse();
  }
}

abstract class _EventDeletePresentation implements PresentationsEvent {
  const factory _EventDeletePresentation(final int id) =
      _$_EventDeletePresentation;

  int get id;
  @JsonKey(ignore: true)
  _$$_EventDeletePresentationCopyWith<_$_EventDeletePresentation>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$PresentationsEventCopyWithImpl<$Res, _$_EventInitialDataRequested>
    implements _$$_EventInitialDataRequestedCopyWith<$Res> {
  __$$_EventInitialDataRequestedCopyWithImpl(
      _$_EventInitialDataRequested _value,
      $Res Function(_$_EventInitialDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventInitialDataRequested implements _EventInitialDataRequested {
  const _$_EventInitialDataRequested();

  @override
  String toString() {
    return 'PresentationsEvent.initialDataRequested()';
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
    required TResult Function(int id) deletePresentation,
    required TResult Function() initialDataRequested,
    required TResult Function() reloadData,
    required TResult Function() loadMore,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? deletePresentation,
    TResult? Function()? initialDataRequested,
    TResult? Function()? reloadData,
    TResult? Function()? loadMore,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? deletePresentation,
    TResult Function()? initialDataRequested,
    TResult Function()? reloadData,
    TResult Function()? loadMore,
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
    required TResult Function(_EventDeletePresentation value)
        deletePresentation,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
    required TResult Function(_EventLoadMore value) loadMore,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDeletePresentation value)? deletePresentation,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDeletePresentation value)? deletePresentation,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements PresentationsEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventReloadDataCopyWith<$Res> {
  factory _$$_EventReloadDataCopyWith(
          _$_EventReloadData value, $Res Function(_$_EventReloadData) then) =
      __$$_EventReloadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventReloadDataCopyWithImpl<$Res>
    extends _$PresentationsEventCopyWithImpl<$Res, _$_EventReloadData>
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
    return 'PresentationsEvent.reloadData()';
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
    required TResult Function(int id) deletePresentation,
    required TResult Function() initialDataRequested,
    required TResult Function() reloadData,
    required TResult Function() loadMore,
  }) {
    return reloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? deletePresentation,
    TResult? Function()? initialDataRequested,
    TResult? Function()? reloadData,
    TResult? Function()? loadMore,
  }) {
    return reloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? deletePresentation,
    TResult Function()? initialDataRequested,
    TResult Function()? reloadData,
    TResult Function()? loadMore,
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
    required TResult Function(_EventDeletePresentation value)
        deletePresentation,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
    required TResult Function(_EventLoadMore value) loadMore,
  }) {
    return reloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDeletePresentation value)? deletePresentation,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) {
    return reloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDeletePresentation value)? deletePresentation,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (reloadData != null) {
      return reloadData(this);
    }
    return orElse();
  }
}

abstract class _EventReloadData implements PresentationsEvent {
  const factory _EventReloadData() = _$_EventReloadData;
}

/// @nodoc
abstract class _$$_EventLoadMoreCopyWith<$Res> {
  factory _$$_EventLoadMoreCopyWith(
          _$_EventLoadMore value, $Res Function(_$_EventLoadMore) then) =
      __$$_EventLoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventLoadMoreCopyWithImpl<$Res>
    extends _$PresentationsEventCopyWithImpl<$Res, _$_EventLoadMore>
    implements _$$_EventLoadMoreCopyWith<$Res> {
  __$$_EventLoadMoreCopyWithImpl(
      _$_EventLoadMore _value, $Res Function(_$_EventLoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventLoadMore implements _EventLoadMore {
  const _$_EventLoadMore();

  @override
  String toString() {
    return 'PresentationsEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventLoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) deletePresentation,
    required TResult Function() initialDataRequested,
    required TResult Function() reloadData,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? deletePresentation,
    TResult? Function()? initialDataRequested,
    TResult? Function()? reloadData,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? deletePresentation,
    TResult Function()? initialDataRequested,
    TResult Function()? reloadData,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDeletePresentation value)
        deletePresentation,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventReloadData value) reloadData,
    required TResult Function(_EventLoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDeletePresentation value)? deletePresentation,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventReloadData value)? reloadData,
    TResult? Function(_EventLoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDeletePresentation value)? deletePresentation,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventReloadData value)? reloadData,
    TResult Function(_EventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _EventLoadMore implements PresentationsEvent {
  const factory _EventLoadMore() = _$_EventLoadMore;
}

/// @nodoc
mixin _$PresentationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Presentation> presentations) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Presentation> presentations)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Presentation> presentations)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationsStateCopyWith<$Res> {
  factory $PresentationsStateCopyWith(
          PresentationsState value, $Res Function(PresentationsState) then) =
      _$PresentationsStateCopyWithImpl<$Res, PresentationsState>;
}

/// @nodoc
class _$PresentationsStateCopyWithImpl<$Res, $Val extends PresentationsState>
    implements $PresentationsStateCopyWith<$Res> {
  _$PresentationsStateCopyWithImpl(this._value, this._then);

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
    extends _$PresentationsStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'PresentationsState.pending()';
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
    required TResult Function(List<Presentation> presentations) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() loadingError,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Presentation> presentations)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? loadingError,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Presentation> presentations)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? loadingError,
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
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements PresentationsState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Presentation> presentations});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PresentationsStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presentations = null,
  }) {
    return _then(_$_ScreenState(
      presentations: null == presentations
          ? _value._presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<Presentation>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState({required final List<Presentation> presentations})
      : _presentations = presentations;

  final List<Presentation> _presentations;
  @override
  List<Presentation> get presentations {
    if (_presentations is EqualUnmodifiableListView) return _presentations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_presentations);
  }

  @override
  String toString() {
    return 'PresentationsState.screenState(presentations: $presentations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality()
                .equals(other._presentations, _presentations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_presentations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Presentation> presentations) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() loadingError,
  }) {
    return screenState(presentations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Presentation> presentations)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? loadingError,
  }) {
    return screenState?.call(presentations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Presentation> presentations)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? loadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(presentations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements PresentationsState {
  const factory _ScreenState(
      {required final List<Presentation> presentations}) = _$_ScreenState;

  List<Presentation> get presentations;
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
    extends _$PresentationsStateCopyWithImpl<$Res, _$_StateRequestError>
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
    return 'PresentationsState.requestError(errorText: $errorText)';
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
    required TResult Function(List<Presentation> presentations) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() loadingError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Presentation> presentations)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? loadingError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Presentation> presentations)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? loadingError,
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
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements PresentationsState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateLoadingErrorCopyWith<$Res> {
  factory _$$_StateLoadingErrorCopyWith(_$_StateLoadingError value,
          $Res Function(_$_StateLoadingError) then) =
      __$$_StateLoadingErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateLoadingErrorCopyWithImpl<$Res>
    extends _$PresentationsStateCopyWithImpl<$Res, _$_StateLoadingError>
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
    return 'PresentationsState.loadingError()';
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
    required TResult Function(List<Presentation> presentations) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() loadingError,
  }) {
    return loadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Presentation> presentations)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? loadingError,
  }) {
    return loadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Presentation> presentations)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? loadingError,
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
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateLoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingError implements PresentationsState {
  const factory _StateLoadingError() = _$_StateLoadingError;
}
