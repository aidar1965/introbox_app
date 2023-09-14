import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_course_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_courses_repository.dart';

import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';

import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/course.dart';
import '../../../../domain/models/course_category.dart';

part 'courses_event.dart';
part 'courses_state.dart';
part 'courses_bloc.freezed.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  CoursesBloc() : super(const _Pending()) {
    on<CoursesEvent>((event, emitter) => event.map(
          initialDataRequested: (event) =>
              _initialDataRequested(event, emitter),
          newCourse: (event) => _newCourse(event, emitter),
          publishCourse: (event) => _publishCourse(event, emitter),
          selectCategory: (event) => _selectCategory(event, emitter),
          selectCourse: (event) => _selectCourse(event, emitter),
        ));
    coursesRepository.addChangeListener(
      () {
        if (!isClosed) {
          log('updating course list from courses bloc');
          add(const CoursesEvent.initialDataRequested());
        }
      },
    );
    subjectsRepository.addChangeListener(
      () {
        add(const CoursesEvent.initialDataRequested());
      },
    );
    isAuthorized = userRepository.isAuthorized;
    userRepository
        .addChangeListener((() => isAuthorized = userRepository.isAuthorized));
    add(const CoursesEvent.initialDataRequested());
    log('courses bloc opened');
  }

  final ICoursesRepository coursesRepository = getIt<ICoursesRepository>();
  final ISubjectsRepository subjectsRepository = getIt<ISubjectsRepository>();
  final ICourseCategoryRepository courseCategoryRepository =
      getIt<ICourseCategoryRepository>();
  final IUserRepository userRepository = getIt<IUserRepository>();

  List<Course> courses = [];
  List<Course> publishedCourses = [];
  List<Course> selectedCourses = [];
  List<CourseCategory> categories = [];
  List<CourseCategory> selectedCategories = [];
  Course? selectedCourse;
  bool isAuthorized = false;

  void _initialDataRequested(
      _InitialDataRequested event, Emitter emitter) async {
    emitter(const CoursesState.pending());

    categories = courseCategoryRepository.categories;
    for (var category in categories) {
      selectedCategories.add(category);
    }
    courses = coursesRepository.courses;

    for (var course in courses) {
      selectedCourses.add(course);
    }
    if (userRepository.isAuthorized) {
      publishedCourses = await coursesRepository.getPublishedCourses() ?? [];
      // log(publishedCourses.first.subjects.first.records.first.audioPath);
      // log(publishedCourses.first.subjects.first.records.first.imagePath);
    }

    emitter(CoursesState.initialDataReceived(
        courses: selectedCourses,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedCourse: selectedCourse,
        isAuthorized: isAuthorized,
        publishedCourses: publishedCourses));
  }

  Future<void> _publishCourse(_PublishCourse event, Emitter emitter) async {
    await coursesRepository.publishCourse(event.course);
    emitter(const CoursesState.pending());
    try {
      await coursesRepository.publishCourse(event.course);
    } catch (e) {
      log(e.toString());
    }
  }

  void _selectCategory(_SelectCategory event, Emitter emitter) {
    selectedCourses = [];
    if (selectedCategories.contains(event.category)) {
      selectedCategories.remove(event.category);
    } else {
      selectedCategories.add(event.category);
    }

    for (var category in selectedCategories) {
      for (var course in courses) {
        if (course.courseCategories.contains(category)) {
          if (!selectedCourses.contains(course)) {
            selectedCourses.add(course);
          }
        }
      }
    }
    emitter(const CoursesState.pending());
    emitter(CoursesState.initialDataReceived(
        courses: selectedCourses,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedCourse: selectedCourse,
        isAuthorized: isAuthorized,
        publishedCourses: publishedCourses));
  }

  void _selectCourse(_SelectCourse event, Emitter emitter) {
    selectedCourse = event.course;
    emitter(const CoursesState.pending());
    emitter(CoursesState.initialDataReceived(
        courses: selectedCourses,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedCourse: selectedCourse,
        isAuthorized: isAuthorized,
        publishedCourses: publishedCourses));
  }

  void _newCourse(_NewCourse event, Emitter emitter) {
    emitter(CoursesState.initialDataReceived(
        courses: selectedCourses,
        categories: categories,
        selectedCategories: selectedCategories,
        selectedCourse: selectedCourse,
        isAuthorized: isAuthorized,
        publishedCourses: publishedCourses));
    emitter(const CoursesState.newCourse());
  }

  @override
  Future<void> close() {
    log('Courses bloc closed');
    return super.close();
  }
}
