import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_course_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_courses_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/models/course.dart';
import 'package:moki_tutor/domain/models/subject_category.dart';
import 'package:nanoid/nanoid.dart';

import '../../../../../domain/locator/locator.dart';
import '../../../../../domain/models/course_category.dart';
import '../../../../../domain/models/subject.dart';

part 'new_course_event.dart';
part 'new_course_state.dart';
part 'new_course_bloc.freezed.dart';

class NewCourseBloc extends Bloc<NewCourseEvent, NewCourseState> {
  NewCourseBloc() : super(const _Pending()) {
    on<NewCourseEvent>((event, emitter) => event.map(
          dataRequested: (event) => _dataRequested(event, emitter),
          addCourseCategory: (event) => _addCourseCategory(event, emitter),
          resendData: (event) => _resendData(emitter),
          selectCourseCategory: (event) =>
              _selectCourseCategory(event, emitter),
          selectSubjectCategory: (event) =>
              _selectSubjectCategory(event, emitter),
          selectCourseSubject: (event) => _selectCourseSubject(event, emitter),
          onReorder: (event) => _onReordering(event, emitter),
          saveCourse: (event) => _saveCourse(event, emitter),
        ));

    courseCategoryRepository.addChangeListener(() {
      courseCategories = courseCategoryRepository.categories;
      add(const NewCourseEvent.resendData());
    });

    add(const NewCourseEvent.dataRequested());
  }

  final ICoursesRepository coursesRepository = getIt<ICoursesRepository>();
  final ICourseCategoryRepository courseCategoryRepository =
      getIt<ICourseCategoryRepository>();
  final ISubjectsRepository subjectsRepository = getIt<ISubjectsRepository>();
  final ISubjectCategoryRepository subjectCategoryRepository =
      getIt<ISubjectCategoryRepository>();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  List<CourseCategory> courseCategories = [];
  List<CourseCategory> selectedCourseCategories = [];
  List<SubjectCategory> subjectCategories = [];
  List<SubjectCategory> selectedSubjectCategories = [];
  List<Subject> subjects = [];
  List<Subject> selectedSubjects = [];
  List<Subject> courseSubjects = [];

  void _dataRequested(_DataRequested event, Emitter emitter) {
    courseCategories = courseCategoryRepository.categories;
    subjects = subjectsRepository.subjects;
    subjects.removeWhere((element) => element.subjectCategories == null);
    for (var element in subjects) {
      selectedSubjects.add(element);
    }
    subjectCategories = subjectCategoryRepository.subjectCategories;
    for (var element in subjectCategories) {
      selectedSubjectCategories.add(element);
    }

    _resendData(emitter);
  }

  void _resendData(Emitter emitter) {
    emitter(const NewCourseState.pending());
    emitter(NewCourseState.dataReceived(
        courseCategories: courseCategories,
        subjects: selectedSubjects,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        selectedCourseCategories: selectedCourseCategories,
        courseSubjects: courseSubjects,
        titleController: titleController,
        descriptionController: descriptionController));
  }

  void _addCourseCategory(_AddCourseCategory event, Emitter emitter) {
    emitter(const NewCourseState.pending());
    courseCategoryRepository.addCategory(
      event.name,
    );
    emitter(NewCourseState.dataReceived(
        courseCategories: courseCategories,
        subjects: selectedSubjects,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        selectedCourseCategories: selectedCourseCategories,
        courseSubjects: courseSubjects,
        titleController: titleController,
        descriptionController: descriptionController));
  }

  void _selectCourseCategory(_SelectCourseCategory event, Emitter emitter) {
    if (selectedCourseCategories.contains(event.courseCategory)) {
      selectedCourseCategories.remove(event.courseCategory);
    } else {
      selectedCourseCategories.add(event.courseCategory);
    }
    add(const NewCourseEvent.resendData());
  }

  void _selectSubjectCategory(_SelectSubjectCategory event, Emitter emitter) {
    if (selectedSubjectCategories.contains(event.subjectCategory)) {
      selectedSubjectCategories.remove(event.subjectCategory);
    } else {
      selectedSubjectCategories.add(event.subjectCategory);
    }
    _selectSubjectsWithCategories();
    add(const NewCourseEvent.resendData());
  }

  void _selectSubjectsWithCategories() {
    selectedSubjects = [];
    for (var subject in subjects) {
      if (subject.subjectCategories != null) {
        for (var sc in subject.subjectCategories!) {
          if (selectedSubjectCategories.contains(sc)) {
            selectedSubjects.add(subject);
            break;
          }
        }
      }
    }
  }

  void _selectCourseSubject(_SelectCourseSubject event, Emitter emitter) {
    if (courseSubjects.contains(event.subject)) {
      courseSubjects.remove(event.subject);
    } else {
      courseSubjects.add(event.subject);
    }
    add(const NewCourseEvent.resendData());
  }

  void _onReordering(_OnReorder event, Emitter emitter) {
    int oldIndex = event.oldIndex;
    int newIndex = event.newIndex;
    if (newIndex > oldIndex) {
      newIndex = newIndex - 1;
    }
    final element = courseSubjects.removeAt(oldIndex);
    courseSubjects.insert(newIndex, element);
    add(const NewCourseEvent.resendData());
  }

  void _saveCourse(_SaveCourse event, Emitter emitter) {
    var nanoId = nanoid(12);
    coursesRepository.addCourse(Course(
        title: titleController.text,
        description: descriptionController.text,
        price: 0,
        isPublished: false,
        id: nanoId,
        subjects: subjects,
        lastUpdate: DateTime.now(),
        date: DateTime.now(),
        lang: Lang.ru, // TODO сделать выбор
        courseCategories: selectedCourseCategories,
        duration: _courseDuration()));
  }

  int _courseDuration() {
    int duration = 0;
    for (var subject in subjects) {
      duration = duration + (subject.duration ?? 0);
    }
    return duration;
  }
}
