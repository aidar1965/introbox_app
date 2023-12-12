part of 'pdf_course_details_bloc.dart';

@freezed
class PdfCourseDetailsEvent with _$PdfCourseDetailsEvent {
  const factory PdfCourseDetailsEvent.dataRequested() = _EventDataRequested;
}
