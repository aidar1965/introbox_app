// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() logout,
    required TResult Function(String firstname, String lastname,
            String? secondname, String? about, String? image)
        updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? logout,
    TResult? Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? logout,
    TResult Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateUser value) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateUser value)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventDataRequestedCopyWith<$Res> {
  factory _$$_EventDataRequestedCopyWith(_$_EventDataRequested value,
          $Res Function(_$_EventDataRequested) then) =
      __$$_EventDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventDataRequestedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_EventDataRequested>
    implements _$$_EventDataRequestedCopyWith<$Res> {
  __$$_EventDataRequestedCopyWithImpl(
      _$_EventDataRequested _value, $Res Function(_$_EventDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventDataRequested implements _EventDataRequested {
  const _$_EventDataRequested();

  @override
  String toString() {
    return 'ProfileEvent.dataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventDataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() logout,
    required TResult Function(String firstname, String lastname,
            String? secondname, String? about, String? image)
        updateUser,
  }) {
    return dataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? logout,
    TResult? Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
  }) {
    return dataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? logout,
    TResult Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return dataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return dataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventDataRequested implements ProfileEvent {
  const factory _EventDataRequested() = _$_EventDataRequested;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'ProfileEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() logout,
    required TResult Function(String firstname, String lastname,
            String? secondname, String? about, String? image)
        updateUser,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? logout,
    TResult? Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? logout,
    TResult Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements ProfileEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_UpdateUserCopyWith<$Res> {
  factory _$$_UpdateUserCopyWith(
          _$_UpdateUser value, $Res Function(_$_UpdateUser) then) =
      __$$_UpdateUserCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String? secondname,
      String? about,
      String? image});
}

/// @nodoc
class __$$_UpdateUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_UpdateUser>
    implements _$$_UpdateUserCopyWith<$Res> {
  __$$_UpdateUserCopyWithImpl(
      _$_UpdateUser _value, $Res Function(_$_UpdateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? secondname = freezed,
    Object? about = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_UpdateUser(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      secondname: freezed == secondname
          ? _value.secondname
          : secondname // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateUser implements _UpdateUser {
  const _$_UpdateUser(
      {required this.firstname,
      required this.lastname,
      this.secondname,
      this.about,
      this.image});

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String? secondname;
  @override
  final String? about;
  @override
  final String? image;

  @override
  String toString() {
    return 'ProfileEvent.updateUser(firstname: $firstname, lastname: $lastname, secondname: $secondname, about: $about, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUser &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.secondname, secondname) ||
                other.secondname == secondname) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstname, lastname, secondname, about, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserCopyWith<_$_UpdateUser> get copyWith =>
      __$$_UpdateUserCopyWithImpl<_$_UpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataRequested,
    required TResult Function() logout,
    required TResult Function(String firstname, String lastname,
            String? secondname, String? about, String? image)
        updateUser,
  }) {
    return updateUser(firstname, lastname, secondname, about, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dataRequested,
    TResult? Function()? logout,
    TResult? Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
  }) {
    return updateUser?.call(firstname, lastname, secondname, about, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataRequested,
    TResult Function()? logout,
    TResult Function(String firstname, String lastname, String? secondname,
            String? about, String? image)?
        updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(firstname, lastname, secondname, about, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateUser value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements ProfileEvent {
  const factory _UpdateUser(
      {required final String firstname,
      required final String lastname,
      final String? secondname,
      final String? about,
      final String? image}) = _$_UpdateUser;

  String get firstname;
  String get lastname;
  String? get secondname;
  String? get about;
  String? get image;
  @JsonKey(ignore: true)
  _$$_UpdateUserCopyWith<_$_UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(User user) screenState,
    required TResult Function() loadingError,
    required TResult Function() logoutSuccess,
    required TResult Function(String? errorText) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? screenState,
    TResult? Function()? loadingError,
    TResult? Function()? logoutSuccess,
    TResult? Function(String? errorText)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? screenState,
    TResult Function()? loadingError,
    TResult Function()? logoutSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLogoutSuccess value) logoutSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'ProfileState.pending()';
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
    required TResult Function(User user) screenState,
    required TResult Function() loadingError,
    required TResult Function() logoutSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? screenState,
    TResult? Function()? loadingError,
    TResult? Function()? logoutSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? screenState,
    TResult Function()? loadingError,
    TResult Function()? logoutSuccess,
    TResult Function(String? errorText)? requestError,
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
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLogoutSuccess value) logoutSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements ProfileState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_ScreenState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileState.screenState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(User user) screenState,
    required TResult Function() loadingError,
    required TResult Function() logoutSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return screenState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? screenState,
    TResult? Function()? loadingError,
    TResult? Function()? logoutSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return screenState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? screenState,
    TResult Function()? loadingError,
    TResult Function()? logoutSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLogoutSuccess value) logoutSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements ProfileState {
  const factory _ScreenState({required final User user}) = _$_ScreenState;

  User get user;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
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
    extends _$ProfileStateCopyWithImpl<$Res, _$_StateLoadingError>
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
    return 'ProfileState.loadingError()';
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
    required TResult Function(User user) screenState,
    required TResult Function() loadingError,
    required TResult Function() logoutSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return loadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? screenState,
    TResult? Function()? loadingError,
    TResult? Function()? logoutSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return loadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? screenState,
    TResult Function()? loadingError,
    TResult Function()? logoutSuccess,
    TResult Function(String? errorText)? requestError,
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
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLogoutSuccess value) logoutSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingError implements ProfileState {
  const factory _StateLoadingError() = _$_StateLoadingError;
}

/// @nodoc
abstract class _$$_StateLogoutSuccessCopyWith<$Res> {
  factory _$$_StateLogoutSuccessCopyWith(_$_StateLogoutSuccess value,
          $Res Function(_$_StateLogoutSuccess) then) =
      __$$_StateLogoutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateLogoutSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_StateLogoutSuccess>
    implements _$$_StateLogoutSuccessCopyWith<$Res> {
  __$$_StateLogoutSuccessCopyWithImpl(
      _$_StateLogoutSuccess _value, $Res Function(_$_StateLogoutSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateLogoutSuccess implements _StateLogoutSuccess {
  const _$_StateLogoutSuccess();

  @override
  String toString() {
    return 'ProfileState.logoutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateLogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(User user) screenState,
    required TResult Function() loadingError,
    required TResult Function() logoutSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? screenState,
    TResult? Function()? loadingError,
    TResult? Function()? logoutSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? screenState,
    TResult Function()? loadingError,
    TResult Function()? logoutSuccess,
    TResult Function(String? errorText)? requestError,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLogoutSuccess value) logoutSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateLogoutSuccess implements ProfileState {
  const factory _StateLogoutSuccess() = _$_StateLogoutSuccess;
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
    extends _$ProfileStateCopyWithImpl<$Res, _$_StateRequestError>
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
    return 'ProfileState.requestError(errorText: $errorText)';
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
    required TResult Function(User user) screenState,
    required TResult Function() loadingError,
    required TResult Function() logoutSuccess,
    required TResult Function(String? errorText) requestError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(User user)? screenState,
    TResult? Function()? loadingError,
    TResult? Function()? logoutSuccess,
    TResult? Function(String? errorText)? requestError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(User user)? screenState,
    TResult Function()? loadingError,
    TResult Function()? logoutSuccess,
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
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StateLogoutSuccess value) logoutSuccess,
    required TResult Function(_StateRequestError value) requestError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult? Function(_StateRequestError value)? requestError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StateLogoutSuccess value)? logoutSuccess,
    TResult Function(_StateRequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements ProfileState {
  const factory _StateRequestError({final String? errorText}) =
      _$_StateRequestError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateRequestErrorCopyWith<_$_StateRequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
