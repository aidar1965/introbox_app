// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompaniesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Company> companies) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(bool isPending) initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Company> companies)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(bool isPending)? initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Company> companies)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(bool isPending)? initialLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesStateCopyWith<$Res> {
  factory $CompaniesStateCopyWith(
          CompaniesState value, $Res Function(CompaniesState) then) =
      _$CompaniesStateCopyWithImpl<$Res, CompaniesState>;
}

/// @nodoc
class _$CompaniesStateCopyWithImpl<$Res, $Val extends CompaniesState>
    implements $CompaniesStateCopyWith<$Res> {
  _$CompaniesStateCopyWithImpl(this._value, this._then);

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
    extends _$CompaniesStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'CompaniesState.pending()';
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
    required TResult Function(List<Company> companies) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(bool isPending) initialLoadingError,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Company> companies)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(bool isPending)? initialLoadingError,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Company> companies)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(bool isPending)? initialLoadingError,
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
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements CompaniesState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Company> companies});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$CompaniesStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
  }) {
    return _then(_$_ScreenState(
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState({required final List<Company> companies})
      : _companies = companies;

  final List<Company> _companies;
  @override
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'CompaniesState.screenState(companies: $companies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_companies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Company> companies) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(bool isPending) initialLoadingError,
  }) {
    return screenState(companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Company> companies)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(bool isPending)? initialLoadingError,
  }) {
    return screenState?.call(companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Company> companies)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(bool isPending)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements CompaniesState {
  const factory _ScreenState({required final List<Company> companies}) =
      _$_ScreenState;

  List<Company> get companies;
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
    extends _$CompaniesStateCopyWithImpl<$Res, _$_StateRequestError>
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
    return 'CompaniesState.requestError(errorText: $errorText)';
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
    required TResult Function(List<Company> companies) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(bool isPending) initialLoadingError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Company> companies)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(bool isPending)? initialLoadingError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Company> companies)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(bool isPending)? initialLoadingError,
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
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements CompaniesState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
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
    extends _$CompaniesStateCopyWithImpl<$Res, _$_StateRequestSuccess>
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
    return 'CompaniesState.requestSuccess()';
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
    required TResult Function() pending,
    required TResult Function(List<Company> companies) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(bool isPending) initialLoadingError,
  }) {
    return requestSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Company> companies)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(bool isPending)? initialLoadingError,
  }) {
    return requestSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Company> companies)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(bool isPending)? initialLoadingError,
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
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) {
    return requestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) {
    return requestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateRequestSuccess implements CompaniesState {
  const factory _StateRequestSuccess() = _$_StateRequestSuccess;
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
    extends _$CompaniesStateCopyWithImpl<$Res, _$_StateInitialLoadingError>
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
    return 'CompaniesState.initialLoadingError(isPending: $isPending)';
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
    required TResult Function(List<Company> companies) screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(bool isPending) initialLoadingError,
  }) {
    return initialLoadingError(isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Company> companies)? screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(bool isPending)? initialLoadingError,
  }) {
    return initialLoadingError?.call(isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Company> companies)? screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(bool isPending)? initialLoadingError,
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
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateInitialLoadingError value)
        initialLoadingError,
  }) {
    return initialLoadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateInitialLoadingError value)? initialLoadingError,
  }) {
    return initialLoadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateInitialLoadingError value)? initialLoadingError,
    required TResult orElse(),
  }) {
    if (initialLoadingError != null) {
      return initialLoadingError(this);
    }
    return orElse();
  }
}

abstract class _StateInitialLoadingError implements CompaniesState {
  const factory _StateInitialLoadingError({final bool isPending}) =
      _$_StateInitialLoadingError;

  bool get isPending;
  @JsonKey(ignore: true)
  _$$_StateInitialLoadingErrorCopyWith<_$_StateInitialLoadingError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompaniesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(String name, String? website) onCreateCompany,
    required TResult Function(
            Company selectedCompany, String name, String? website)
        onEditCompany,
    required TResult Function(String id) onDeleteCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String name, String? website)? onCreateCompany,
    TResult? Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult? Function(String id)? onDeleteCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String name, String? website)? onCreateCompany,
    TResult Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult Function(String id)? onDeleteCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateCompany value) onCreateCompany,
    required TResult Function(_EventOnEditCompany value) onEditCompany,
    required TResult Function(_EventOnDeleteCompany value) onDeleteCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult? Function(_EventOnEditCompany value)? onEditCompany,
    TResult? Function(_EventOnDeleteCompany value)? onDeleteCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult Function(_EventOnEditCompany value)? onEditCompany,
    TResult Function(_EventOnDeleteCompany value)? onDeleteCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesEventCopyWith<$Res> {
  factory $CompaniesEventCopyWith(
          CompaniesEvent value, $Res Function(CompaniesEvent) then) =
      _$CompaniesEventCopyWithImpl<$Res, CompaniesEvent>;
}

/// @nodoc
class _$CompaniesEventCopyWithImpl<$Res, $Val extends CompaniesEvent>
    implements $CompaniesEventCopyWith<$Res> {
  _$CompaniesEventCopyWithImpl(this._value, this._then);

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
    extends _$CompaniesEventCopyWithImpl<$Res, _$_EventInitialDataRequested>
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
    return 'CompaniesEvent.initialDataRequested()';
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
    required TResult Function(String name, String? website) onCreateCompany,
    required TResult Function(
            Company selectedCompany, String name, String? website)
        onEditCompany,
    required TResult Function(String id) onDeleteCompany,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String name, String? website)? onCreateCompany,
    TResult? Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult? Function(String id)? onDeleteCompany,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String name, String? website)? onCreateCompany,
    TResult Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult Function(String id)? onDeleteCompany,
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
    required TResult Function(_EventOnCreateCompany value) onCreateCompany,
    required TResult Function(_EventOnEditCompany value) onEditCompany,
    required TResult Function(_EventOnDeleteCompany value) onDeleteCompany,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult? Function(_EventOnEditCompany value)? onEditCompany,
    TResult? Function(_EventOnDeleteCompany value)? onDeleteCompany,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult Function(_EventOnEditCompany value)? onEditCompany,
    TResult Function(_EventOnDeleteCompany value)? onDeleteCompany,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements CompaniesEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventOnCreateCompanyCopyWith<$Res> {
  factory _$$_EventOnCreateCompanyCopyWith(_$_EventOnCreateCompany value,
          $Res Function(_$_EventOnCreateCompany) then) =
      __$$_EventOnCreateCompanyCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String? website});
}

/// @nodoc
class __$$_EventOnCreateCompanyCopyWithImpl<$Res>
    extends _$CompaniesEventCopyWithImpl<$Res, _$_EventOnCreateCompany>
    implements _$$_EventOnCreateCompanyCopyWith<$Res> {
  __$$_EventOnCreateCompanyCopyWithImpl(_$_EventOnCreateCompany _value,
      $Res Function(_$_EventOnCreateCompany) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? website = freezed,
  }) {
    return _then(_$_EventOnCreateCompany(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EventOnCreateCompany implements _EventOnCreateCompany {
  const _$_EventOnCreateCompany({required this.name, this.website});

  @override
  final String name;
  @override
  final String? website;

  @override
  String toString() {
    return 'CompaniesEvent.onCreateCompany(name: $name, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnCreateCompany &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.website, website) || other.website == website));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnCreateCompanyCopyWith<_$_EventOnCreateCompany> get copyWith =>
      __$$_EventOnCreateCompanyCopyWithImpl<_$_EventOnCreateCompany>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(String name, String? website) onCreateCompany,
    required TResult Function(
            Company selectedCompany, String name, String? website)
        onEditCompany,
    required TResult Function(String id) onDeleteCompany,
  }) {
    return onCreateCompany(name, website);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String name, String? website)? onCreateCompany,
    TResult? Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult? Function(String id)? onDeleteCompany,
  }) {
    return onCreateCompany?.call(name, website);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String name, String? website)? onCreateCompany,
    TResult Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult Function(String id)? onDeleteCompany,
    required TResult orElse(),
  }) {
    if (onCreateCompany != null) {
      return onCreateCompany(name, website);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateCompany value) onCreateCompany,
    required TResult Function(_EventOnEditCompany value) onEditCompany,
    required TResult Function(_EventOnDeleteCompany value) onDeleteCompany,
  }) {
    return onCreateCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult? Function(_EventOnEditCompany value)? onEditCompany,
    TResult? Function(_EventOnDeleteCompany value)? onDeleteCompany,
  }) {
    return onCreateCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult Function(_EventOnEditCompany value)? onEditCompany,
    TResult Function(_EventOnDeleteCompany value)? onDeleteCompany,
    required TResult orElse(),
  }) {
    if (onCreateCompany != null) {
      return onCreateCompany(this);
    }
    return orElse();
  }
}

abstract class _EventOnCreateCompany implements CompaniesEvent {
  const factory _EventOnCreateCompany(
      {required final String name,
      final String? website}) = _$_EventOnCreateCompany;

  String get name;
  String? get website;
  @JsonKey(ignore: true)
  _$$_EventOnCreateCompanyCopyWith<_$_EventOnCreateCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventOnEditCompanyCopyWith<$Res> {
  factory _$$_EventOnEditCompanyCopyWith(_$_EventOnEditCompany value,
          $Res Function(_$_EventOnEditCompany) then) =
      __$$_EventOnEditCompanyCopyWithImpl<$Res>;
  @useResult
  $Res call({Company selectedCompany, String name, String? website});
}

/// @nodoc
class __$$_EventOnEditCompanyCopyWithImpl<$Res>
    extends _$CompaniesEventCopyWithImpl<$Res, _$_EventOnEditCompany>
    implements _$$_EventOnEditCompanyCopyWith<$Res> {
  __$$_EventOnEditCompanyCopyWithImpl(
      _$_EventOnEditCompany _value, $Res Function(_$_EventOnEditCompany) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCompany = null,
    Object? name = null,
    Object? website = freezed,
  }) {
    return _then(_$_EventOnEditCompany(
      selectedCompany: null == selectedCompany
          ? _value.selectedCompany
          : selectedCompany // ignore: cast_nullable_to_non_nullable
              as Company,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EventOnEditCompany implements _EventOnEditCompany {
  const _$_EventOnEditCompany(
      {required this.selectedCompany, required this.name, this.website});

  @override
  final Company selectedCompany;
  @override
  final String name;
  @override
  final String? website;

  @override
  String toString() {
    return 'CompaniesEvent.onEditCompany(selectedCompany: $selectedCompany, name: $name, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnEditCompany &&
            (identical(other.selectedCompany, selectedCompany) ||
                other.selectedCompany == selectedCompany) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.website, website) || other.website == website));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCompany, name, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnEditCompanyCopyWith<_$_EventOnEditCompany> get copyWith =>
      __$$_EventOnEditCompanyCopyWithImpl<_$_EventOnEditCompany>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(String name, String? website) onCreateCompany,
    required TResult Function(
            Company selectedCompany, String name, String? website)
        onEditCompany,
    required TResult Function(String id) onDeleteCompany,
  }) {
    return onEditCompany(selectedCompany, name, website);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String name, String? website)? onCreateCompany,
    TResult? Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult? Function(String id)? onDeleteCompany,
  }) {
    return onEditCompany?.call(selectedCompany, name, website);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String name, String? website)? onCreateCompany,
    TResult Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult Function(String id)? onDeleteCompany,
    required TResult orElse(),
  }) {
    if (onEditCompany != null) {
      return onEditCompany(selectedCompany, name, website);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateCompany value) onCreateCompany,
    required TResult Function(_EventOnEditCompany value) onEditCompany,
    required TResult Function(_EventOnDeleteCompany value) onDeleteCompany,
  }) {
    return onEditCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult? Function(_EventOnEditCompany value)? onEditCompany,
    TResult? Function(_EventOnDeleteCompany value)? onDeleteCompany,
  }) {
    return onEditCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult Function(_EventOnEditCompany value)? onEditCompany,
    TResult Function(_EventOnDeleteCompany value)? onDeleteCompany,
    required TResult orElse(),
  }) {
    if (onEditCompany != null) {
      return onEditCompany(this);
    }
    return orElse();
  }
}

abstract class _EventOnEditCompany implements CompaniesEvent {
  const factory _EventOnEditCompany(
      {required final Company selectedCompany,
      required final String name,
      final String? website}) = _$_EventOnEditCompany;

  Company get selectedCompany;
  String get name;
  String? get website;
  @JsonKey(ignore: true)
  _$$_EventOnEditCompanyCopyWith<_$_EventOnEditCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventOnDeleteCompanyCopyWith<$Res> {
  factory _$$_EventOnDeleteCompanyCopyWith(_$_EventOnDeleteCompany value,
          $Res Function(_$_EventOnDeleteCompany) then) =
      __$$_EventOnDeleteCompanyCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_EventOnDeleteCompanyCopyWithImpl<$Res>
    extends _$CompaniesEventCopyWithImpl<$Res, _$_EventOnDeleteCompany>
    implements _$$_EventOnDeleteCompanyCopyWith<$Res> {
  __$$_EventOnDeleteCompanyCopyWithImpl(_$_EventOnDeleteCompany _value,
      $Res Function(_$_EventOnDeleteCompany) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_EventOnDeleteCompany(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventOnDeleteCompany implements _EventOnDeleteCompany {
  const _$_EventOnDeleteCompany({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CompaniesEvent.onDeleteCompany(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnDeleteCompany &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnDeleteCompanyCopyWith<_$_EventOnDeleteCompany> get copyWith =>
      __$$_EventOnDeleteCompanyCopyWithImpl<_$_EventOnDeleteCompany>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(String name, String? website) onCreateCompany,
    required TResult Function(
            Company selectedCompany, String name, String? website)
        onEditCompany,
    required TResult Function(String id) onDeleteCompany,
  }) {
    return onDeleteCompany(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(String name, String? website)? onCreateCompany,
    TResult? Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult? Function(String id)? onDeleteCompany,
  }) {
    return onDeleteCompany?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(String name, String? website)? onCreateCompany,
    TResult Function(Company selectedCompany, String name, String? website)?
        onEditCompany,
    TResult Function(String id)? onDeleteCompany,
    required TResult orElse(),
  }) {
    if (onDeleteCompany != null) {
      return onDeleteCompany(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnCreateCompany value) onCreateCompany,
    required TResult Function(_EventOnEditCompany value) onEditCompany,
    required TResult Function(_EventOnDeleteCompany value) onDeleteCompany,
  }) {
    return onDeleteCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult? Function(_EventOnEditCompany value)? onEditCompany,
    TResult? Function(_EventOnDeleteCompany value)? onDeleteCompany,
  }) {
    return onDeleteCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnCreateCompany value)? onCreateCompany,
    TResult Function(_EventOnEditCompany value)? onEditCompany,
    TResult Function(_EventOnDeleteCompany value)? onDeleteCompany,
    required TResult orElse(),
  }) {
    if (onDeleteCompany != null) {
      return onDeleteCompany(this);
    }
    return orElse();
  }
}

abstract class _EventOnDeleteCompany implements CompaniesEvent {
  const factory _EventOnDeleteCompany({required final String id}) =
      _$_EventOnDeleteCompany;

  String get id;
  @JsonKey(ignore: true)
  _$$_EventOnDeleteCompanyCopyWith<_$_EventOnDeleteCompany> get copyWith =>
      throw _privateConstructorUsedError;
}
