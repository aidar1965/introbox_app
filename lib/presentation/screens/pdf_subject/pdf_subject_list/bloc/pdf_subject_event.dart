part of 'pdf_subject_bloc.dart';

@freezed
class PdfSubjectEvent with _$PdfSubjectEvent {
  const factory PdfSubjectEvent.deleteSubject(int id) = _EventDeleteSubject;
  const factory PdfSubjectEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PdfSubjectEvent.reloadData() = _EventReloadData;
  const factory PdfSubjectEvent.loadMore() = _EventLoadMore;
}
