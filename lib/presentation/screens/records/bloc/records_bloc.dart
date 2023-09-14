import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_fragments_repository.dart';

import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/fragment.dart';
import '../../../../domain/models/fragment_category.dart';

part 'records_bloc.freezed.dart';
part 'records_event.dart';
part 'records_state.dart';

class FragmentsBloc extends Bloc<FragmentsEvent, FragmentsState> {
  FragmentsBloc() : super(const _Pending()) {
    on<FragmentsEvent>((event, emitter) => event.map(
          dataRequested: (event) => _dataRequested(emitter),
          newFragment: (event) => _newRecording(emitter),
          selectCategory: (event) => _selectCategory(event, emitter),
          editCategory: (event) => _editCategory(event, emitter),
          deleteCategory: (event) => _deleteCategory(event, emitter),
          resendData: (event) => _resendData(event, emitter),
        ));
    recordsRepository.addChangeListener(
      () {
        records = recordsRepository.records;
        _updateSelectedFragments();
        add(const FragmentsEvent.resendData());
      },
    );
    categoryRepository.addChangeListener(
      () => add(
        const FragmentsEvent.dataRequested(),
      ),
    );
    add(const FragmentsEvent.dataRequested());
  }

  final IFragmentsRepository recordsRepository = getIt<IFragmentsRepository>();
  final ICategoryRepository categoryRepository = getIt<ICategoryRepository>();

  List<Fragment> records = [];
  List<FragmentCategory> categories = [];

  List<FragmentCategory> selectedCategories = [];

  List<Fragment> selectedFragments = [];

  Future<void> _dataRequested(Emitter emitter) async {
    selectedFragments = [];
    records = recordsRepository.records;

    categories = categoryRepository.categories;
    for (var cat in categories) {
      selectedCategories.add(cat);
    }

    for (var record in records) {
      selectedFragments.add(record);
    }
    selectedFragments.sort((a, b) => b.date.compareTo(a.date));

    emitter(FragmentsState.dataReceived(
        records: selectedFragments,
        categories: categories,
        selectedCategories: selectedCategories));
  }

  void _selectCategory(_SelectCategory event, Emitter emitter) async {
    emitter(const FragmentsState.pending());
    if (selectedCategories.contains(event.category)) {
      selectedCategories.remove(event.category);
    } else {
      selectedCategories.add(event.category);
    }
    selectedFragments = [];
    for (var record in records) {
      List<FragmentCategory>? categoriesOfFragment = record.categories;
      if (categoriesOfFragment != null) {
        for (var element in categoriesOfFragment) {
          for (var sk in selectedCategories) {
            if (sk.id == element.id && !selectedFragments.contains(record)) {
              selectedFragments.add(record);
            }
          }
        }
      }
    }
    selectedFragments.sort((a, b) => b.date.compareTo(a.date));

    if (selectedCategories.isNotEmpty) {
      emitter(FragmentsState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
      ));
    } else {
      selectedFragments = [];
      for (var element in records) {
        if (element.categories!.isEmpty) selectedFragments.add(element);
      }
      selectedFragments.sort((a, b) => b.date.compareTo(a.date));
      emitter(FragmentsState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
      ));
    }
  }

  void _editCategory(_EditCategory event, Emitter emitter) {
    categoryRepository.editCategory(event.category);
    add(const FragmentsEvent.dataRequested());
  }

  void _deleteCategory(_DeleteCategory event, Emitter emitter) {
    categoryRepository.deleteCategory(event.category);
  }

  void _newRecording(Emitter emitter) {
    emitter(FragmentsState.dataReceived(
        records: selectedFragments,
        categories: categories,
        selectedCategories: selectedCategories));
    emitter(const FragmentsState.addFragment());
  }

  void _resendData(_ResendData event, Emitter emitter) {
    emitter(const FragmentsState.pending());
    emitter(FragmentsState.dataReceived(
        records: selectedFragments,
        categories: categories,
        selectedCategories: selectedCategories));
  }

  void _updateSelectedFragments() {
    for (var r in records) {
      for (var sr in selectedFragments) {
        if (r == sr) {
          selectedFragments.remove(sr);
          selectedFragments.add(r);
        }
      }
    }
    selectedFragments.sort((a, b) => b.date.compareTo(a.date));
  }
}
