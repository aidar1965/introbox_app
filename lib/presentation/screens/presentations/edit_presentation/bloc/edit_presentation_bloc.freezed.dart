// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_presentation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditPresentationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateRequestError value) requestError,
    required TResult Function(_StateRequestSuccess value) requestSuccess,
    required TResult Function(_StateLoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateRequestError value)? requestError,
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
    TResult? Function(_StateLoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateRequestError value)? requestError,
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPresentationStateCopyWith<$Res> {
  factory $EditPresentationStateCopyWith(EditPresentationState value,
          $Res Function(EditPresentationState) then) =
      _$EditPresentationStateCopyWithImpl<$Res, EditPresentationState>;
}

/// @nodoc
class _$EditPresentationStateCopyWithImpl<$Res,
        $Val extends EditPresentationState>
    implements $EditPresentationStateCopyWith<$Res> {
  _$EditPresentationStateCopyWithImpl(this._value, this._then);

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
    extends _$EditPresentationStateCopyWithImpl<$Res, _$_StatePending>
    implements _$$_StatePendingCopyWith<$Res> {
  __$$_StatePendingCopyWithImpl(
      _$_StatePending _value, $Res Function(_$_StatePending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StatePending with DiagnosticableTreeMixin implements _StatePending {
  const _$_StatePending();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationState.pending()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'EditPresentationState.pending'));
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
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) loadingError,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? loadingError,
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
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
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
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements EditPresentationState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_ScreenStateCopyWith<$Res> {
  factory _$$_ScreenStateCopyWith(
          _$_ScreenState value, $Res Function(_$_ScreenState) then) =
      __$$_ScreenStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<PdfFragment> fragments,
      PdfFragment? selectedFragment,
      bool presentationUpdatePending,
      bool fragmentUpdatePending,
      bool deleteFragmentPending});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$EditPresentationStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? fragments = null,
    Object? selectedFragment = freezed,
    Object? presentationUpdatePending = null,
    Object? fragmentUpdatePending = null,
    Object? deleteFragmentPending = null,
  }) {
    return _then(_$_ScreenState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fragments: null == fragments
          ? _value._fragments
          : fragments // ignore: cast_nullable_to_non_nullable
              as List<PdfFragment>,
      selectedFragment: freezed == selectedFragment
          ? _value.selectedFragment
          : selectedFragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment?,
      presentationUpdatePending: null == presentationUpdatePending
          ? _value.presentationUpdatePending
          : presentationUpdatePending // ignore: cast_nullable_to_non_nullable
              as bool,
      fragmentUpdatePending: null == fragmentUpdatePending
          ? _value.fragmentUpdatePending
          : fragmentUpdatePending // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteFragmentPending: null == deleteFragmentPending
          ? _value.deleteFragmentPending
          : deleteFragmentPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ScreenState with DiagnosticableTreeMixin implements _ScreenState {
  const _$_ScreenState(
      {required this.title,
      required this.description,
      required final List<PdfFragment> fragments,
      this.selectedFragment,
      this.presentationUpdatePending = false,
      this.fragmentUpdatePending = false,
      this.deleteFragmentPending = false})
      : _fragments = fragments;

  @override
  final String title;
  @override
  final String description;
  final List<PdfFragment> _fragments;
  @override
  List<PdfFragment> get fragments {
    if (_fragments is EqualUnmodifiableListView) return _fragments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fragments);
  }

  @override
  final PdfFragment? selectedFragment;
  @override
  @JsonKey()
  final bool presentationUpdatePending;
  @override
  @JsonKey()
  final bool fragmentUpdatePending;
  @override
  @JsonKey()
  final bool deleteFragmentPending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationState.screenState(title: $title, description: $description, fragments: $fragments, selectedFragment: $selectedFragment, presentationUpdatePending: $presentationUpdatePending, fragmentUpdatePending: $fragmentUpdatePending, deleteFragmentPending: $deleteFragmentPending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditPresentationState.screenState'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('fragments', fragments))
      ..add(DiagnosticsProperty('selectedFragment', selectedFragment))
      ..add(DiagnosticsProperty(
          'presentationUpdatePending', presentationUpdatePending))
      ..add(DiagnosticsProperty('fragmentUpdatePending', fragmentUpdatePending))
      ..add(
          DiagnosticsProperty('deleteFragmentPending', deleteFragmentPending));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._fragments, _fragments) &&
            (identical(other.selectedFragment, selectedFragment) ||
                other.selectedFragment == selectedFragment) &&
            (identical(other.presentationUpdatePending,
                    presentationUpdatePending) ||
                other.presentationUpdatePending == presentationUpdatePending) &&
            (identical(other.fragmentUpdatePending, fragmentUpdatePending) ||
                other.fragmentUpdatePending == fragmentUpdatePending) &&
            (identical(other.deleteFragmentPending, deleteFragmentPending) ||
                other.deleteFragmentPending == deleteFragmentPending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_fragments),
      selectedFragment,
      presentationUpdatePending,
      fragmentUpdatePending,
      deleteFragmentPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) loadingError,
  }) {
    return screenState(
        title,
        description,
        fragments,
        selectedFragment,
        presentationUpdatePending,
        fragmentUpdatePending,
        deleteFragmentPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return screenState?.call(
        title,
        description,
        fragments,
        selectedFragment,
        presentationUpdatePending,
        fragmentUpdatePending,
        deleteFragmentPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? loadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(
          title,
          description,
          fragments,
          selectedFragment,
          presentationUpdatePending,
          fragmentUpdatePending,
          deleteFragmentPending);
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
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
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
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements EditPresentationState {
  const factory _ScreenState(
      {required final String title,
      required final String description,
      required final List<PdfFragment> fragments,
      final PdfFragment? selectedFragment,
      final bool presentationUpdatePending,
      final bool fragmentUpdatePending,
      final bool deleteFragmentPending}) = _$_ScreenState;

  String get title;
  String get description;
  List<PdfFragment> get fragments;
  PdfFragment? get selectedFragment;
  bool get presentationUpdatePending;
  bool get fragmentUpdatePending;
  bool get deleteFragmentPending;
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
    extends _$EditPresentationStateCopyWithImpl<$Res, _$_StateRequestError>
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

class _$_StateRequestError
    with DiagnosticableTreeMixin
    implements _StateRequestError {
  const _$_StateRequestError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationState.requestError(errorText: $errorText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditPresentationState.requestError'))
      ..add(DiagnosticsProperty('errorText', errorText));
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
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) loadingError,
  }) {
    return requestError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return requestError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? loadingError,
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
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
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
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _StateRequestError implements EditPresentationState {
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
    extends _$EditPresentationStateCopyWithImpl<$Res, _$_StateRequestSuccess>
    implements _$$_StateRequestSuccessCopyWith<$Res> {
  __$$_StateRequestSuccessCopyWithImpl(_$_StateRequestSuccess _value,
      $Res Function(_$_StateRequestSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StateRequestSuccess
    with DiagnosticableTreeMixin
    implements _StateRequestSuccess {
  const _$_StateRequestSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationState.requestSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'EditPresentationState.requestSuccess'));
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
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) loadingError,
  }) {
    return requestSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return requestSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? loadingError,
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
    required TResult Function(_StateLoadingError value) loadingError,
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
    TResult? Function(_StateLoadingError value)? loadingError,
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
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess(this);
    }
    return orElse();
  }
}

abstract class _StateRequestSuccess implements EditPresentationState {
  const factory _StateRequestSuccess() = _$_StateRequestSuccess;
}

/// @nodoc
abstract class _$$_StateLoadingErrorCopyWith<$Res> {
  factory _$$_StateLoadingErrorCopyWith(_$_StateLoadingError value,
          $Res Function(_$_StateLoadingError) then) =
      __$$_StateLoadingErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateLoadingErrorCopyWithImpl<$Res>
    extends _$EditPresentationStateCopyWithImpl<$Res, _$_StateLoadingError>
    implements _$$_StateLoadingErrorCopyWith<$Res> {
  __$$_StateLoadingErrorCopyWithImpl(
      _$_StateLoadingError _value, $Res Function(_$_StateLoadingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateLoadingError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateLoadingError
    with DiagnosticableTreeMixin
    implements _StateLoadingError {
  const _$_StateLoadingError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationState.loadingError(errorText: $errorText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditPresentationState.loadingError'))
      ..add(DiagnosticsProperty('errorText', errorText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLoadingError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLoadingErrorCopyWith<_$_StateLoadingError> get copyWith =>
      __$$_StateLoadingErrorCopyWithImpl<_$_StateLoadingError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)
        screenState,
    required TResult Function(String? errorText) requestError,
    required TResult Function() requestSuccess,
    required TResult Function(String? errorText) loadingError,
  }) {
    return loadingError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult? Function(String? errorText)? requestError,
    TResult? Function()? requestSuccess,
    TResult? Function(String? errorText)? loadingError,
  }) {
    return loadingError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            String title,
            String description,
            List<PdfFragment> fragments,
            PdfFragment? selectedFragment,
            bool presentationUpdatePending,
            bool fragmentUpdatePending,
            bool deleteFragmentPending)?
        screenState,
    TResult Function(String? errorText)? requestError,
    TResult Function()? requestSuccess,
    TResult Function(String? errorText)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(errorText);
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
    TResult? Function(_StateRequestSuccess value)? requestSuccess,
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
    TResult Function(_StateRequestSuccess value)? requestSuccess,
    TResult Function(_StateLoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingError implements EditPresentationState {
  const factory _StateLoadingError({final String? errorText}) =
      _$_StateLoadingError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateLoadingErrorCopyWith<_$_StateLoadingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditPresentationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPresentationEventCopyWith<$Res> {
  factory $EditPresentationEventCopyWith(EditPresentationEvent value,
          $Res Function(EditPresentationEvent) then) =
      _$EditPresentationEventCopyWithImpl<$Res, EditPresentationEvent>;
}

/// @nodoc
class _$EditPresentationEventCopyWithImpl<$Res,
        $Val extends EditPresentationEvent>
    implements $EditPresentationEventCopyWith<$Res> {
  _$EditPresentationEventCopyWithImpl(this._value, this._then);

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
    extends _$EditPresentationEventCopyWithImpl<$Res,
        _$_EventInitialDataRequested>
    implements _$$_EventInitialDataRequestedCopyWith<$Res> {
  __$$_EventInitialDataRequestedCopyWithImpl(
      _$_EventInitialDataRequested _value,
      $Res Function(_$_EventInitialDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventInitialDataRequested
    with DiagnosticableTreeMixin
    implements _EventInitialDataRequested {
  const _$_EventInitialDataRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.initialDataRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'EditPresentationEvent.initialDataRequested'));
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
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
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
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements EditPresentationEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventFragmentSelectedCopyWith<$Res> {
  factory _$$_EventFragmentSelectedCopyWith(_$_EventFragmentSelected value,
          $Res Function(_$_EventFragmentSelected) then) =
      __$$_EventFragmentSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({PdfFragment fragment});
}

/// @nodoc
class __$$_EventFragmentSelectedCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res, _$_EventFragmentSelected>
    implements _$$_EventFragmentSelectedCopyWith<$Res> {
  __$$_EventFragmentSelectedCopyWithImpl(_$_EventFragmentSelected _value,
      $Res Function(_$_EventFragmentSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
  }) {
    return _then(_$_EventFragmentSelected(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
    ));
  }
}

/// @nodoc

class _$_EventFragmentSelected
    with DiagnosticableTreeMixin
    implements _EventFragmentSelected {
  const _$_EventFragmentSelected({required this.fragment});

  @override
  final PdfFragment fragment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.fragmentSelected(fragment: $fragment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'EditPresentationEvent.fragmentSelected'))
      ..add(DiagnosticsProperty('fragment', fragment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventFragmentSelected &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventFragmentSelectedCopyWith<_$_EventFragmentSelected> get copyWith =>
      __$$_EventFragmentSelectedCopyWithImpl<_$_EventFragmentSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return fragmentSelected(fragment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return fragmentSelected?.call(fragment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (fragmentSelected != null) {
      return fragmentSelected(fragment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return fragmentSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return fragmentSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (fragmentSelected != null) {
      return fragmentSelected(this);
    }
    return orElse();
  }
}

abstract class _EventFragmentSelected implements EditPresentationEvent {
  const factory _EventFragmentSelected({required final PdfFragment fragment}) =
      _$_EventFragmentSelected;

  PdfFragment get fragment;
  @JsonKey(ignore: true)
  _$$_EventFragmentSelectedCopyWith<_$_EventFragmentSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventAudioAddedCopyWith<$Res> {
  factory _$$_EventAudioAddedCopyWith(
          _$_EventAudioAdded value, $Res Function(_$_EventAudioAdded) then) =
      __$$_EventAudioAddedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PdfFragment fragment,
      String extension,
      Uint8List audioBytes,
      String audioPath,
      int duration});
}

/// @nodoc
class __$$_EventAudioAddedCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res, _$_EventAudioAdded>
    implements _$$_EventAudioAddedCopyWith<$Res> {
  __$$_EventAudioAddedCopyWithImpl(
      _$_EventAudioAdded _value, $Res Function(_$_EventAudioAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
    Object? extension = null,
    Object? audioBytes = null,
    Object? audioPath = null,
    Object? duration = null,
  }) {
    return _then(_$_EventAudioAdded(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      audioBytes: null == audioBytes
          ? _value.audioBytes
          : audioBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EventAudioAdded
    with DiagnosticableTreeMixin
    implements _EventAudioAdded {
  const _$_EventAudioAdded(
      {required this.fragment,
      required this.extension,
      required this.audioBytes,
      required this.audioPath,
      required this.duration});

  @override
  final PdfFragment fragment;
  @override
  final String extension;
  @override
  final Uint8List audioBytes;
  @override
  final String audioPath;
  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.audioAdded(fragment: $fragment, extension: $extension, audioBytes: $audioBytes, audioPath: $audioPath, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditPresentationEvent.audioAdded'))
      ..add(DiagnosticsProperty('fragment', fragment))
      ..add(DiagnosticsProperty('extension', extension))
      ..add(DiagnosticsProperty('audioBytes', audioBytes))
      ..add(DiagnosticsProperty('audioPath', audioPath))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAudioAdded &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            const DeepCollectionEquality()
                .equals(other.audioBytes, audioBytes) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fragment, extension,
      const DeepCollectionEquality().hash(audioBytes), audioPath, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventAudioAddedCopyWith<_$_EventAudioAdded> get copyWith =>
      __$$_EventAudioAddedCopyWithImpl<_$_EventAudioAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return audioAdded(fragment, extension, audioBytes, audioPath, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return audioAdded?.call(
        fragment, extension, audioBytes, audioPath, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (audioAdded != null) {
      return audioAdded(fragment, extension, audioBytes, audioPath, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return audioAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return audioAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (audioAdded != null) {
      return audioAdded(this);
    }
    return orElse();
  }
}

abstract class _EventAudioAdded implements EditPresentationEvent {
  const factory _EventAudioAdded(
      {required final PdfFragment fragment,
      required final String extension,
      required final Uint8List audioBytes,
      required final String audioPath,
      required final int duration}) = _$_EventAudioAdded;

  PdfFragment get fragment;
  String get extension;
  Uint8List get audioBytes;
  String get audioPath;
  int get duration;
  @JsonKey(ignore: true)
  _$$_EventAudioAddedCopyWith<_$_EventAudioAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventAudioDeletedCopyWith<$Res> {
  factory _$$_EventAudioDeletedCopyWith(_$_EventAudioDeleted value,
          $Res Function(_$_EventAudioDeleted) then) =
      __$$_EventAudioDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({PdfFragment fragment});
}

/// @nodoc
class __$$_EventAudioDeletedCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res, _$_EventAudioDeleted>
    implements _$$_EventAudioDeletedCopyWith<$Res> {
  __$$_EventAudioDeletedCopyWithImpl(
      _$_EventAudioDeleted _value, $Res Function(_$_EventAudioDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
  }) {
    return _then(_$_EventAudioDeleted(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
    ));
  }
}

/// @nodoc

class _$_EventAudioDeleted
    with DiagnosticableTreeMixin
    implements _EventAudioDeleted {
  const _$_EventAudioDeleted({required this.fragment});

  @override
  final PdfFragment fragment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.deleteAudio(fragment: $fragment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditPresentationEvent.deleteAudio'))
      ..add(DiagnosticsProperty('fragment', fragment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAudioDeleted &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fragment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventAudioDeletedCopyWith<_$_EventAudioDeleted> get copyWith =>
      __$$_EventAudioDeletedCopyWithImpl<_$_EventAudioDeleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return deleteAudio(fragment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return deleteAudio?.call(fragment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteAudio != null) {
      return deleteAudio(fragment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return deleteAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return deleteAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteAudio != null) {
      return deleteAudio(this);
    }
    return orElse();
  }
}

abstract class _EventAudioDeleted implements EditPresentationEvent {
  const factory _EventAudioDeleted({required final PdfFragment fragment}) =
      _$_EventAudioDeleted;

  PdfFragment get fragment;
  @JsonKey(ignore: true)
  _$$_EventAudioDeletedCopyWith<_$_EventAudioDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventImageAddedCopyWith<$Res> {
  factory _$$_EventImageAddedCopyWith(
          _$_EventImageAdded value, $Res Function(_$_EventImageAdded) then) =
      __$$_EventImageAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({PdfFragment fragment, Uint8List imageBytes});
}

/// @nodoc
class __$$_EventImageAddedCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res, _$_EventImageAdded>
    implements _$$_EventImageAddedCopyWith<$Res> {
  __$$_EventImageAddedCopyWithImpl(
      _$_EventImageAdded _value, $Res Function(_$_EventImageAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fragment = null,
    Object? imageBytes = null,
  }) {
    return _then(_$_EventImageAdded(
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
      imageBytes: null == imageBytes
          ? _value.imageBytes
          : imageBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_EventImageAdded
    with DiagnosticableTreeMixin
    implements _EventImageAdded {
  const _$_EventImageAdded({required this.fragment, required this.imageBytes});

  @override
  final PdfFragment fragment;
  @override
  final Uint8List imageBytes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.imageAdded(fragment: $fragment, imageBytes: $imageBytes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditPresentationEvent.imageAdded'))
      ..add(DiagnosticsProperty('fragment', fragment))
      ..add(DiagnosticsProperty('imageBytes', imageBytes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventImageAdded &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            const DeepCollectionEquality()
                .equals(other.imageBytes, imageBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fragment, const DeepCollectionEquality().hash(imageBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventImageAddedCopyWith<_$_EventImageAdded> get copyWith =>
      __$$_EventImageAddedCopyWithImpl<_$_EventImageAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return imageAdded(fragment, imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return imageAdded?.call(fragment, imageBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(fragment, imageBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return imageAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return imageAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(this);
    }
    return orElse();
  }
}

abstract class _EventImageAdded implements EditPresentationEvent {
  const factory _EventImageAdded(
      {required final PdfFragment fragment,
      required final Uint8List imageBytes}) = _$_EventImageAdded;

  PdfFragment get fragment;
  Uint8List get imageBytes;
  @JsonKey(ignore: true)
  _$$_EventImageAddedCopyWith<_$_EventImageAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventUpdatePresentationCopyWith<$Res> {
  factory _$$_EventUpdatePresentationCopyWith(_$_EventUpdatePresentation value,
          $Res Function(_$_EventUpdatePresentation) then) =
      __$$_EventUpdatePresentationCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_EventUpdatePresentationCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res,
        _$_EventUpdatePresentation>
    implements _$$_EventUpdatePresentationCopyWith<$Res> {
  __$$_EventUpdatePresentationCopyWithImpl(_$_EventUpdatePresentation _value,
      $Res Function(_$_EventUpdatePresentation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_EventUpdatePresentation(
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

class _$_EventUpdatePresentation
    with DiagnosticableTreeMixin
    implements _EventUpdatePresentation {
  const _$_EventUpdatePresentation(
      {required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.updatePresentation(title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'EditPresentationEvent.updatePresentation'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdatePresentation &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventUpdatePresentationCopyWith<_$_EventUpdatePresentation>
      get copyWith =>
          __$$_EventUpdatePresentationCopyWithImpl<_$_EventUpdatePresentation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return updatePresentation(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return updatePresentation?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updatePresentation != null) {
      return updatePresentation(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return updatePresentation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return updatePresentation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updatePresentation != null) {
      return updatePresentation(this);
    }
    return orElse();
  }
}

abstract class _EventUpdatePresentation implements EditPresentationEvent {
  const factory _EventUpdatePresentation(
      {required final String title,
      required final String description}) = _$_EventUpdatePresentation;

  String get title;
  String get description;
  @JsonKey(ignore: true)
  _$$_EventUpdatePresentationCopyWith<_$_EventUpdatePresentation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventUpdateFragmentCopyWith<$Res> {
  factory _$$_EventUpdateFragmentCopyWith(_$_EventUpdateFragment value,
          $Res Function(_$_EventUpdateFragment) then) =
      __$$_EventUpdateFragmentCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, bool isTitleOverImage});
}

/// @nodoc
class __$$_EventUpdateFragmentCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res, _$_EventUpdateFragment>
    implements _$$_EventUpdateFragmentCopyWith<$Res> {
  __$$_EventUpdateFragmentCopyWithImpl(_$_EventUpdateFragment _value,
      $Res Function(_$_EventUpdateFragment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isTitleOverImage = null,
  }) {
    return _then(_$_EventUpdateFragment(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isTitleOverImage: null == isTitleOverImage
          ? _value.isTitleOverImage
          : isTitleOverImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventUpdateFragment
    with DiagnosticableTreeMixin
    implements _EventUpdateFragment {
  const _$_EventUpdateFragment(
      {required this.title,
      required this.description,
      required this.isTitleOverImage});

  @override
  final String title;
  @override
  final String description;
  @override
  final bool isTitleOverImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.updateFragment(title: $title, description: $description, isTitleOverImage: $isTitleOverImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditPresentationEvent.updateFragment'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isTitleOverImage', isTitleOverImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdateFragment &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isTitleOverImage, isTitleOverImage) ||
                other.isTitleOverImage == isTitleOverImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, isTitleOverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventUpdateFragmentCopyWith<_$_EventUpdateFragment> get copyWith =>
      __$$_EventUpdateFragmentCopyWithImpl<_$_EventUpdateFragment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return updateFragment(title, description, isTitleOverImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return updateFragment?.call(title, description, isTitleOverImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updateFragment != null) {
      return updateFragment(title, description, isTitleOverImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return updateFragment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return updateFragment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (updateFragment != null) {
      return updateFragment(this);
    }
    return orElse();
  }
}

abstract class _EventUpdateFragment implements EditPresentationEvent {
  const factory _EventUpdateFragment(
      {required final String title,
      required final String description,
      required final bool isTitleOverImage}) = _$_EventUpdateFragment;

  String get title;
  String get description;
  bool get isTitleOverImage;
  @JsonKey(ignore: true)
  _$$_EventUpdateFragmentCopyWith<_$_EventUpdateFragment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventDeleteFragmentCopyWith<$Res> {
  factory _$$_EventDeleteFragmentCopyWith(_$_EventDeleteFragment value,
          $Res Function(_$_EventDeleteFragment) then) =
      __$$_EventDeleteFragmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventDeleteFragmentCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res, _$_EventDeleteFragment>
    implements _$$_EventDeleteFragmentCopyWith<$Res> {
  __$$_EventDeleteFragmentCopyWithImpl(_$_EventDeleteFragment _value,
      $Res Function(_$_EventDeleteFragment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventDeleteFragment
    with DiagnosticableTreeMixin
    implements _EventDeleteFragment {
  const _$_EventDeleteFragment();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.deleteFragment()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'EditPresentationEvent.deleteFragment'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventDeleteFragment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return deleteFragment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return deleteFragment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteFragment != null) {
      return deleteFragment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return deleteFragment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return deleteFragment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (deleteFragment != null) {
      return deleteFragment(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteFragment implements EditPresentationEvent {
  const factory _EventDeleteFragment() = _$_EventDeleteFragment;
}

/// @nodoc
abstract class _$$_EventReorderFragmentCopyWith<$Res> {
  factory _$$_EventReorderFragmentCopyWith(_$_EventReorderFragment value,
          $Res Function(_$_EventReorderFragment) then) =
      __$$_EventReorderFragmentCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ids});
}

/// @nodoc
class __$$_EventReorderFragmentCopyWithImpl<$Res>
    extends _$EditPresentationEventCopyWithImpl<$Res, _$_EventReorderFragment>
    implements _$$_EventReorderFragmentCopyWith<$Res> {
  __$$_EventReorderFragmentCopyWithImpl(_$_EventReorderFragment _value,
      $Res Function(_$_EventReorderFragment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$_EventReorderFragment(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_EventReorderFragment
    with DiagnosticableTreeMixin
    implements _EventReorderFragment {
  const _$_EventReorderFragment({required final List<String> ids}) : _ids = ids;

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditPresentationEvent.reorderFragments(ids: $ids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'EditPresentationEvent.reorderFragments'))
      ..add(DiagnosticsProperty('ids', ids));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventReorderFragment &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventReorderFragmentCopyWith<_$_EventReorderFragment> get copyWith =>
      __$$_EventReorderFragmentCopyWithImpl<_$_EventReorderFragment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function(PdfFragment fragment) fragmentSelected,
    required TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)
        audioAdded,
    required TResult Function(PdfFragment fragment) deleteAudio,
    required TResult Function(PdfFragment fragment, Uint8List imageBytes)
        imageAdded,
    required TResult Function(String title, String description)
        updatePresentation,
    required TResult Function(
            String title, String description, bool isTitleOverImage)
        updateFragment,
    required TResult Function() deleteFragment,
    required TResult Function(List<String> ids) reorderFragments,
  }) {
    return reorderFragments(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function(PdfFragment fragment)? fragmentSelected,
    TResult? Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult? Function(PdfFragment fragment)? deleteAudio,
    TResult? Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult? Function(String title, String description)? updatePresentation,
    TResult? Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult? Function()? deleteFragment,
    TResult? Function(List<String> ids)? reorderFragments,
  }) {
    return reorderFragments?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function(PdfFragment fragment)? fragmentSelected,
    TResult Function(PdfFragment fragment, String extension,
            Uint8List audioBytes, String audioPath, int duration)?
        audioAdded,
    TResult Function(PdfFragment fragment)? deleteAudio,
    TResult Function(PdfFragment fragment, Uint8List imageBytes)? imageAdded,
    TResult Function(String title, String description)? updatePresentation,
    TResult Function(String title, String description, bool isTitleOverImage)?
        updateFragment,
    TResult Function()? deleteFragment,
    TResult Function(List<String> ids)? reorderFragments,
    required TResult orElse(),
  }) {
    if (reorderFragments != null) {
      return reorderFragments(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventFragmentSelected value) fragmentSelected,
    required TResult Function(_EventAudioAdded value) audioAdded,
    required TResult Function(_EventAudioDeleted value) deleteAudio,
    required TResult Function(_EventImageAdded value) imageAdded,
    required TResult Function(_EventUpdatePresentation value)
        updatePresentation,
    required TResult Function(_EventUpdateFragment value) updateFragment,
    required TResult Function(_EventDeleteFragment value) deleteFragment,
    required TResult Function(_EventReorderFragment value) reorderFragments,
  }) {
    return reorderFragments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventFragmentSelected value)? fragmentSelected,
    TResult? Function(_EventAudioAdded value)? audioAdded,
    TResult? Function(_EventAudioDeleted value)? deleteAudio,
    TResult? Function(_EventImageAdded value)? imageAdded,
    TResult? Function(_EventUpdatePresentation value)? updatePresentation,
    TResult? Function(_EventUpdateFragment value)? updateFragment,
    TResult? Function(_EventDeleteFragment value)? deleteFragment,
    TResult? Function(_EventReorderFragment value)? reorderFragments,
  }) {
    return reorderFragments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventFragmentSelected value)? fragmentSelected,
    TResult Function(_EventAudioAdded value)? audioAdded,
    TResult Function(_EventAudioDeleted value)? deleteAudio,
    TResult Function(_EventImageAdded value)? imageAdded,
    TResult Function(_EventUpdatePresentation value)? updatePresentation,
    TResult Function(_EventUpdateFragment value)? updateFragment,
    TResult Function(_EventDeleteFragment value)? deleteFragment,
    TResult Function(_EventReorderFragment value)? reorderFragments,
    required TResult orElse(),
  }) {
    if (reorderFragments != null) {
      return reorderFragments(this);
    }
    return orElse();
  }
}

abstract class _EventReorderFragment implements EditPresentationEvent {
  const factory _EventReorderFragment({required final List<String> ids}) =
      _$_EventReorderFragment;

  List<String> get ids;
  @JsonKey(ignore: true)
  _$$_EventReorderFragmentCopyWith<_$_EventReorderFragment> get copyWith =>
      throw _privateConstructorUsedError;
}
