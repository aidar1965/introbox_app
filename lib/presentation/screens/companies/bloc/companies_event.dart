part of 'companies_bloc.dart';

@freezed
class CompaniesEvent with _$CompaniesEvent {
  const factory CompaniesEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory CompaniesEvent.onCreateCompany({
    required String name,
    String? website,
  }) = _EventOnCreateCompany;
  const factory CompaniesEvent.onEditCompany({
    required Company selectedCompany,
    required String name,
    String? website,
  }) = _EventOnEditCompany;
  const factory CompaniesEvent.onDeleteCompany({
    required String id,
  }) = _EventOnDeleteCompany;
}
