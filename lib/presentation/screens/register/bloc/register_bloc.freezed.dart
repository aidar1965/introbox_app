// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            String confirmPassword, String firstName, String lastName)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String confirmPassword,
            String firstName, String lastName)?
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String confirmPassword,
            String firstName, String lastName)?
        register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventRegister value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventRegister value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventRegister value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterEventCopyWith<RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String firstName,
      String lastName});
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventRegisterCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$$_EventRegisterCopyWith(
          _$_EventRegister value, $Res Function(_$_EventRegister) then) =
      __$$_EventRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String firstName,
      String lastName});
}

/// @nodoc
class __$$_EventRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$_EventRegister>
    implements _$$_EventRegisterCopyWith<$Res> {
  __$$_EventRegisterCopyWithImpl(
      _$_EventRegister _value, $Res Function(_$_EventRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$_EventRegister(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventRegister implements _EventRegister {
  const _$_EventRegister(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.firstName,
      required this.lastName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.register(email: $email, password: $password, confirmPassword: $confirmPassword, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventRegister &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, confirmPassword, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventRegisterCopyWith<_$_EventRegister> get copyWith =>
      __$$_EventRegisterCopyWithImpl<_$_EventRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password,
            String confirmPassword, String firstName, String lastName)
        register,
  }) {
    return register(email, password, confirmPassword, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String confirmPassword,
            String firstName, String lastName)?
        register,
  }) {
    return register?.call(
        email, password, confirmPassword, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String confirmPassword,
            String firstName, String lastName)?
        register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, confirmPassword, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventRegister value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventRegister value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventRegister value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _EventRegister implements RegisterEvent {
  const factory _EventRegister(
      {required final String email,
      required final String password,
      required final String confirmPassword,
      required final String firstName,
      required final String lastName}) = _$_EventRegister;

  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_EventRegisterCopyWith<_$_EventRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateScreen value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateScreen value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateScreen value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StateScreenCopyWith<$Res> {
  factory _$$_StateScreenCopyWith(
          _$_StateScreen value, $Res Function(_$_StateScreen) then) =
      __$$_StateScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPending});
}

/// @nodoc
class __$$_StateScreenCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_StateScreen>
    implements _$$_StateScreenCopyWith<$Res> {
  __$$_StateScreenCopyWithImpl(
      _$_StateScreen _value, $Res Function(_$_StateScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPending = null,
  }) {
    return _then(_$_StateScreen(
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StateScreen implements _StateScreen {
  const _$_StateScreen({this.isPending = false});

  @override
  @JsonKey()
  final bool isPending;

  @override
  String toString() {
    return 'RegisterState.screenState(isPending: $isPending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateScreen &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateScreenCopyWith<_$_StateScreen> get copyWith =>
      __$$_StateScreenCopyWithImpl<_$_StateScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return screenState(isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return screenState?.call(isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
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
    required TResult Function(_StateScreen value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateScreen value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateScreen value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _StateScreen implements RegisterState {
  const factory _StateScreen({final bool isPending}) = _$_StateScreen;

  bool get isPending;
  @JsonKey(ignore: true)
  _$$_StateScreenCopyWith<_$_StateScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateRequestSuccessCopyWith<$Res> {
  factory _$$_StateRequestSuccessCopyWith(_$_StateRequestSuccess value,
          $Res Function(_$_StateRequestSuccess) then) =
      __$$_StateRequestSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateRequestSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_StateRequestSuccess>
    implements _$$_StateRequestSuccessCopyWith<$Res> {
  __$$_StateRequestSuccessCopyWithImpl(_$_StateRequestSuccess _value,
      $Res Function(_$_StateRequestSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateRequestSuccess implements _StateRequestSuccess {
  const _$_StateRequestSuccess();

  @override
  String toString() {
    return 'RegisterState.requestSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateRequestSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return requestSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return requestSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateScreen value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return requestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateScreen value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return requestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateScreen value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateRequestSuccess implements RegisterState {
  const factory _StateRequestSuccess() = _$_StateRequestSuccess;
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
    extends _$RegisterStateCopyWithImpl<$Res, _$_StateRequestError>
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
    return 'RegisterState.requestError(errorText: $errorText)';
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
    required TResult Function(bool isPending) screenState,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? requestError,
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
    required TResult Function(_StateScreen value) screenState,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateScreen value)? screenState,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateScreen value)? screenState,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements RegisterState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
