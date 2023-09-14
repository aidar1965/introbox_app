import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';

import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/subject.dart';
import '../../../../domain/models/subject_category.dart';

part 'subjects_event.dart';
part 'subjects_state.dart';
part 'subjects_bloc.freezed.dart';

class SubjectsBloc extends Bloc<SubjectsEvent, SubjectsState> {
  SubjectsBloc() : super(const _Pending()) {
    on<SubjectsEvent>((event, emitter) => event.map(
          dataRequested: (event) => _dataRequested(event, emitter),
          newSubject: (_) => _newSubject(emitter),
          selectCategory: (event) => _selectCategory(event, emitter),
          selectSubject: (event) => _selectSubject(event, emitter),
          resendData: (event) => _resendData(event, emitter),
          editCategory: (event) => _editCategory(event, emitter),
          deleteCategory: (event) => _deleteCategory(event, emitter),
        ));
    subjectsRepository.addChangeListener(() {
      add(const SubjectsEvent.dataRequested());
    });
    subjectCategoryRepository.addChangeListener(() {
      add(const SubjectsEvent.dataRequested());
    });
    add(const SubjectsEvent.dataRequested());
  }

  final ISubjectsRepository subjectsRepository = getIt<ISubjectsRepository>();
  final ISubjectCategoryRepository subjectCategoryRepository =
      getIt<ISubjectCategoryRepository>();

  List<Subject> subjects = [];
  List<SubjectCategory> categories = [];
  Subject? selectedSubject;

  List<Subject> selectedSubjects = [];
  List<SubjectCategory> selectedCategories = [];

  void _dataRequested(_DataRequested event, Emitter emitter) {
    subjects = [];
    categories = [];
    selectedSubject;

    selectedSubjects = [];
    selectedCategories = [];
    emitter(const SubjectsState.pending());
    subjects = subjectsRepository.subjects;
    subjects.removeWhere((element) => element.subjectCategories == null);
    categories = subjectCategoryRepository.subjectCategories;
    for (var subject in subjects) {
      selectedSubjects.add(subject);
    }
    for (var cat in categories) {
      selectedCategories.add(cat);
    }

    emitter(SubjectsState.dataReceived(
        subjects: selectedSubjects,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedSubject: selectedSubject));
  }

  void _resendData(_ResendRequested event, Emitter emitter) {
    emitter(const SubjectsState.pending());
    subjects.removeWhere((element) => element.subjectCategories == null);

    for (var s in subjects) {
      var sCategories = s.subjectCategories;

      if (sCategories != null) {
        for (var subjectCat in sCategories) {
          if (selectedCategories.contains(subjectCat)) {
            if (!selectedSubjects.contains(s)) {
              selectedSubjects.add(s);
            }
          }
        }
      }
    }
    List<SubjectCategory> newCategories = [];
    for (var cat in categories) {
      if (selectedCategories.contains(cat)) {
        newCategories.add(cat);
      }
    }

    selectedCategories = newCategories;

    emitter(SubjectsState.dataReceived(
        subjects: selectedSubjects,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedSubject: selectedSubject));
  }

  void _newSubject(Emitter emitter) {
    emitter(SubjectsState.dataReceived(
        subjects: subjects,
        categories: categories,
        selectedCategories: selectedCategories));
    emitter(const SubjectsState.addSubject());
  }

  void _selectCategory(_SelectCategory event, Emitter emitter) {
    emitter(const SubjectsState.pending());
    if (selectedCategories.contains(event.category)) {
      selectedCategories.remove(event.category);
    } else {
      selectedCategories.add(event.category);
    }
    selectedSubjects = [];
    for (var subject in subjects) {
      if (subject.subjectCategories != null) {
        for (var cat in subject.subjectCategories!) {
          for (var sk in selectedCategories) {
            if (cat.id == sk.id && !selectedSubjects.contains(subject)) {
              selectedSubjects.add(subject);
            }
          }
        }
      }
    }
    emitter(SubjectsState.dataReceived(
        subjects: selectedSubjects,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedSubject: null));
  }

  void _editCategory(_EditCategory event, Emitter emitter) {
    subjectCategoryRepository.updateSubjectCategory(
        subjectCategory: event.category);
    add(const SubjectsEvent.dataRequested());
  }

  void _deleteCategory(_DeleteCategory event, Emitter emitter) {
    if (event.category.id != categories.first.id) {
      subjectCategoryRepository.deleteSubjectCategory(
          subjectCategory: event.category);
    }
  }

  void _selectSubject(_SelectSubject event, Emitter emitter) {
    selectedSubject = event.subject;
    emitter(SubjectsState.dataReceived(
        subjects: selectedSubjects,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedSubject: selectedSubject));
  }
}
