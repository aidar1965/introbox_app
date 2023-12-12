part of 'pdf_subject_player_bloc.dart';

@freezed
class PdfSubjectPlayerState with _$PdfSubjectPlayerState {
  const factory PdfSubjectPlayerState.pending() = _StatePending;
  const factory PdfSubjectPlayerState.screenState(
      {required List<PdfFragment> fragments}) = _ScreenState;
  const factory PdfSubjectPlayerState.loadingError({String? errorText}) =
      _StateLoadingError;
}
