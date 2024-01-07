// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PresentationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() nextSlideClicked,
    required TResult Function() previousSlideClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? nextSlideClicked,
    TResult? Function()? previousSlideClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? nextSlideClicked,
    TResult Function()? previousSlideClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventNextSlideClicked value) nextSlideClicked,
    required TResult Function(_EventPreviousSlideClicked value)
        previousSlideClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult? Function(_EventPreviousSlideClicked value)? previousSlideClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult Function(_EventPreviousSlideClicked value)? previousSlideClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationEventCopyWith<$Res> {
  factory $PresentationEventCopyWith(
          PresentationEvent value, $Res Function(PresentationEvent) then) =
      _$PresentationEventCopyWithImpl<$Res, PresentationEvent>;
}

/// @nodoc
class _$PresentationEventCopyWithImpl<$Res, $Val extends PresentationEvent>
    implements $PresentationEventCopyWith<$Res> {
  _$PresentationEventCopyWithImpl(this._value, this._then);

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
    extends _$PresentationEventCopyWithImpl<$Res, _$_EventInitialDataRequested>
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
    return 'PresentationEvent.initialDataRequested()';
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
    required TResult Function() nextSlideClicked,
    required TResult Function() previousSlideClicked,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? nextSlideClicked,
    TResult? Function()? previousSlideClicked,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? nextSlideClicked,
    TResult Function()? previousSlideClicked,
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
    required TResult Function(_EventNextSlideClicked value) nextSlideClicked,
    required TResult Function(_EventPreviousSlideClicked value)
        previousSlideClicked,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult? Function(_EventPreviousSlideClicked value)? previousSlideClicked,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult Function(_EventPreviousSlideClicked value)? previousSlideClicked,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements PresentationEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventNextSlideClickedCopyWith<$Res> {
  factory _$$_EventNextSlideClickedCopyWith(_$_EventNextSlideClicked value,
          $Res Function(_$_EventNextSlideClicked) then) =
      __$$_EventNextSlideClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventNextSlideClickedCopyWithImpl<$Res>
    extends _$PresentationEventCopyWithImpl<$Res, _$_EventNextSlideClicked>
    implements _$$_EventNextSlideClickedCopyWith<$Res> {
  __$$_EventNextSlideClickedCopyWithImpl(_$_EventNextSlideClicked _value,
      $Res Function(_$_EventNextSlideClicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventNextSlideClicked implements _EventNextSlideClicked {
  const _$_EventNextSlideClicked();

  @override
  String toString() {
    return 'PresentationEvent.nextSlideClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventNextSlideClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() nextSlideClicked,
    required TResult Function() previousSlideClicked,
  }) {
    return nextSlideClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? nextSlideClicked,
    TResult? Function()? previousSlideClicked,
  }) {
    return nextSlideClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? nextSlideClicked,
    TResult Function()? previousSlideClicked,
    required TResult orElse(),
  }) {
    if (nextSlideClicked != null) {
      return nextSlideClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventNextSlideClicked value) nextSlideClicked,
    required TResult Function(_EventPreviousSlideClicked value)
        previousSlideClicked,
  }) {
    return nextSlideClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult? Function(_EventPreviousSlideClicked value)? previousSlideClicked,
  }) {
    return nextSlideClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult Function(_EventPreviousSlideClicked value)? previousSlideClicked,
    required TResult orElse(),
  }) {
    if (nextSlideClicked != null) {
      return nextSlideClicked(this);
    }
    return orElse();
  }
}

abstract class _EventNextSlideClicked implements PresentationEvent {
  const factory _EventNextSlideClicked() = _$_EventNextSlideClicked;
}

/// @nodoc
abstract class _$$_EventPreviousSlideClickedCopyWith<$Res> {
  factory _$$_EventPreviousSlideClickedCopyWith(
          _$_EventPreviousSlideClicked value,
          $Res Function(_$_EventPreviousSlideClicked) then) =
      __$$_EventPreviousSlideClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventPreviousSlideClickedCopyWithImpl<$Res>
    extends _$PresentationEventCopyWithImpl<$Res, _$_EventPreviousSlideClicked>
    implements _$$_EventPreviousSlideClickedCopyWith<$Res> {
  __$$_EventPreviousSlideClickedCopyWithImpl(
      _$_EventPreviousSlideClicked _value,
      $Res Function(_$_EventPreviousSlideClicked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventPreviousSlideClicked implements _EventPreviousSlideClicked {
  const _$_EventPreviousSlideClicked();

  @override
  String toString() {
    return 'PresentationEvent.previousSlideClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventPreviousSlideClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialDataRequested,
    required TResult Function() nextSlideClicked,
    required TResult Function() previousSlideClicked,
  }) {
    return previousSlideClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialDataRequested,
    TResult? Function()? nextSlideClicked,
    TResult? Function()? previousSlideClicked,
  }) {
    return previousSlideClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialDataRequested,
    TResult Function()? nextSlideClicked,
    TResult Function()? previousSlideClicked,
    required TResult orElse(),
  }) {
    if (previousSlideClicked != null) {
      return previousSlideClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventNextSlideClicked value) nextSlideClicked,
    required TResult Function(_EventPreviousSlideClicked value)
        previousSlideClicked,
  }) {
    return previousSlideClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult? Function(_EventPreviousSlideClicked value)? previousSlideClicked,
  }) {
    return previousSlideClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventNextSlideClicked value)? nextSlideClicked,
    TResult Function(_EventPreviousSlideClicked value)? previousSlideClicked,
    required TResult orElse(),
  }) {
    if (previousSlideClicked != null) {
      return previousSlideClicked(this);
    }
    return orElse();
  }
}

abstract class _EventPreviousSlideClicked implements PresentationEvent {
  const factory _EventPreviousSlideClicked() = _$_EventPreviousSlideClicked;
}

/// @nodoc
mixin _$PresentationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PdfFragment selectedFragment,
            bool isLast,
            bool isFirst,
            String presentationTitle,
            String? presentationDescription)
        screenState,
    required TResult Function() loadingError,
    required TResult Function() pending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult? Function()? loadingError,
    TResult? Function()? pending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult Function()? loadingError,
    TResult Function()? pending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StatePending value) pending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StatePending value)? pending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StatePending value)? pending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationStateCopyWith<$Res> {
  factory $PresentationStateCopyWith(
          PresentationState value, $Res Function(PresentationState) then) =
      _$PresentationStateCopyWithImpl<$Res, PresentationState>;
}

/// @nodoc
class _$PresentationStateCopyWithImpl<$Res, $Val extends PresentationState>
    implements $PresentationStateCopyWith<$Res> {
  _$PresentationStateCopyWithImpl(this._value, this._then);

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
  $Res call(
      {PdfFragment selectedFragment,
      bool isLast,
      bool isFirst,
      String presentationTitle,
      String? presentationDescription});
}

/// @nodoc
class __$$_ScreenStateCopyWithImpl<$Res>
    extends _$PresentationStateCopyWithImpl<$Res, _$_ScreenState>
    implements _$$_ScreenStateCopyWith<$Res> {
  __$$_ScreenStateCopyWithImpl(
      _$_ScreenState _value, $Res Function(_$_ScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFragment = null,
    Object? isLast = null,
    Object? isFirst = null,
    Object? presentationTitle = null,
    Object? presentationDescription = freezed,
  }) {
    return _then(_$_ScreenState(
      selectedFragment: null == selectedFragment
          ? _value.selectedFragment
          : selectedFragment // ignore: cast_nullable_to_non_nullable
              as PdfFragment,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirst: null == isFirst
          ? _value.isFirst
          : isFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      presentationTitle: null == presentationTitle
          ? _value.presentationTitle
          : presentationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      presentationDescription: freezed == presentationDescription
          ? _value.presentationDescription
          : presentationDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ScreenState implements _ScreenState {
  const _$_ScreenState(
      {required this.selectedFragment,
      required this.isLast,
      required this.isFirst,
      required this.presentationTitle,
      this.presentationDescription});

  @override
  final PdfFragment selectedFragment;
  @override
  final bool isLast;
  @override
  final bool isFirst;
  @override
  final String presentationTitle;
  @override
  final String? presentationDescription;

  @override
  String toString() {
    return 'PresentationState.screenState(selectedFragment: $selectedFragment, isLast: $isLast, isFirst: $isFirst, presentationTitle: $presentationTitle, presentationDescription: $presentationDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenState &&
            (identical(other.selectedFragment, selectedFragment) ||
                other.selectedFragment == selectedFragment) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.isFirst, isFirst) || other.isFirst == isFirst) &&
            (identical(other.presentationTitle, presentationTitle) ||
                other.presentationTitle == presentationTitle) &&
            (identical(
                    other.presentationDescription, presentationDescription) ||
                other.presentationDescription == presentationDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedFragment, isLast,
      isFirst, presentationTitle, presentationDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScreenStateCopyWith<_$_ScreenState> get copyWith =>
      __$$_ScreenStateCopyWithImpl<_$_ScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PdfFragment selectedFragment,
            bool isLast,
            bool isFirst,
            String presentationTitle,
            String? presentationDescription)
        screenState,
    required TResult Function() loadingError,
    required TResult Function() pending,
  }) {
    return screenState(selectedFragment, isLast, isFirst, presentationTitle,
        presentationDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult? Function()? loadingError,
    TResult? Function()? pending,
  }) {
    return screenState?.call(selectedFragment, isLast, isFirst,
        presentationTitle, presentationDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult Function()? loadingError,
    TResult Function()? pending,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(selectedFragment, isLast, isFirst, presentationTitle,
          presentationDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StatePending value) pending,
  }) {
    return screenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StatePending value)? pending,
  }) {
    return screenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StatePending value)? pending,
    required TResult orElse(),
  }) {
    if (screenState != null) {
      return screenState(this);
    }
    return orElse();
  }
}

abstract class _ScreenState implements PresentationState {
  const factory _ScreenState(
      {required final PdfFragment selectedFragment,
      required final bool isLast,
      required final bool isFirst,
      required final String presentationTitle,
      final String? presentationDescription}) = _$_ScreenState;

  PdfFragment get selectedFragment;
  bool get isLast;
  bool get isFirst;
  String get presentationTitle;
  String? get presentationDescription;
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
    extends _$PresentationStateCopyWithImpl<$Res, _$_StateLoadingError>
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
    return 'PresentationState.loadingError()';
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
    required TResult Function(
            PdfFragment selectedFragment,
            bool isLast,
            bool isFirst,
            String presentationTitle,
            String? presentationDescription)
        screenState,
    required TResult Function() loadingError,
    required TResult Function() pending,
  }) {
    return loadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult? Function()? loadingError,
    TResult? Function()? pending,
  }) {
    return loadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult Function()? loadingError,
    TResult Function()? pending,
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
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StatePending value) pending,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StatePending value)? pending,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StatePending value)? pending,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _StateLoadingError implements PresentationState {
  const factory _StateLoadingError() = _$_StateLoadingError;
}

/// @nodoc
abstract class _$$_StatePendingCopyWith<$Res> {
  factory _$$_StatePendingCopyWith(
          _$_StatePending value, $Res Function(_$_StatePending) then) =
      __$$_StatePendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatePendingCopyWithImpl<$Res>
    extends _$PresentationStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'PresentationState.pending()';
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
    required TResult Function(
            PdfFragment selectedFragment,
            bool isLast,
            bool isFirst,
            String presentationTitle,
            String? presentationDescription)
        screenState,
    required TResult Function() loadingError,
    required TResult Function() pending,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult? Function()? loadingError,
    TResult? Function()? pending,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PdfFragment selectedFragment, bool isLast, bool isFirst,
            String presentationTitle, String? presentationDescription)?
        screenState,
    TResult Function()? loadingError,
    TResult Function()? pending,
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
    required TResult Function(_ScreenState value) screenState,
    required TResult Function(_StateLoadingError value) loadingError,
    required TResult Function(_StatePending value) pending,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScreenState value)? screenState,
    TResult? Function(_StateLoadingError value)? loadingError,
    TResult? Function(_StatePending value)? pending,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScreenState value)? screenState,
    TResult Function(_StateLoadingError value)? loadingError,
    TResult Function(_StatePending value)? pending,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements PresentationState {
  const factory _StatePending() = _$_StatePending;
}
