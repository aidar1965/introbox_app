import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/data/api/http_client/request_exception.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/company.dart';

part 'companies_state.dart';
part 'companies_event.dart';
part 'companies_bloc.freezed.dart';

class CompaniesBloc extends Bloc<CompaniesEvent, CompaniesState> {
  CompaniesBloc() : super(const CompaniesState.pending()) {
    on<CompaniesEvent>((event, emitter) => event.map(
        initialDataRequested: (_) => onInitialDataRequested(emitter),
        onCreateCompany: (event) => onCreateCompany(event, emitter),
        onEditCompany: (event) => onEditCompany(event, emitter),
        onDeleteCompany: (event) => onDeleteCompany(event, emitter)));
    add(const CompaniesEvent.initialDataRequested());
  }

  final api = getIt<IApi>();

  Future<void> onInitialDataRequested(Emitter<CompaniesState> emitter) async {
    emitter(const CompaniesState.pending());
    try {
      final companies = await api.getCompanies();

      emitter(CompaniesState.screenState(companies: companies));
    } on Object {
      emitter(const CompaniesState.initialLoadingError());
      rethrow;
    }
  }

  Future<void> onCreateCompany(
      _EventOnCreateCompany event, Emitter<CompaniesState> emitter) async {
    emitter(const CompaniesState.pending());
    try {
      await api.addCompany(name: event.name, website: event.website);
      emitter(const CompaniesState.requestSuccess());
    } on Object {
      emitter(const CompaniesState.requestError());
      rethrow;
    }
  }

  Future<void> onEditCompany(
      _EventOnEditCompany event, Emitter<CompaniesState> emitter) async {
    try {
      await api.editCompany(
          name: event.name,
          website: event.website,
          companyId: event.selectedCompany.id);
      emitter(const CompaniesState.requestSuccess());
    } on Object {
      emitter(const CompaniesState.requestError());
      rethrow;
    }
  }

  Future<void> onDeleteCompany(
      _EventOnDeleteCompany event, Emitter<CompaniesState> emitter) async {
    try {
      await api.deleteCompany(companyId: event.id);
      emitter(const CompaniesState.requestSuccess());
    } on RequestException catch (e) {
      if (e.httpStatusCode == HttpStatus.badRequest) {
        emitter(const CompaniesState.requestError(
            errorText:
                'Компания не может быть удалена, так как у нее есть каналы'));
      }
    } on Object {
      emitter(const CompaniesState.requestError());
      rethrow;
    }
  }
}
