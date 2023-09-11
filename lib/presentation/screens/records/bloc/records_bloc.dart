import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_records_repository.dart';

import 'package:moki_tutor/domain/interfaces/i_request_manager.dart';

import '../../../../domain/models/record.dart';
import '../../../../domain/models/record_category.dart';

part 'records_bloc.freezed.dart';
part 'records_event.dart';
part 'records_state.dart';

class RecordsBloc extends Bloc<RecordsEvent, RecordsState> {
  RecordsBloc(
      {required this.recordsRepository,
      required this.requestManager,
      required this.categoryRepository})
      : super(const _Pending()) {
    on<RecordsEvent>((event, emitter) => event.map(
          dataRequested: (event) => _dataRequested(emitter),
          newRecord: (event) => _newRecording(emitter),
          selectCategory: (event) => _selectCategory(event, emitter),
          editCategory: (event) => _editCategory(event, emitter),
          deleteCategory: (event) => _deleteCategory(event, emitter),
          resendData: (event) => _resendData(event, emitter),
        ));
    recordsRepository.addChangeListener(
      () {
        records = recordsRepository.records;
        _updateSelectedRecords();
        add(const RecordsEvent.resendData());
      },
    );
    categoryRepository.addChangeListener(
      () => add(
        const RecordsEvent.dataRequested(),
      ),
    );
    add(const RecordsEvent.dataRequested());
  }

  final IRequestManager requestManager;
  final IRecordsRepository recordsRepository;
  final ICategoryRepository categoryRepository;

  List<Record> records = [];
  List<RecordCategory> categories = [];

  List<RecordCategory> selectedCategories = [];

  List<Record> selectedRecords = [];

  Future<void> _dataRequested(Emitter emitter) async {
    selectedRecords = [];
    records = recordsRepository.records;

    categories = categoryRepository.categories;
    for (var cat in categories) {
      selectedCategories.add(cat);
    }

    for (var record in records) {
      selectedRecords.add(record);
    }
    selectedRecords.sort((a, b) => b.date.compareTo(a.date));

    emitter(RecordsState.dataReceived(
        records: selectedRecords,
        categories: categories,
        selectedCategories: selectedCategories));
  }

  void _selectCategory(_SelectCategory event, Emitter emitter) async {
    emitter(const RecordsState.pending());
    if (selectedCategories.contains(event.category)) {
      selectedCategories.remove(event.category);
    } else {
      selectedCategories.add(event.category);
    }
    selectedRecords = [];
    for (var record in records) {
      List<RecordCategory>? categoriesOfRecord = record.categories;
      if (categoriesOfRecord != null) {
        for (var element in categoriesOfRecord) {
          for (var sk in selectedCategories) {
            if (sk.id == element.id && !selectedRecords.contains(record)) {
              selectedRecords.add(record);
            }
          }
        }
      }
    }
    selectedRecords.sort((a, b) => b.date.compareTo(a.date));

    if (selectedCategories.isNotEmpty) {
      emitter(RecordsState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
      ));
    } else {
      selectedRecords = [];
      for (var element in records) {
        if (element.categories!.isEmpty) selectedRecords.add(element);
      }
      selectedRecords.sort((a, b) => b.date.compareTo(a.date));
      emitter(RecordsState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
      ));
    }
  }

  void _editCategory(_EditCategory event, Emitter emitter) {
    categoryRepository.editCategory(event.category);
    add(const RecordsEvent.dataRequested());
  }

  void _deleteCategory(_DeleteCategory event, Emitter emitter) {
    categoryRepository.deleteCategory(event.category);
  }

  void _newRecording(Emitter emitter) {
    emitter(RecordsState.dataReceived(
        records: selectedRecords,
        categories: categories,
        selectedCategories: selectedCategories));
    emitter(const RecordsState.addRecord());
  }

  void _resendData(_ResendData event, Emitter emitter) {
    emitter(const RecordsState.pending());
    emitter(RecordsState.dataReceived(
        records: selectedRecords,
        categories: categories,
        selectedCategories: selectedCategories));
  }

  void _updateSelectedRecords() {
    for (var r in records) {
      for (var sr in selectedRecords) {
        if (r == sr) {
          selectedRecords.remove(sr);
          selectedRecords.add(r);
        }
      }
    }
    selectedRecords.sort((a, b) => b.date.compareTo(a.date));
  }
}
