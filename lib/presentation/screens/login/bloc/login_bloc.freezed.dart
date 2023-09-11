// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneConfirmed,
    required TResult Function(String phone, String otp) loginWithOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneConfirmed,
    TResult? Function(String phone, String otp)? loginWithOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneConfirmed,
    TResult Function(String phone, String otp)? loginWithOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneConfirmed value) phoneConfirmed,
    required TResult Function(_LoginWithOtp value) loginWithOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneConfirmed value)? phoneConfirmed,
    TResult? Function(_LoginWithOtp value)? loginWithOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneConfirmed value)? phoneConfirmed,
    TResult Function(_LoginWithOtp value)? loginWithOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneConfirmedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_PhoneConfirmedCopyWith(
          _$_PhoneConfirmed value, $Res Function(_$_PhoneConfirmed) then) =
      __$$_PhoneConfirmedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_PhoneConfirmedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_PhoneConfirmed>
    implements _$$_PhoneConfirmedCopyWith<$Res> {
  __$$_PhoneConfirmedCopyWithImpl(
      _$_PhoneConfirmed _value, $Res Function(_$_PhoneConfirmed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_PhoneConfirmed(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneConfirmed implements _PhoneConfirmed {
  const _$_PhoneConfirmed({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'LoginEvent.phoneConfirmed(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneConfirmed &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneConfirmedCopyWith<_$_PhoneConfirmed> get copyWith =>
      __$$_PhoneConfirmedCopyWithImpl<_$_PhoneConfirmed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneConfirmed,
    required TResult Function(String phone, String otp) loginWithOtp,
  }) {
    return phoneConfirmed(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneConfirmed,
    TResult? Function(String phone, String otp)? loginWithOtp,
  }) {
    return phoneConfirmed?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneConfirmed,
    TResult Function(String phone, String otp)? loginWithOtp,
    required TResult orElse(),
  }) {
    if (phoneConfirmed != null) {
      return phoneConfirmed(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneConfirmed value) phoneConfirmed,
    required TResult Function(_LoginWithOtp value) loginWithOtp,
  }) {
    return phoneConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneConfirmed value)? phoneConfirmed,
    TResult? Function(_LoginWithOtp value)? loginWithOtp,
  }) {
    return phoneConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneConfirmed value)? phoneConfirmed,
    TResult Function(_LoginWithOtp value)? loginWithOtp,
    required TResult orElse(),
  }) {
    if (phoneConfirmed != null) {
      return phoneConfirmed(this);
    }
    return orElse();
  }
}

abstract class _PhoneConfirmed implements LoginEvent {
  const factory _PhoneConfirmed({required final String phone}) =
      _$_PhoneConfirmed;

  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneConfirmedCopyWith<_$_PhoneConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginWithOtpCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginWithOtpCopyWith(
          _$_LoginWithOtp value, $Res Function(_$_LoginWithOtp) then) =
      __$$_LoginWithOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String otp});
}

/// @nodoc
class __$$_LoginWithOtpCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginWithOtp>
    implements _$$_LoginWithOtpCopyWith<$Res> {
  __$$_LoginWithOtpCopyWithImpl(
      _$_LoginWithOtp _value, $Res Function(_$_LoginWithOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? otp = null,
  }) {
    return _then(_$_LoginWithOtp(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginWithOtp implements _LoginWithOtp {
  const _$_LoginWithOtp({required this.phone, required this.otp});

  @override
  final String phone;
  @override
  final String otp;

  @override
  String toString() {
    return 'LoginEvent.loginWithOtp(phone: $phone, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithOtp &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginWithOtpCopyWith<_$_LoginWithOtp> get copyWith =>
      __$$_LoginWithOtpCopyWithImpl<_$_LoginWithOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) phoneConfirmed,
    required TResult Function(String phone, String otp) loginWithOtp,
  }) {
    return loginWithOtp(phone, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? phoneConfirmed,
    TResult? Function(String phone, String otp)? loginWithOtp,
  }) {
    return loginWithOtp?.call(phone, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? phoneConfirmed,
    TResult Function(String phone, String otp)? loginWithOtp,
    required TResult orElse(),
  }) {
    if (loginWithOtp != null) {
      return loginWithOtp(phone, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneConfirmed value) phoneConfirmed,
    required TResult Function(_LoginWithOtp value) loginWithOtp,
  }) {
    return loginWithOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneConfirmed value)? phoneConfirmed,
    TResult? Function(_LoginWithOtp value)? loginWithOtp,
  }) {
    return loginWithOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneConfirmed value)? phoneConfirmed,
    TResult Function(_LoginWithOtp value)? loginWithOtp,
    required TResult orElse(),
  }) {
    if (loginWithOtp != null) {
      return loginWithOtp(this);
    }
    return orElse();
  }
}

abstract class _LoginWithOtp implements LoginEvent {
  const factory _LoginWithOtp(
      {required final String phone,
      required final String otp}) = _$_LoginWithOtp;

  @override
  String get phone;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_LoginWithOtpCopyWith<_$_LoginWithOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(String phone) otpRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(String phone)? otpRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(String phone)? otpRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_OtpRoute value) otpRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_OtpRoute value)? otpRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_OtpRoute value)? otpRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(String phone) otpRoute,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(String phone)? otpRoute,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(String phone)? otpRoute,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_OtpRoute value) otpRoute,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_OtpRoute value)? otpRoute,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_OtpRoute value)? otpRoute,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_PendingCopyWith<$Res> {
  factory _$$_PendingCopyWith(
          _$_Pending value, $Res Function(_$_Pending) then) =
      __$$_PendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PendingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Pending>
    implements _$$_PendingCopyWith<$Res> {
  __$$_PendingCopyWithImpl(_$_Pending _value, $Res Function(_$_Pending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Pending implements _Pending {
  const _$_Pending();

  @override
  String toString() {
    return 'LoginState.pending()';
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
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(String phone) otpRoute,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(String phone)? otpRoute,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(String phone)? otpRoute,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_OtpRoute value) otpRoute,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_OtpRoute value)? otpRoute,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_OtpRoute value)? otpRoute,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements LoginState {
  const factory _Pending() = _$_Pending;
}

/// @nodoc
abstract class _$$_OtpRouteCopyWith<$Res> {
  factory _$$_OtpRouteCopyWith(
          _$_OtpRoute value, $Res Function(_$_OtpRoute) then) =
      __$$_OtpRouteCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_OtpRouteCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_OtpRoute>
    implements _$$_OtpRouteCopyWith<$Res> {
  __$$_OtpRouteCopyWithImpl(
      _$_OtpRoute _value, $Res Function(_$_OtpRoute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_OtpRoute(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpRoute implements _OtpRoute {
  const _$_OtpRoute({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'LoginState.otpRoute(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpRoute &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpRouteCopyWith<_$_OtpRoute> get copyWith =>
      __$$_OtpRouteCopyWithImpl<_$_OtpRoute>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(String phone) otpRoute,
  }) {
    return otpRoute(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(String phone)? otpRoute,
  }) {
    return otpRoute?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(String phone)? otpRoute,
    required TResult orElse(),
  }) {
    if (otpRoute != null) {
      return otpRoute(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_OtpRoute value) otpRoute,
  }) {
    return otpRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_OtpRoute value)? otpRoute,
  }) {
    return otpRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_OtpRoute value)? otpRoute,
    required TResult orElse(),
  }) {
    if (otpRoute != null) {
      return otpRoute(this);
    }
    return orElse();
  }
}

abstract class _OtpRoute implements LoginState {
  const factory _OtpRoute({required final String phone}) = _$_OtpRoute;

  String get phone;
  @JsonKey(ignore: true)
  _$$_OtpRouteCopyWith<_$_OtpRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
