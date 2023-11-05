// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirmation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmationEvent {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String code) confirmSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String code)? confirmSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String code)? confirmSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventConfirmationSubmitted value)
        confirmSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConfirmationSubmitted value)? confirmSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConfirmationSubmitted value)? confirmSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmationEventCopyWith<ConfirmationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationEventCopyWith<$Res> {
  factory $ConfirmationEventCopyWith(
          ConfirmationEvent value, $Res Function(ConfirmationEvent) then) =
      _$ConfirmationEventCopyWithImpl<$Res, ConfirmationEvent>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$ConfirmationEventCopyWithImpl<$Res, $Val extends ConfirmationEvent>
    implements $ConfirmationEventCopyWith<$Res> {
  _$ConfirmationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventConfirmationSubmittedCopyWith<$Res>
    implements $ConfirmationEventCopyWith<$Res> {
  factory _$$_EventConfirmationSubmittedCopyWith(
          _$_EventConfirmationSubmitted value,
          $Res Function(_$_EventConfirmationSubmitted) then) =
      __$$_EventConfirmationSubmittedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$_EventConfirmationSubmittedCopyWithImpl<$Res>
    extends _$ConfirmationEventCopyWithImpl<$Res, _$_EventConfirmationSubmitted>
    implements _$$_EventConfirmationSubmittedCopyWith<$Res> {
  __$$_EventConfirmationSubmittedCopyWithImpl(
      _$_EventConfirmationSubmitted _value,
      $Res Function(_$_EventConfirmationSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$_EventConfirmationSubmitted(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventConfirmationSubmitted implements _EventConfirmationSubmitted {
  const _$_EventConfirmationSubmitted(
      {required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmationEvent.confirmSubmitted(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventConfirmationSubmitted &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventConfirmationSubmittedCopyWith<_$_EventConfirmationSubmitted>
      get copyWith => __$$_EventConfirmationSubmittedCopyWithImpl<
          _$_EventConfirmationSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String code) confirmSubmitted,
  }) {
    return confirmSubmitted(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String code)? confirmSubmitted,
  }) {
    return confirmSubmitted?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String code)? confirmSubmitted,
    required TResult orElse(),
  }) {
    if (confirmSubmitted != null) {
      return confirmSubmitted(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventConfirmationSubmitted value)
        confirmSubmitted,
  }) {
    return confirmSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventConfirmationSubmitted value)? confirmSubmitted,
  }) {
    return confirmSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventConfirmationSubmitted value)? confirmSubmitted,
    required TResult orElse(),
  }) {
    if (confirmSubmitted != null) {
      return confirmSubmitted(this);
    }
    return orElse();
  }
}

abstract class _EventConfirmationSubmitted implements ConfirmationEvent {
  const factory _EventConfirmationSubmitted(
      {required final String email,
      required final String code}) = _$_EventConfirmationSubmitted;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_EventConfirmationSubmittedCopyWith<_$_EventConfirmationSubmitted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function() confirmationSuccess,
    required TResult Function(String? errorText) confirmationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? confirmationSuccess,
    TResult? Function(String? errorText)? confirmationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? confirmationSuccess,
    TResult Function(String? errorText)? confirmationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateConfirmationSuccess value)
        confirmationSuccess,
    required TResult Function(_StateConfirmationError value) confirmationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult? Function(_StateConfirmationError value)? confirmationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult Function(_StateConfirmationError value)? confirmationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationStateCopyWith<$Res> {
  factory $ConfirmationStateCopyWith(
          ConfirmationState value, $Res Function(ConfirmationState) then) =
      _$ConfirmationStateCopyWithImpl<$Res, ConfirmationState>;
}

/// @nodoc
class _$ConfirmationStateCopyWithImpl<$Res, $Val extends ConfirmationState>
    implements $ConfirmationStateCopyWith<$Res> {
  _$ConfirmationStateCopyWithImpl(this._value, this._then);

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
    extends _$ConfirmationStateCopyWithImpl<$Res, _$_ScreenState>
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
  const _$_ScreenState({required this.isPending});

  @override
  final bool isPending;

  @override
  String toString() {
    return 'ConfirmationState.screenState(isPending: $isPending)';
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
    required TResult Function() confirmationSuccess,
    required TResult Function(String? errorText) confirmationError,
  }) {
    return screenState(isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? confirmationSuccess,
    TResult? Function(String? errorText)? confirmationError,
  }) {
    return screenState?.call(isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? confirmationSuccess,
    TResult Function(String? errorText)? confirmationError,
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
    required TResult Function(_StateConfirmationSuccess value)
        confirmationSuccess,
    required TResult Function(_StateConfirmationError value) confirmationError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult? Function(_StateConfirmationError value)? confirmationError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult Function(_StateConfirmationError value)? confirmationError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements ConfirmationState {
  const factory _ScreenState({required final bool isPending}) = _$_ScreenState;

  bool get isPending;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateConfirmationSuccessCopyWith<$Res> {
  factory _$$_StateConfirmationSuccessCopyWith(
          _$_StateConfirmationSuccess value,
          $Res Function(_$_StateConfirmationSuccess) then) =
      __$$_StateConfirmationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateConfirmationSuccessCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$_StateConfirmationSuccess>
    implements _$$_StateConfirmationSuccessCopyWith<$Res> {
  __$$_StateConfirmationSuccessCopyWithImpl(_$_StateConfirmationSuccess _value,
      $Res Function(_$_StateConfirmationSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateConfirmationSuccess implements _StateConfirmationSuccess {
  const _$_StateConfirmationSuccess();

  @override
  String toString() {
    return 'ConfirmationState.confirmationSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateConfirmationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function() confirmationSuccess,
    required TResult Function(String? errorText) confirmationError,
  }) {
    return confirmationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? confirmationSuccess,
    TResult? Function(String? errorText)? confirmationError,
  }) {
    return confirmationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? confirmationSuccess,
    TResult Function(String? errorText)? confirmationError,
    required TResult orElse(),
  }) {
    if (confirmationSuccess != null) {
      return confirmationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateConfirmationSuccess value)
        confirmationSuccess,
    required TResult Function(_StateConfirmationError value) confirmationError,
  }) {
    return confirmationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult? Function(_StateConfirmationError value)? confirmationError,
  }) {
    return confirmationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult Function(_StateConfirmationError value)? confirmationError,
    required TResult orElse(),
  }) {
    if (confirmationSuccess != null) {
      return confirmationSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateConfirmationSuccess implements ConfirmationState {
  const factory _StateConfirmationSuccess() = _$_StateConfirmationSuccess;
}

/// @nodoc
abstract class _$$_StateConfirmationErrorCopyWith<$Res> {
  factory _$$_StateConfirmationErrorCopyWith(_$_StateConfirmationError value,
          $Res Function(_$_StateConfirmationError) then) =
      __$$_StateConfirmationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateConfirmationErrorCopyWithImpl<$Res>
    extends _$ConfirmationStateCopyWithImpl<$Res, _$_StateConfirmationError>
    implements _$$_StateConfirmationErrorCopyWith<$Res> {
  __$$_StateConfirmationErrorCopyWithImpl(_$_StateConfirmationError _value,
      $Res Function(_$_StateConfirmationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateConfirmationError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateConfirmationError implements _StateConfirmationError {
  const _$_StateConfirmationError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'ConfirmationState.confirmationError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateConfirmationError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateConfirmationErrorCopyWith<_$_StateConfirmationError> get copyWith =>
      __$$_StateConfirmationErrorCopyWithImpl<_$_StateConfirmationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPending) screenState,
    required TResult Function() confirmationSuccess,
    required TResult Function(String? errorText) confirmationError,
  }) {
    return confirmationError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPending)? screenState,
    TResult? Function()? confirmationSuccess,
    TResult? Function(String? errorText)? confirmationError,
  }) {
    return confirmationError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPending)? screenState,
    TResult Function()? confirmationSuccess,
    TResult Function(String? errorText)? confirmationError,
    required TResult orElse(),
  }) {
    if (confirmationError != null) {
      return confirmationError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateConfirmationSuccess value)
        confirmationSuccess,
    required TResult Function(_StateConfirmationError value) confirmationError,
  }) {
    return confirmationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult? Function(_StateConfirmationError value)? confirmationError,
  }) {
    return confirmationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateConfirmationSuccess value)? confirmationSuccess,
    TResult Function(_StateConfirmationError value)? confirmationError,
    required TResult orElse(),
  }) {
    if (confirmationError != null) {
      return confirmationError(this);
    }
    return orElse();
  }
}

abstract class _StateConfirmationError implements ConfirmationState {
  const factory _StateConfirmationError({final String? errorText}) =
      _$_StateConfirmationError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateConfirmationErrorCopyWith<_$_StateConfirmationError> get copyWith =>
      throw _privateConstructorUsedError;
}
