// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channels_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isPending) initialLoadingError,
    required TResult Function(List<Channel> channels, List<Company> companies)
        screenState,
    required TResult Function(String? errorText) addChannelError,
    required TResult Function() addChannelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isPending)? initialLoadingError,
    TResult? Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult? Function(String? errorText)? addChannelError,
    TResult? Function()? addChannelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isPending)? initialLoadingError,
    TResult Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult Function(String? errorText)? addChannelError,
    TResult Function()? addChannelSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateAddChennelError value) addChannelError,
    required TResult Function(_StateAddChannelSuccess value) addChannelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateAddChennelError value)? addChannelError,
    TResult? Function(_StateAddChannelSuccess value)? addChannelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateAddChennelError value)? addChannelError,
    TResult Function(_StateAddChannelSuccess value)? addChannelSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelsStateCopyWith<$Res> {
  factory $ChannelsStateCopyWith(
          ChannelsState value, $Res Function(ChannelsState) then) =
      _$ChannelsStateCopyWithImpl<$Res, ChannelsState>;
}

/// @nodoc
class _$ChannelsStateCopyWithImpl<$Res, $Val extends ChannelsState>
    implements $ChannelsStateCopyWith<$Res> {
  _$ChannelsStateCopyWithImpl(this._value, this._then);

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
    extends _$ChannelsStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'ChannelsState.pending()';
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
    required TResult Function(bool isPending) initialLoadingError,
    required TResult Function(List<Channel> channels, List<Company> companies)
        screenState,
    required TResult Function(String? errorText) addChannelError,
    required TResult Function() addChannelSuccess,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isPending)? initialLoadingError,
    TResult? Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult? Function(String? errorText)? addChannelError,
    TResult? Function()? addChannelSuccess,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isPending)? initialLoadingError,
    TResult Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult Function(String? errorText)? addChannelError,
    TResult Function()? addChannelSuccess,
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
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateAddChennelError value) addChannelError,
    required TResult Function(_StateAddChannelSuccess value) addChannelSuccess,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateAddChennelError value)? addChannelError,
    TResult? Function(_StateAddChannelSuccess value)? addChannelSuccess,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateAddChennelError value)? addChannelError,
    TResult Function(_StateAddChannelSuccess value)? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements ChannelsState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_StateInitialLoadingErrorCopyWith<$Res> {
  factory _$$_StateInitialLoadingErrorCopyWith(
          _$_StateInitialLoadingError value,
          $Res Function(_$_StateInitialLoadingError) then) =
      __$$_StateInitialLoadingErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPending});
}

/// @nodoc
class __$$_StateInitialLoadingErrorCopyWithImpl<$Res>
    extends _$ChannelsStateCopyWithImpl<$Res, _$_StateInitialLoadingError>
    implements _$$_StateInitialLoadingErrorCopyWith<$Res> {
  __$$_StateInitialLoadingErrorCopyWithImpl(_$_StateInitialLoadingError _value,
      $Res Function(_$_StateInitialLoadingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPending = null,
  }) {
    return _then(_$_StateInitialLoadingError(
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StateInitialLoadingError implements _StateInitialLoadingError {
  const _$_StateInitialLoadingError({this.isPending = false});

  @override
  @JsonKey()
  final bool isPending;

  @override
  String toString() {
    return 'ChannelsState.initialLoadingError(isPending: $isPending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateInitialLoadingError &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateInitialLoadingErrorCopyWith<_$_StateInitialLoadingError>
      get copyWith => __$$_StateInitialLoadingErrorCopyWithImpl<
          _$_StateInitialLoadingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isPending) initialLoadingError,
    required TResult Function(List<Channel> channels, List<Company> companies)
        screenState,
    required TResult Function(String? errorText) addChannelError,
    required TResult Function() addChannelSuccess,
  }) {
    return initialLoadingError(isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isPending)? initialLoadingError,
    TResult? Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult? Function(String? errorText)? addChannelError,
    TResult? Function()? addChannelSuccess,
  }) {
    return initialLoadingError?.call(isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isPending)? initialLoadingError,
    TResult Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult Function(String? errorText)? addChannelError,
    TResult Function()? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadingError != null) {
      return initialLoadingError(isPending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateAddChennelError value) addChannelError,
    required TResult Function(_StateAddChannelSuccess value) addChannelSuccess,
  }) {
    return initialLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateAddChennelError value)? addChannelError,
    TResult? Function(_StateAddChannelSuccess value)? addChannelSuccess,
  }) {
    return initialLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateAddChennelError value)? addChannelError,
    TResult Function(_StateAddChannelSuccess value)? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (initialLoadingError != null) {
      return initialLoadingError(this);
    }
    return orElse();
  }
}

abstract class _StateInitialLoadingError implements ChannelsState {
  const factory _StateInitialLoadingError({final bool isPending}) =
      _$_StateInitialLoadingError;

  bool get isPending;
  @JsonKey(ignore: true)
  _$$_StateInitialLoadingErrorCopyWith<_$_StateInitialLoadingError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Channel> channels, List<Company> companies});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$ChannelsStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
    Object? companies = null,
  }) {
    return _then(_$_ScreenState(
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState(
      {required final List<Channel> channels,
      required final List<Company> companies})
      : _channels = channels,
        _companies = companies;

  final List<Channel> _channels;
  @override
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  final List<Company> _companies;
  @override
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'ChannelsState.screenState(channels: $channels, companies: $companies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_channels),
      const DeepCollectionEquality().hash(_companies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isPending) initialLoadingError,
    required TResult Function(List<Channel> channels, List<Company> companies)
        screenState,
    required TResult Function(String? errorText) addChannelError,
    required TResult Function() addChannelSuccess,
  }) {
    return screenState(channels, companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isPending)? initialLoadingError,
    TResult? Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult? Function(String? errorText)? addChannelError,
    TResult? Function()? addChannelSuccess,
  }) {
    return screenState?.call(channels, companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isPending)? initialLoadingError,
    TResult Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult Function(String? errorText)? addChannelError,
    TResult Function()? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(channels, companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateAddChennelError value) addChannelError,
    required TResult Function(_StateAddChannelSuccess value) addChannelSuccess,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateAddChennelError value)? addChannelError,
    TResult? Function(_StateAddChannelSuccess value)? addChannelSuccess,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateAddChennelError value)? addChannelError,
    TResult Function(_StateAddChannelSuccess value)? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements ChannelsState {
  const factory _ScreenState(
      {required final List<Channel> channels,
      required final List<Company> companies}) = _$_ScreenState;

  List<Channel> get channels;
  List<Company> get companies;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateAddChennelErrorCopyWith<$Res> {
  factory _$$_StateAddChennelErrorCopyWith(_$_StateAddChennelError value,
          $Res Function(_$_StateAddChennelError) then) =
      __$$_StateAddChennelErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateAddChennelErrorCopyWithImpl<$Res>
    extends _$ChannelsStateCopyWithImpl<$Res, _$_StateAddChennelError>
    implements _$$_StateAddChennelErrorCopyWith<$Res> {
  __$$_StateAddChennelErrorCopyWithImpl(_$_StateAddChennelError _value,
      $Res Function(_$_StateAddChennelError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateAddChennelError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateAddChennelError implements _StateAddChennelError {
  const _$_StateAddChennelError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'ChannelsState.addChannelError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateAddChennelError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateAddChennelErrorCopyWith<_$_StateAddChennelError> get copyWith =>
      __$$_StateAddChennelErrorCopyWithImpl<_$_StateAddChennelError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isPending) initialLoadingError,
    required TResult Function(List<Channel> channels, List<Company> companies)
        screenState,
    required TResult Function(String? errorText) addChannelError,
    required TResult Function() addChannelSuccess,
  }) {
    return addChannelError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isPending)? initialLoadingError,
    TResult? Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult? Function(String? errorText)? addChannelError,
    TResult? Function()? addChannelSuccess,
  }) {
    return addChannelError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isPending)? initialLoadingError,
    TResult Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult Function(String? errorText)? addChannelError,
    TResult Function()? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (addChannelError != null) {
      return addChannelError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateAddChennelError value) addChannelError,
    required TResult Function(_StateAddChannelSuccess value) addChannelSuccess,
  }) {
    return addChannelError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateAddChennelError value)? addChannelError,
    TResult? Function(_StateAddChannelSuccess value)? addChannelSuccess,
  }) {
    return addChannelError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateAddChennelError value)? addChannelError,
    TResult Function(_StateAddChannelSuccess value)? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (addChannelError != null) {
      return addChannelError(this);
    }
    return orElse();
  }
}

abstract class _StateAddChennelError implements ChannelsState {
  const factory _StateAddChennelError({final String? errorText}) =
      _$_StateAddChennelError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateAddChennelErrorCopyWith<_$_StateAddChennelError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateAddChannelSuccessCopyWith<$Res> {
  factory _$$_StateAddChannelSuccessCopyWith(_$_StateAddChannelSuccess value,
          $Res Function(_$_StateAddChannelSuccess) then) =
      __$$_StateAddChannelSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateAddChannelSuccessCopyWithImpl<$Res>
    extends _$ChannelsStateCopyWithImpl<$Res, _$_StateAddChannelSuccess>
    implements _$$_StateAddChannelSuccessCopyWith<$Res> {
  __$$_StateAddChannelSuccessCopyWithImpl(_$_StateAddChannelSuccess _value,
      $Res Function(_$_StateAddChannelSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateAddChannelSuccess implements _StateAddChannelSuccess {
  const _$_StateAddChannelSuccess();

  @override
  String toString() {
    return 'ChannelsState.addChannelSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateAddChannelSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(bool isPending) initialLoadingError,
    required TResult Function(List<Channel> channels, List<Company> companies)
        screenState,
    required TResult Function(String? errorText) addChannelError,
    required TResult Function() addChannelSuccess,
  }) {
    return addChannelSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(bool isPending)? initialLoadingError,
    TResult? Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult? Function(String? errorText)? addChannelError,
    TResult? Function()? addChannelSuccess,
  }) {
    return addChannelSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(bool isPending)? initialLoadingError,
    TResult Function(List<Channel> channels, List<Company> companies)?
        screenState,
    TResult Function(String? errorText)? addChannelError,
    TResult Function()? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (addChannelSuccess != null) {
      return addChannelSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateAddChennelError value) addChannelError,
    required TResult Function(_StateAddChannelSuccess value) addChannelSuccess,
  }) {
    return addChannelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateAddChennelError value)? addChannelError,
    TResult? Function(_StateAddChannelSuccess value)? addChannelSuccess,
  }) {
    return addChannelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateAddChennelError value)? addChannelError,
    TResult Function(_StateAddChannelSuccess value)? addChannelSuccess,
    required TResult orElse(),
  }) {
    if (addChannelSuccess != null) {
      return addChannelSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateAddChannelSuccess implements ChannelsState {
  const factory _StateAddChannelSuccess() = _$_StateAddChannelSuccess;
}

/// @nodoc
mixin _$ChannelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(
            String title, String? description, int channelTypeId, bool isPublic)
        onCreateChannel,
    required TResult Function(String channelId, String title,
            String? description, int channelTypeId, bool isPublic)
        onEditChannel,
    required TResult Function(String? companyId, String channelId)
        onAddCompanyToChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult? Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult? Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateChannel value) onCreateChannel,
    required TResult Function(_EventOnEditChannel value) onEditChannel,
    required TResult Function(_EventOnAddCompanyToChannel value)
        onAddCompanyToChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult? Function(_EventOnEditChannel value)? onEditChannel,
    TResult? Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult Function(_EventOnEditChannel value)? onEditChannel,
    TResult Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelsEventCopyWith<$Res> {
  factory $ChannelsEventCopyWith(
          ChannelsEvent value, $Res Function(ChannelsEvent) then) =
      _$ChannelsEventCopyWithImpl<$Res, ChannelsEvent>;
}

/// @nodoc
class _$ChannelsEventCopyWithImpl<$Res, $Val extends ChannelsEvent>
    implements $ChannelsEventCopyWith<$Res> {
  _$ChannelsEventCopyWithImpl(this._value, this._then);

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
    extends _$ChannelsEventCopyWithImpl<$Res, _$_EventInitialDataRequested>
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
    return 'ChannelsEvent.initialDataRequested()';
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
    required TResult Function(
            String title, String? description, int channelTypeId, bool isPublic)
        onCreateChannel,
    required TResult Function(String channelId, String title,
            String? description, int channelTypeId, bool isPublic)
        onEditChannel,
    required TResult Function(String? companyId, String channelId)
        onAddCompanyToChannel,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult? Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult? Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
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
    required TResult Function(_EventOnCreateChannel value) onCreateChannel,
    required TResult Function(_EventOnEditChannel value) onEditChannel,
    required TResult Function(_EventOnAddCompanyToChannel value)
        onAddCompanyToChannel,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult? Function(_EventOnEditChannel value)? onEditChannel,
    TResult? Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult Function(_EventOnEditChannel value)? onEditChannel,
    TResult Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements ChannelsEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventOnCreateChannelCopyWith<$Res> {
  factory _$$_EventOnCreateChannelCopyWith(_$_EventOnCreateChannel value,
          $Res Function(_$_EventOnCreateChannel) then) =
      __$$_EventOnCreateChannelCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title, String? description, int channelTypeId, bool isPublic});
}

/// @nodoc
class __$$_EventOnCreateChannelCopyWithImpl<$Res>
    extends _$ChannelsEventCopyWithImpl<$Res, _$_EventOnCreateChannel>
    implements _$$_EventOnCreateChannelCopyWith<$Res> {
  __$$_EventOnCreateChannelCopyWithImpl(_$_EventOnCreateChannel _value,
      $Res Function(_$_EventOnCreateChannel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? channelTypeId = null,
    Object? isPublic = null,
  }) {
    return _then(_$_EventOnCreateChannel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: null == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventOnCreateChannel implements _EventOnCreateChannel {
  const _$_EventOnCreateChannel(
      {required this.title,
      this.description,
      required this.channelTypeId,
      required this.isPublic});

  @override
  final String title;
  @override
  final String? description;
  @override
  final int channelTypeId;
  @override
  final bool isPublic;

  @override
  String toString() {
    return 'ChannelsEvent.onCreateChannel(title: $title, description: $description, channelTypeId: $channelTypeId, isPublic: $isPublic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnCreateChannel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.channelTypeId, channelTypeId) ||
                other.channelTypeId == channelTypeId) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, channelTypeId, isPublic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnCreateChannelCopyWith<_$_EventOnCreateChannel> get copyWith =>
      __$$_EventOnCreateChannelCopyWithImpl<_$_EventOnCreateChannel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(
            String title, String? description, int channelTypeId, bool isPublic)
        onCreateChannel,
    required TResult Function(String channelId, String title,
            String? description, int channelTypeId, bool isPublic)
        onEditChannel,
    required TResult Function(String? companyId, String channelId)
        onAddCompanyToChannel,
  }) {
    return onCreateChannel(title, description, channelTypeId, isPublic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult? Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult? Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
  }) {
    return onCreateChannel?.call(title, description, channelTypeId, isPublic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
    required TResult orElse(),
  }) {
    if (onCreateChannel != null) {
      return onCreateChannel(title, description, channelTypeId, isPublic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateChannel value) onCreateChannel,
    required TResult Function(_EventOnEditChannel value) onEditChannel,
    required TResult Function(_EventOnAddCompanyToChannel value)
        onAddCompanyToChannel,
  }) {
    return onCreateChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult? Function(_EventOnEditChannel value)? onEditChannel,
    TResult? Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
  }) {
    return onCreateChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult Function(_EventOnEditChannel value)? onEditChannel,
    TResult Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
    required TResult orElse(),
  }) {
    if (onCreateChannel != null) {
      return onCreateChannel(this);
    }
    return orElse();
  }
}

abstract class _EventOnCreateChannel implements ChannelsEvent {
  const factory _EventOnCreateChannel(
      {required final String title,
      final String? description,
      required final int channelTypeId,
      required final bool isPublic}) = _$_EventOnCreateChannel;

  String get title;
  String? get description;
  int get channelTypeId;
  bool get isPublic;
  @JsonKey(ignore: true)
  _$$_EventOnCreateChannelCopyWith<_$_EventOnCreateChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventOnEditChannelCopyWith<$Res> {
  factory _$$_EventOnEditChannelCopyWith(_$_EventOnEditChannel value,
          $Res Function(_$_EventOnEditChannel) then) =
      __$$_EventOnEditChannelCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String channelId,
      String title,
      String? description,
      int channelTypeId,
      bool isPublic});
}

/// @nodoc
class __$$_EventOnEditChannelCopyWithImpl<$Res>
    extends _$ChannelsEventCopyWithImpl<$Res, _$_EventOnEditChannel>
    implements _$$_EventOnEditChannelCopyWith<$Res> {
  __$$_EventOnEditChannelCopyWithImpl(
      _$_EventOnEditChannel _value, $Res Function(_$_EventOnEditChannel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? title = null,
    Object? description = freezed,
    Object? channelTypeId = null,
    Object? isPublic = null,
  }) {
    return _then(_$_EventOnEditChannel(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTypeId: null == channelTypeId
          ? _value.channelTypeId
          : channelTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventOnEditChannel implements _EventOnEditChannel {
  const _$_EventOnEditChannel(
      {required this.channelId,
      required this.title,
      this.description,
      required this.channelTypeId,
      required this.isPublic});

  @override
  final String channelId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final int channelTypeId;
  @override
  final bool isPublic;

  @override
  String toString() {
    return 'ChannelsEvent.onEditChannel(channelId: $channelId, title: $title, description: $description, channelTypeId: $channelTypeId, isPublic: $isPublic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnEditChannel &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.channelTypeId, channelTypeId) ||
                other.channelTypeId == channelTypeId) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, channelId, title, description, channelTypeId, isPublic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnEditChannelCopyWith<_$_EventOnEditChannel> get copyWith =>
      __$$_EventOnEditChannelCopyWithImpl<_$_EventOnEditChannel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(
            String title, String? description, int channelTypeId, bool isPublic)
        onCreateChannel,
    required TResult Function(String channelId, String title,
            String? description, int channelTypeId, bool isPublic)
        onEditChannel,
    required TResult Function(String? companyId, String channelId)
        onAddCompanyToChannel,
  }) {
    return onEditChannel(
        channelId, title, description, channelTypeId, isPublic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult? Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult? Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
  }) {
    return onEditChannel?.call(
        channelId, title, description, channelTypeId, isPublic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
    required TResult orElse(),
  }) {
    if (onEditChannel != null) {
      return onEditChannel(
          channelId, title, description, channelTypeId, isPublic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateChannel value) onCreateChannel,
    required TResult Function(_EventOnEditChannel value) onEditChannel,
    required TResult Function(_EventOnAddCompanyToChannel value)
        onAddCompanyToChannel,
  }) {
    return onEditChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult? Function(_EventOnEditChannel value)? onEditChannel,
    TResult? Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
  }) {
    return onEditChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult Function(_EventOnEditChannel value)? onEditChannel,
    TResult Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
    required TResult orElse(),
  }) {
    if (onEditChannel != null) {
      return onEditChannel(this);
    }
    return orElse();
  }
}

abstract class _EventOnEditChannel implements ChannelsEvent {
  const factory _EventOnEditChannel(
      {required final String channelId,
      required final String title,
      final String? description,
      required final int channelTypeId,
      required final bool isPublic}) = _$_EventOnEditChannel;

  String get channelId;
  String get title;
  String? get description;
  int get channelTypeId;
  bool get isPublic;
  @JsonKey(ignore: true)
  _$$_EventOnEditChannelCopyWith<_$_EventOnEditChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventOnAddCompanyToChannelCopyWith<$Res> {
  factory _$$_EventOnAddCompanyToChannelCopyWith(
          _$_EventOnAddCompanyToChannel value,
          $Res Function(_$_EventOnAddCompanyToChannel) then) =
      __$$_EventOnAddCompanyToChannelCopyWithImpl<$Res>;
  @useResult
  $Res call({String? companyId, String channelId});
}

/// @nodoc
class __$$_EventOnAddCompanyToChannelCopyWithImpl<$Res>
    extends _$ChannelsEventCopyWithImpl<$Res, _$_EventOnAddCompanyToChannel>
    implements _$$_EventOnAddCompanyToChannelCopyWith<$Res> {
  __$$_EventOnAddCompanyToChannelCopyWithImpl(
      _$_EventOnAddCompanyToChannel _value,
      $Res Function(_$_EventOnAddCompanyToChannel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = freezed,
    Object? channelId = null,
  }) {
    return _then(_$_EventOnAddCompanyToChannel(
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventOnAddCompanyToChannel implements _EventOnAddCompanyToChannel {
  const _$_EventOnAddCompanyToChannel(
      {this.companyId, required this.channelId});

  @override
  final String? companyId;
  @override
  final String channelId;

  @override
  String toString() {
    return 'ChannelsEvent.onAddCompanyToChannel(companyId: $companyId, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnAddCompanyToChannel &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyId, channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnAddCompanyToChannelCopyWith<_$_EventOnAddCompanyToChannel>
      get copyWith => __$$_EventOnAddCompanyToChannelCopyWithImpl<
          _$_EventOnAddCompanyToChannel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(
            String title, String? description, int channelTypeId, bool isPublic)
        onCreateChannel,
    required TResult Function(String channelId, String title,
            String? description, int channelTypeId, bool isPublic)
        onEditChannel,
    required TResult Function(String? companyId, String channelId)
        onAddCompanyToChannel,
  }) {
    return onAddCompanyToChannel(companyId, channelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult? Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult? Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
  }) {
    return onAddCompanyToChannel?.call(companyId, channelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String title, String? description, int channelTypeId,
            bool isPublic)?
        onCreateChannel,
    TResult Function(String channelId, String title, String? description,
            int channelTypeId, bool isPublic)?
        onEditChannel,
    TResult Function(String? companyId, String channelId)?
        onAddCompanyToChannel,
    required TResult orElse(),
  }) {
    if (onAddCompanyToChannel != null) {
      return onAddCompanyToChannel(companyId, channelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateChannel value) onCreateChannel,
    required TResult Function(_EventOnEditChannel value) onEditChannel,
    required TResult Function(_EventOnAddCompanyToChannel value)
        onAddCompanyToChannel,
  }) {
    return onAddCompanyToChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult? Function(_EventOnEditChannel value)? onEditChannel,
    TResult? Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
  }) {
    return onAddCompanyToChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateChannel value)? onCreateChannel,
    TResult Function(_EventOnEditChannel value)? onEditChannel,
    TResult Function(_EventOnAddCompanyToChannel value)? onAddCompanyToChannel,
    required TResult orElse(),
  }) {
    if (onAddCompanyToChannel != null) {
      return onAddCompanyToChannel(this);
    }
    return orElse();
  }
}

abstract class _EventOnAddCompanyToChannel implements ChannelsEvent {
  const factory _EventOnAddCompanyToChannel(
      {final String? companyId,
      required final String channelId}) = _$_EventOnAddCompanyToChannel;

  String? get companyId;
  String get channelId;
  @JsonKey(ignore: true)
  _$$_EventOnAddCompanyToChannelCopyWith<_$_EventOnAddCompanyToChannel>
      get copyWith => throw _privateConstructorUsedError;
}
