// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_create_presentation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageCreatePresentationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageFragment> fragments) screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ImageFragment> fragments)? screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageFragment> fragments)? screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCreatePresentationStateCopyWith<$Res> {
  factory $ImageCreatePresentationStateCopyWith(
          ImageCreatePresentationState value,
          $Res Function(ImageCreatePresentationState) then) =
      _$ImageCreatePresentationStateCopyWithImpl<$Res,
          ImageCreatePresentationState>;
}

/// @nodoc
class _$ImageCreatePresentationStateCopyWithImpl<$Res,
        $Val extends ImageCreatePresentationState>
    implements $ImageCreatePresentationStateCopyWith<$Res> {
  _$ImageCreatePresentationStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<ImageFragment> fragments});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$ImageCreatePresentationStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragments = null,
  }) {
    return _then(_$_ScreenState(
      fragments: null == fragments
          ? _value._fragments
          : fragments // ignore: cast_nullable_to_non_nullable
              as List<ImageFragment>,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState({required final List<ImageFragment> fragments})
      : _fragments = fragments;

  final List<ImageFragment> _fragments;
  @override
  List<ImageFragment> get fragments {
    if (_fragments is EqualUnmodifiableListView) return _fragments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fragments);
  }

  @override
  String toString() {
    return 'ImageCreatePresentationState.screenState(fragments: $fragments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            const DeepCollectionEquality()
                .equals(other._fragments, _fragments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fragments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageFragment> fragments) screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return screenState(fragments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ImageFragment> fragments)? screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return screenState?.call(fragments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageFragment> fragments)? screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(fragments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements ImageCreatePresentationState {
  const factory _ScreenState({required final List<ImageFragment> fragments}) =
      _$_ScreenState;

  List<ImageFragment> get fragments;
  @JsonKey(ignore: true)
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateSaveSuccessCopyWith<$Res> {
  factory _$$_StateSaveSuccessCopyWith(
          _$_StateSaveSuccess value, $Res Function(_$_StateSaveSuccess) then) =
      __$$_StateSaveSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateSaveSuccessCopyWithImpl<$Res>
    extends _$ImageCreatePresentationStateCopyWithImpl<$Res,
        _$_StateSaveSuccess> implements _$$_StateSaveSuccessCopyWith<$Res> {
  __$$_StateSaveSuccessCopyWithImpl(
      _$_StateSaveSuccess _value, $Res Function(_$_StateSaveSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateSaveSuccess implements _StateSaveSuccess {
  const _$_StateSaveSuccess();

  @override
  String toString() {
    return 'ImageCreatePresentationState.saveSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateSaveSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageFragment> fragments) screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return saveSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ImageFragment> fragments)? screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return saveSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageFragment> fragments)? screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateSaveSuccess implements ImageCreatePresentationState {
  const factory _StateSaveSuccess() = _$_StateSaveSuccess;
}

/// @nodoc
abstract class _$$_StateSaveErrorCopyWith<$Res> {
  factory _$$_StateSaveErrorCopyWith(
          _$_StateSaveError value, $Res Function(_$_StateSaveError) then) =
      __$$_StateSaveErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StateSaveErrorCopyWithImpl<$Res>
    extends _$ImageCreatePresentationStateCopyWithImpl<$Res, _$_StateSaveError>
    implements _$$_StateSaveErrorCopyWith<$Res> {
  __$$_StateSaveErrorCopyWithImpl(
      _$_StateSaveError _value, $Res Function(_$_StateSaveError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateSaveError implements _StateSaveError {
  const _$_StateSaveError();

  @override
  String toString() {
    return 'ImageCreatePresentationState.saveError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StateSaveError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageFragment> fragments) screenState,
    required TResult Function() saveSuccess,
    required TResult Function() saveError,
  }) {
    return saveError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ImageFragment> fragments)? screenState,
    TResult? Function()? saveSuccess,
    TResult? Function()? saveError,
  }) {
    return saveError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageFragment> fragments)? screenState,
    TResult Function()? saveSuccess,
    TResult Function()? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateSaveSuccess value) saveSuccess,
    required TResult Function(_StateSaveError value) saveError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateSaveSuccess value)? saveSuccess,
    TResult? Function(_StateSaveError value)? saveError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateSaveSuccess value)? saveSuccess,
    TResult Function(_StateSaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class _StateSaveError implements ImageCreatePresentationState {
  const factory _StateSaveError() = _$_StateSaveError;
}

/// @nodoc
mixin _$ImageCreatePresentationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageFragment imageFragment) fragmentAdded,
    required TResult Function(String title, String description)
        saveImageSubject,
    required TResult Function(List<ImageFragment> fragments) onReorderFragments,
    required TResult Function(int index) onDeleteFragment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageFragment imageFragment)? fragmentAdded,
    TResult? Function(String title, String description)? saveImageSubject,
    TResult? Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult? Function(int index)? onDeleteFragment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageFragment imageFragment)? fragmentAdded,
    TResult Function(String title, String description)? saveImageSubject,
    TResult Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult Function(int index)? onDeleteFragment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFragmentAdded value) fragmentAdded,
    required TResult Function(_EventSaveImageSubject value) saveImageSubject,
    required TResult Function(_EventOnReorderFragments value)
        onReorderFragments,
    required TResult Function(_EventOnDeleteFragment value) onDeleteFragment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFragmentAdded value)? fragmentAdded,
    TResult? Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult? Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult? Function(_EventOnDeleteFragment value)? onDeleteFragment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFragmentAdded value)? fragmentAdded,
    TResult Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult Function(_EventOnDeleteFragment value)? onDeleteFragment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCreatePresentationEventCopyWith<$Res> {
  factory $ImageCreatePresentationEventCopyWith(
          ImageCreatePresentationEvent value,
          $Res Function(ImageCreatePresentationEvent) then) =
      _$ImageCreatePresentationEventCopyWithImpl<$Res,
          ImageCreatePresentationEvent>;
}

/// @nodoc
class _$ImageCreatePresentationEventCopyWithImpl<$Res,
        $Val extends ImageCreatePresentationEvent>
    implements $ImageCreatePresentationEventCopyWith<$Res> {
  _$ImageCreatePresentationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventFragmentAddedCopyWith<$Res> {
  factory _$$_EventFragmentAddedCopyWith(_$_EventFragmentAdded value,
          $Res Function(_$_EventFragmentAdded) then) =
      __$$_EventFragmentAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageFragment imageFragment});
}

/// @nodoc
class __$$_EventFragmentAddedCopyWithImpl<$Res>
    extends _$ImageCreatePresentationEventCopyWithImpl<$Res,
        _$_EventFragmentAdded> implements _$$_EventFragmentAddedCopyWith<$Res> {
  __$$_EventFragmentAddedCopyWithImpl(
      _$_EventFragmentAdded _value, $Res Function(_$_EventFragmentAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFragment = null,
  }) {
    return _then(_$_EventFragmentAdded(
      imageFragment: null == imageFragment
          ? _value.imageFragment
          : imageFragment // ignore: cast_nullable_to_non_nullable
              as ImageFragment,
    ));
  }
}

/// @nodoc

class _$_EventFragmentAdded implements _EventFragmentAdded {
  const _$_EventFragmentAdded({required this.imageFragment});

  @override
  final ImageFragment imageFragment;

  @override
  String toString() {
    return 'ImageCreatePresentationEvent.fragmentAdded(imageFragment: $imageFragment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventFragmentAdded &&
            (identical(other.imageFragment, imageFragment) ||
                other.imageFragment == imageFragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventFragmentAddedCopyWith<_$_EventFragmentAdded> get copyWith =>
      __$$_EventFragmentAddedCopyWithImpl<_$_EventFragmentAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageFragment imageFragment) fragmentAdded,
    required TResult Function(String title, String description)
        saveImageSubject,
    required TResult Function(List<ImageFragment> fragments) onReorderFragments,
    required TResult Function(int index) onDeleteFragment,
  }) {
    return fragmentAdded(imageFragment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageFragment imageFragment)? fragmentAdded,
    TResult? Function(String title, String description)? saveImageSubject,
    TResult? Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult? Function(int index)? onDeleteFragment,
  }) {
    return fragmentAdded?.call(imageFragment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageFragment imageFragment)? fragmentAdded,
    TResult Function(String title, String description)? saveImageSubject,
    TResult Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult Function(int index)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (fragmentAdded != null) {
      return fragmentAdded(imageFragment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFragmentAdded value) fragmentAdded,
    required TResult Function(_EventSaveImageSubject value) saveImageSubject,
    required TResult Function(_EventOnReorderFragments value)
        onReorderFragments,
    required TResult Function(_EventOnDeleteFragment value) onDeleteFragment,
  }) {
    return fragmentAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFragmentAdded value)? fragmentAdded,
    TResult? Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult? Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult? Function(_EventOnDeleteFragment value)? onDeleteFragment,
  }) {
    return fragmentAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFragmentAdded value)? fragmentAdded,
    TResult Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult Function(_EventOnDeleteFragment value)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (fragmentAdded != null) {
      return fragmentAdded(this);
    }
    return orElse();
  }
}

abstract class _EventFragmentAdded implements ImageCreatePresentationEvent {
  const factory _EventFragmentAdded(
      {required final ImageFragment imageFragment}) = _$_EventFragmentAdded;

  ImageFragment get imageFragment;
  @JsonKey(ignore: true)
  _$$_EventFragmentAddedCopyWith<_$_EventFragmentAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSaveImageSubjectCopyWith<$Res> {
  factory _$$_EventSaveImageSubjectCopyWith(_$_EventSaveImageSubject value,
          $Res Function(_$_EventSaveImageSubject) then) =
      __$$_EventSaveImageSubjectCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_EventSaveImageSubjectCopyWithImpl<$Res>
    extends _$ImageCreatePresentationEventCopyWithImpl<$Res,
        _$_EventSaveImageSubject>
    implements _$$_EventSaveImageSubjectCopyWith<$Res> {
  __$$_EventSaveImageSubjectCopyWithImpl(_$_EventSaveImageSubject _value,
      $Res Function(_$_EventSaveImageSubject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EventSaveImageSubject(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventSaveImageSubject implements _EventSaveImageSubject {
  const _$_EventSaveImageSubject(
      {required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'ImageCreatePresentationEvent.saveImageSubject(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSaveImageSubject &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSaveImageSubjectCopyWith<_$_EventSaveImageSubject> get copyWith =>
      __$$_EventSaveImageSubjectCopyWithImpl<_$_EventSaveImageSubject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageFragment imageFragment) fragmentAdded,
    required TResult Function(String title, String description)
        saveImageSubject,
    required TResult Function(List<ImageFragment> fragments) onReorderFragments,
    required TResult Function(int index) onDeleteFragment,
  }) {
    return saveImageSubject(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageFragment imageFragment)? fragmentAdded,
    TResult? Function(String title, String description)? saveImageSubject,
    TResult? Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult? Function(int index)? onDeleteFragment,
  }) {
    return saveImageSubject?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageFragment imageFragment)? fragmentAdded,
    TResult Function(String title, String description)? saveImageSubject,
    TResult Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult Function(int index)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (saveImageSubject != null) {
      return saveImageSubject(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFragmentAdded value) fragmentAdded,
    required TResult Function(_EventSaveImageSubject value) saveImageSubject,
    required TResult Function(_EventOnReorderFragments value)
        onReorderFragments,
    required TResult Function(_EventOnDeleteFragment value) onDeleteFragment,
  }) {
    return saveImageSubject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFragmentAdded value)? fragmentAdded,
    TResult? Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult? Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult? Function(_EventOnDeleteFragment value)? onDeleteFragment,
  }) {
    return saveImageSubject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFragmentAdded value)? fragmentAdded,
    TResult Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult Function(_EventOnDeleteFragment value)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (saveImageSubject != null) {
      return saveImageSubject(this);
    }
    return orElse();
  }
}

abstract class _EventSaveImageSubject implements ImageCreatePresentationEvent {
  const factory _EventSaveImageSubject(
      {required final String title,
      required final String description}) = _$_EventSaveImageSubject;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$_EventSaveImageSubjectCopyWith<_$_EventSaveImageSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventOnReorderFragmentsCopyWith<$Res> {
  factory _$$_EventOnReorderFragmentsCopyWith(_$_EventOnReorderFragments value,
          $Res Function(_$_EventOnReorderFragments) then) =
      __$$_EventOnReorderFragmentsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ImageFragment> fragments});
}

/// @nodoc
class __$$_EventOnReorderFragmentsCopyWithImpl<$Res>
    extends _$ImageCreatePresentationEventCopyWithImpl<$Res,
        _$_EventOnReorderFragments>
    implements _$$_EventOnReorderFragmentsCopyWith<$Res> {
  __$$_EventOnReorderFragmentsCopyWithImpl(_$_EventOnReorderFragments _value,
      $Res Function(_$_EventOnReorderFragments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragments = null,
  }) {
    return _then(_$_EventOnReorderFragments(
      fragments: null == fragments
          ? _value._fragments
          : fragments // ignore: cast_nullable_to_non_nullable
              as List<ImageFragment>,
    ));
  }
}

/// @nodoc

class _$_EventOnReorderFragments implements _EventOnReorderFragments {
  const _$_EventOnReorderFragments(
      {required final List<ImageFragment> fragments})
      : _fragments = fragments;

  final List<ImageFragment> _fragments;
  @override
  List<ImageFragment> get fragments {
    if (_fragments is EqualUnmodifiableListView) return _fragments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fragments);
  }

  @override
  String toString() {
    return 'ImageCreatePresentationEvent.onReorderFragments(fragments: $fragments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnReorderFragments &&
            const DeepCollectionEquality()
                .equals(other._fragments, _fragments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fragments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnReorderFragmentsCopyWith<_$_EventOnReorderFragments>
      get copyWith =>
          __$$_EventOnReorderFragmentsCopyWithImpl<_$_EventOnReorderFragments>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageFragment imageFragment) fragmentAdded,
    required TResult Function(String title, String description)
        saveImageSubject,
    required TResult Function(List<ImageFragment> fragments) onReorderFragments,
    required TResult Function(int index) onDeleteFragment,
  }) {
    return onReorderFragments(fragments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageFragment imageFragment)? fragmentAdded,
    TResult? Function(String title, String description)? saveImageSubject,
    TResult? Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult? Function(int index)? onDeleteFragment,
  }) {
    return onReorderFragments?.call(fragments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageFragment imageFragment)? fragmentAdded,
    TResult Function(String title, String description)? saveImageSubject,
    TResult Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult Function(int index)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (onReorderFragments != null) {
      return onReorderFragments(fragments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFragmentAdded value) fragmentAdded,
    required TResult Function(_EventSaveImageSubject value) saveImageSubject,
    required TResult Function(_EventOnReorderFragments value)
        onReorderFragments,
    required TResult Function(_EventOnDeleteFragment value) onDeleteFragment,
  }) {
    return onReorderFragments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFragmentAdded value)? fragmentAdded,
    TResult? Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult? Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult? Function(_EventOnDeleteFragment value)? onDeleteFragment,
  }) {
    return onReorderFragments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFragmentAdded value)? fragmentAdded,
    TResult Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult Function(_EventOnDeleteFragment value)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (onReorderFragments != null) {
      return onReorderFragments(this);
    }
    return orElse();
  }
}

abstract class _EventOnReorderFragments
    implements ImageCreatePresentationEvent {
  const factory _EventOnReorderFragments(
          {required final List<ImageFragment> fragments}) =
      _$_EventOnReorderFragments;

  List<ImageFragment> get fragments;
  @JsonKey(ignore: true)
  _$$_EventOnReorderFragmentsCopyWith<_$_EventOnReorderFragments>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventOnDeleteFragmentCopyWith<$Res> {
  factory _$$_EventOnDeleteFragmentCopyWith(_$_EventOnDeleteFragment value,
          $Res Function(_$_EventOnDeleteFragment) then) =
      __$$_EventOnDeleteFragmentCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_EventOnDeleteFragmentCopyWithImpl<$Res>
    extends _$ImageCreatePresentationEventCopyWithImpl<$Res,
        _$_EventOnDeleteFragment>
    implements _$$_EventOnDeleteFragmentCopyWith<$Res> {
  __$$_EventOnDeleteFragmentCopyWithImpl(_$_EventOnDeleteFragment _value,
      $Res Function(_$_EventOnDeleteFragment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_EventOnDeleteFragment(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventOnDeleteFragment implements _EventOnDeleteFragment {
  const _$_EventOnDeleteFragment({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ImageCreatePresentationEvent.onDeleteFragment(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnDeleteFragment &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventOnDeleteFragmentCopyWith<_$_EventOnDeleteFragment> get copyWith =>
      __$$_EventOnDeleteFragmentCopyWithImpl<_$_EventOnDeleteFragment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageFragment imageFragment) fragmentAdded,
    required TResult Function(String title, String description)
        saveImageSubject,
    required TResult Function(List<ImageFragment> fragments) onReorderFragments,
    required TResult Function(int index) onDeleteFragment,
  }) {
    return onDeleteFragment(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageFragment imageFragment)? fragmentAdded,
    TResult? Function(String title, String description)? saveImageSubject,
    TResult? Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult? Function(int index)? onDeleteFragment,
  }) {
    return onDeleteFragment?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageFragment imageFragment)? fragmentAdded,
    TResult Function(String title, String description)? saveImageSubject,
    TResult Function(List<ImageFragment> fragments)? onReorderFragments,
    TResult Function(int index)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (onDeleteFragment != null) {
      return onDeleteFragment(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFragmentAdded value) fragmentAdded,
    required TResult Function(_EventSaveImageSubject value) saveImageSubject,
    required TResult Function(_EventOnReorderFragments value)
        onReorderFragments,
    required TResult Function(_EventOnDeleteFragment value) onDeleteFragment,
  }) {
    return onDeleteFragment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFragmentAdded value)? fragmentAdded,
    TResult? Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult? Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult? Function(_EventOnDeleteFragment value)? onDeleteFragment,
  }) {
    return onDeleteFragment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFragmentAdded value)? fragmentAdded,
    TResult Function(_EventSaveImageSubject value)? saveImageSubject,
    TResult Function(_EventOnReorderFragments value)? onReorderFragments,
    TResult Function(_EventOnDeleteFragment value)? onDeleteFragment,
    required TResult orElse(),
  }) {
    if (onDeleteFragment != null) {
      return onDeleteFragment(this);
    }
    return orElse();
  }
}

abstract class _EventOnDeleteFragment implements ImageCreatePresentationEvent {
  const factory _EventOnDeleteFragment({required final int index}) =
      _$_EventOnDeleteFragment;

  int get index;
  @JsonKey(ignore: true)
  _$$_EventOnDeleteFragmentCopyWith<_$_EventOnDeleteFragment> get copyWith =>
      throw _privateConstructorUsedError;
}
