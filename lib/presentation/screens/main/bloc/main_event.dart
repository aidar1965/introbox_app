part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.initialDataRequested({
    String? searchText,
  }) = _EventInitialDataRequested;

  const factory MainEvent.reloadData() = _EventReloadData;
}
