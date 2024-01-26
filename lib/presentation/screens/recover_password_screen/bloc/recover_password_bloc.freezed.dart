// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecoverPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function(String? errorText) recoverError,
    required TResult Function() recoverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? recoverError,
    TResult? Function()? recoverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? recoverError,
    TResult Function()? recoverSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRecoverError value) recoverError,
    required TResult Function(_StateRecoverSuccess value) recoverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRecoverError value)? recoverError,
    TResult? Function(_StateRecoverSuccess value)? recoverSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRecoverError value)? recoverError,
    TResult Function(_StateRecoverSuccess value)? recoverSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverPasswordStateCopyWith<$Res> {
  factory $RecoverPasswordStateCopyWith(RecoverPasswordState value,
          $Res Function(RecoverPasswordState) then) =
      _$RecoverPasswordStateCopyWithImpl<$Res, RecoverPasswordState>;
}

/// @nodoc
class _$RecoverPasswordStateCopyWithImpl<$Res,
        $Val extends RecoverPasswordState>
    implements $RecoverPasswordStateCopyWith<$Res> {
  _$RecoverPasswordStateCopyWithImpl(this._value, this._then);

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
  $Res call({bool isPending});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPending = null,
  }) {
    return _then(_$_ScreenState(
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState({this.isPending = false});

  @override
  @JsonKey()
  final bool isPending;

  @override
  String toString() {
    return 'RecoverPasswordState.screenState(isPending: $isPending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function(String? errorText) recoverError,
    required TResult Function() recoverSuccess,
  }) {
    return screenState(isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? recoverError,
    TResult? Function()? recoverSuccess,
  }) {
    return screenState?.call(isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? recoverError,
    TResult Function()? recoverSuccess,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(isPending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRecoverError value) recoverError,
    required TResult Function(_StateRecoverSuccess value) recoverSuccess,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRecoverError value)? recoverError,
    TResult? Function(_StateRecoverSuccess value)? recoverSuccess,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRecoverError value)? recoverError,
    TResult Function(_StateRecoverSuccess value)? recoverSuccess,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements RecoverPasswordState {
  const factory _ScreenState({final bool isPending}) = _$_ScreenState;

  bool get isPending;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateRecoverErrorCopyWith<$Res> {
  factory _$$_StateRecoverErrorCopyWith(_$_StateRecoverError value,
          $Res Function(_$_StateRecoverError) then) =
      __$$_StateRecoverErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateRecoverErrorCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res, _$_StateRecoverError>
    implements _$$_StateRecoverErrorCopyWith<$Res> {
  __$$_StateRecoverErrorCopyWithImpl(
      _$_StateRecoverError _value, $Res Function(_$_StateRecoverError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateRecoverError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateRecoverError implements _StateRecoverError {
  const _$_StateRecoverError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'RecoverPasswordState.recoverError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateRecoverError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateRecoverErrorCopyWith<_$_StateRecoverError> get copyWith =>
      __$$_StateRecoverErrorCopyWithImpl<_$_StateRecoverError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function(String? errorText) recoverError,
    required TResult Function() recoverSuccess,
  }) {
    return recoverError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? recoverError,
    TResult? Function()? recoverSuccess,
  }) {
    return recoverError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? recoverError,
    TResult Function()? recoverSuccess,
    required TResult orElse(),
  }) {
    if (recoverError != null) {
      return recoverError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRecoverError value) recoverError,
    required TResult Function(_StateRecoverSuccess value) recoverSuccess,
  }) {
    return recoverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRecoverError value)? recoverError,
    TResult? Function(_StateRecoverSuccess value)? recoverSuccess,
  }) {
    return recoverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRecoverError value)? recoverError,
    TResult Function(_StateRecoverSuccess value)? recoverSuccess,
    required TResult orElse(),
  }) {
    if (recoverError != null) {
      return recoverError(this);
    }
    return orElse();
  }
}

abstract class _StateRecoverError implements RecoverPasswordState {
  const factory _StateRecoverError({final String? errorText}) =
      _$_StateRecoverError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRecoverErrorCopyWith<_$_StateRecoverError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateRecoverSuccessCopyWith<$Res> {
  factory _$$_StateRecoverSuccessCopyWith(_$_StateRecoverSuccess value,
          $Res Function(_$_StateRecoverSuccess) then) =
      __$$_StateRecoverSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateRecoverSuccessCopyWithImpl<$Res>
    extends _$RecoverPasswordStateCopyWithImpl<$Res, _$_StateRecoverSuccess>
    implements _$$_StateRecoverSuccessCopyWith<$Res> {
  __$$_StateRecoverSuccessCopyWithImpl(_$_StateRecoverSuccess _value,
      $Res Function(_$_StateRecoverSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateRecoverSuccess implements _StateRecoverSuccess {
  const _$_StateRecoverSuccess();

  @override
  String toString() {
    return 'RecoverPasswordState.recoverSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateRecoverSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function(String? errorText) recoverError,
    required TResult Function() recoverSuccess,
  }) {
    return recoverSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? recoverError,
    TResult? Function()? recoverSuccess,
  }) {
    return recoverSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? recoverError,
    TResult Function()? recoverSuccess,
    required TResult orElse(),
  }) {
    if (recoverSuccess != null) {
      return recoverSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRecoverError value) recoverError,
    required TResult Function(_StateRecoverSuccess value) recoverSuccess,
  }) {
    return recoverSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRecoverError value)? recoverError,
    TResult? Function(_StateRecoverSuccess value)? recoverSuccess,
  }) {
    return recoverSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRecoverError value)? recoverError,
    TResult Function(_StateRecoverSuccess value)? recoverSuccess,
    required TResult orElse(),
  }) {
    if (recoverSuccess != null) {
      return recoverSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateRecoverSuccess implements RecoverPasswordState {
  const factory _StateRecoverSuccess() = _$_StateRecoverSuccess;
}

/// @nodoc
mixin _$RecoverPasswordEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) recover,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? recover,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? recover,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventRecover value) recover,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventRecover value)? recover,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventRecover value)? recover,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecoverPasswordEventCopyWith<RecoverPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverPasswordEventCopyWith<$Res> {
  factory $RecoverPasswordEventCopyWith(RecoverPasswordEvent value,
          $Res Function(RecoverPasswordEvent) then) =
      _$RecoverPasswordEventCopyWithImpl<$Res, RecoverPasswordEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$RecoverPasswordEventCopyWithImpl<$Res,
        $Val extends RecoverPasswordEvent>
    implements $RecoverPasswordEventCopyWith<$Res> {
  _$RecoverPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventRecoverCopyWith<$Res>
    implements $RecoverPasswordEventCopyWith<$Res> {
  factory _$$_EventRecoverCopyWith(
          _$_EventRecover value, $Res Function(_$_EventRecover) then) =
      __$$_EventRecoverCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EventRecoverCopyWithImpl<$Res>
    extends _$RecoverPasswordEventCopyWithImpl<$Res, _$_EventRecover>
    implements _$$_EventRecoverCopyWith<$Res> {
  __$$_EventRecoverCopyWithImpl(
      _$_EventRecover _value, $Res Function(_$_EventRecover) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EventRecover(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventRecover implements _EventRecover {
  const _$_EventRecover({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RecoverPasswordEvent.recover(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventRecover &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventRecoverCopyWith<_$_EventRecover> get copyWith =>
      __$$_EventRecoverCopyWithImpl<_$_EventRecover>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) recover,
  }) {
    return recover(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? recover,
  }) {
    return recover?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? recover,
    required TResult orElse(),
  }) {
    if (recover != null) {
      return recover(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventRecover value) recover,
  }) {
    return recover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventRecover value)? recover,
  }) {
    return recover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventRecover value)? recover,
    required TResult orElse(),
  }) {
    if (recover != null) {
      return recover(this);
    }
    return orElse();
  }
}

abstract class _EventRecover implements RecoverPasswordEvent {
  const factory _EventRecover({required final String email}) = _$_EventRecover;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_EventRecoverCopyWith<_$_EventRecover> get copyWith =>
      throw _privateConstructorUsedError;
}
