part of 'presentations_bloc.dart';

@freezed
class PresentationsEvent with _$PresentationsEvent {
  const factory PresentationsEvent.deletePresentation(String id) =
      _EventDeletePresentation;
  const factory PresentationsEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PresentationsEvent.reloadData() = _EventReloadData;
  const factory PresentationsEvent.loadMore() = _EventLoadMore;
  const factory PresentationsEvent.publishPresentation(String id) =
      _EventPublishPresentation;
  const factory PresentationsEvent.onPasswordChanged(
    String id,
    ({String password, String confirmPassword}) passwordWithConfirmation,
  ) = _EventOnPasswordChanged;
}
