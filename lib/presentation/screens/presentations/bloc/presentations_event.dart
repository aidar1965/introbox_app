part of 'presentations_bloc.dart';

@freezed
class PresentationsEvent with _$PresentationsEvent {
  const factory PresentationsEvent.deletePresentation(int id) =
      _EventDeletePresentation;
  const factory PresentationsEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PresentationsEvent.reloadData() = _EventReloadData;
  const factory PresentationsEvent.loadMore() = _EventLoadMore;
}
