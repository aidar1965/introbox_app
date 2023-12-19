part of 'presentations_bloc.dart';

@freezed
class PresentationEvent with _$PresentationEvent {
  const factory PresentationEvent.deletePresentation(int id) =
      _EventDeletePresentation;
  const factory PresentationEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PresentationEvent.reloadData() = _EventReloadData;
  const factory PresentationEvent.loadMore() = _EventLoadMore;
}
