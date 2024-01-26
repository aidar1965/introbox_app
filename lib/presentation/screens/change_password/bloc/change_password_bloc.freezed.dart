// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function(String? errorText) changePasswordError,
    required TResult Function() changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? changePasswordError,
    TResult? Function()? changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? changePasswordError,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateChangePasswordError value)
        changePasswordError,
    required TResult Function(_StateChangePasswordSuccess value)
        changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateChangePasswordError value)? changePasswordError,
    TResult? Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateChangePasswordError value)? changePasswordError,
    TResult Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

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
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$_ScreenState>
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
    return 'ChangePasswordState.screenState(isPending: $isPending)';
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
    required TResult Function(String? errorText) changePasswordError,
    required TResult Function() changePasswordSuccess,
  }) {
    return screenState(isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? changePasswordError,
    TResult? Function()? changePasswordSuccess,
  }) {
    return screenState?.call(isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? changePasswordError,
    TResult Function()? changePasswordSuccess,
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
    required TResult Function(_StateChangePasswordError value)
        changePasswordError,
    required TResult Function(_StateChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateChangePasswordError value)? changePasswordError,
    TResult? Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateChangePasswordError value)? changePasswordError,
    TResult Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements ChangePasswordState {
  const factory _ScreenState({final bool isPending}) = _$_ScreenState;

  bool get isPending;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateChangePasswordErrorCopyWith<$Res> {
  factory _$$_StateChangePasswordErrorCopyWith(
          _$_StateChangePasswordError value,
          $Res Function(_$_StateChangePasswordError) then) =
      __$$_StateChangePasswordErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateChangePasswordErrorCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$_StateChangePasswordError>
    implements _$$_StateChangePasswordErrorCopyWith<$Res> {
  __$$_StateChangePasswordErrorCopyWithImpl(_$_StateChangePasswordError _value,
      $Res Function(_$_StateChangePasswordError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateChangePasswordError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateChangePasswordError implements _StateChangePasswordError {
  const _$_StateChangePasswordError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'ChangePasswordState.changePasswordError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateChangePasswordError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateChangePasswordErrorCopyWith<_$_StateChangePasswordError>
      get copyWith => __$$_StateChangePasswordErrorCopyWithImpl<
          _$_StateChangePasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function(String? errorText) changePasswordError,
    required TResult Function() changePasswordSuccess,
  }) {
    return changePasswordError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? changePasswordError,
    TResult? Function()? changePasswordSuccess,
  }) {
    return changePasswordError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? changePasswordError,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordError != null) {
      return changePasswordError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateChangePasswordError value)
        changePasswordError,
    required TResult Function(_StateChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return changePasswordError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateChangePasswordError value)? changePasswordError,
    TResult? Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return changePasswordError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateChangePasswordError value)? changePasswordError,
    TResult Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordError != null) {
      return changePasswordError(this);
    }
    return orElse();
  }
}

abstract class _StateChangePasswordError implements ChangePasswordState {
  const factory _StateChangePasswordError({final String? errorText}) =
      _$_StateChangePasswordError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateChangePasswordErrorCopyWith<_$_StateChangePasswordError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateChangePasswordSuccessCopyWith<$Res> {
  factory _$$_StateChangePasswordSuccessCopyWith(
          _$_StateChangePasswordSuccess value,
          $Res Function(_$_StateChangePasswordSuccess) then) =
      __$$_StateChangePasswordSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateChangePasswordSuccessCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res,
        _$_StateChangePasswordSuccess>
    implements _$$_StateChangePasswordSuccessCopyWith<$Res> {
  __$$_StateChangePasswordSuccessCopyWithImpl(
      _$_StateChangePasswordSuccess _value,
      $Res Function(_$_StateChangePasswordSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateChangePasswordSuccess implements _StateChangePasswordSuccess {
  const _$_StateChangePasswordSuccess();

  @override
  String toString() {
    return 'ChangePasswordState.changePasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateChangePasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function(String? errorText) changePasswordError,
    required TResult Function() changePasswordSuccess,
  }) {
    return changePasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function(String? errorText)? changePasswordError,
    TResult? Function()? changePasswordSuccess,
  }) {
    return changePasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function(String? errorText)? changePasswordError,
    TResult Function()? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordSuccess != null) {
      return changePasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateChangePasswordError value)
        changePasswordError,
    required TResult Function(_StateChangePasswordSuccess value)
        changePasswordSuccess,
  }) {
    return changePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateChangePasswordError value)? changePasswordError,
    TResult? Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
  }) {
    return changePasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateChangePasswordError value)? changePasswordError,
    TResult Function(_StateChangePasswordSuccess value)? changePasswordSuccess,
    required TResult orElse(),
  }) {
    if (changePasswordSuccess != null) {
      return changePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateChangePasswordSuccess implements ChangePasswordState {
  const factory _StateChangePasswordSuccess() = _$_StateChangePasswordSuccess;
}

/// @nodoc
mixin _$ChangePasswordEvent {
  String get oldPassword => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String oldPassword, String password, String confirmPassword)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String oldPassword, String password, String confirmPassword)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String oldPassword, String password, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventRecoverPassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventRecoverPassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventRecoverPassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res, ChangePasswordEvent>;
  @useResult
  $Res call({String oldPassword, String password, String confirmPassword});
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res, $Val extends ChangePasswordEvent>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventRecoverPasswordCopyWith<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  factory _$$_EventRecoverPasswordCopyWith(_$_EventRecoverPassword value,
          $Res Function(_$_EventRecoverPassword) then) =
      __$$_EventRecoverPasswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String password, String confirmPassword});
}

/// @nodoc
class __$$_EventRecoverPasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$_EventRecoverPassword>
    implements _$$_EventRecoverPasswordCopyWith<$Res> {
  __$$_EventRecoverPasswordCopyWithImpl(_$_EventRecoverPassword _value,
      $Res Function(_$_EventRecoverPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_EventRecoverPassword(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventRecoverPassword implements _EventRecoverPassword {
  const _$_EventRecoverPassword(
      {required this.oldPassword,
      required this.password,
      required this.confirmPassword});

  @override
  final String oldPassword;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.changePassword(oldPassword: $oldPassword, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventRecoverPassword &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPassword, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventRecoverPasswordCopyWith<_$_EventRecoverPassword> get copyWith =>
      __$$_EventRecoverPasswordCopyWithImpl<_$_EventRecoverPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String oldPassword, String password, String confirmPassword)
        changePassword,
  }) {
    return changePassword(oldPassword, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String oldPassword, String password, String confirmPassword)?
        changePassword,
  }) {
    return changePassword?.call(oldPassword, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String oldPassword, String password, String confirmPassword)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oldPassword, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventRecoverPassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventRecoverPassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventRecoverPassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _EventRecoverPassword implements ChangePasswordEvent {
  const factory _EventRecoverPassword(
      {required final String oldPassword,
      required final String password,
      required final String confirmPassword}) = _$_EventRecoverPassword;

  @override
  String get oldPassword;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_EventRecoverPasswordCopyWith<_$_EventRecoverPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
