import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../domain/models/course_category.dart';
import '../../domain/models/fragment.dart';
import '../../domain/models/subject.dart';
import '../../domain/models/subject_category.dart';

import '../../domain/interfaces/i_local_db.dart';
import '../../domain/models/course.dart';
import '../../domain/models/fragment_category.dart';
import '../../domain/models/user.dart';
import 'db_helper.dart';

class LocalDB implements ILocalDB {
  Database? _db;
  @override
  Future<LocalDB> init() async {
    final dbHelper = DbHelper();
    _db = await dbHelper.database;
    return this;
  }

  @override
  void saveUserLocally(User user) {}

  @override
  User? getLocalUser() {
    User? user;

    return user;
  }

  @override
  void removeLocalUser() {}

  @override
  void updateFragment({required Fragment record}) {
    updateSubjectsByFragment(record);
  }

  @override
  void updateSubject(Subject subject) {}

  void updateSubjectsByFragment(Fragment record) {
    // if (subjectHiveBox != null) {
    //   for (var subject in subjectHiveBox!.values) {
    //     if (subject.records.contains(record)) {
    //       for (var i = 0; i < subject.records.length; i++) {
    //         if (subject.records.elementAt(i).id == record.id) {
    //           subject.records[i] = record;
    //           updateSubject(subject);
    //         }
    //       }
    //     }
    //   }
    // }
  }

  void updateCoursesBySubject(Subject subject) {
    // if (courseHiveBox != null) {
    //   for (var course in courseHiveBox!.values) {
    //     if (course.subjects.contains(subject)) {
    //       for (var i = 0; i < course.subjects.length; i++) {
    //         if (course.subjects.elementAt(i).id == subject.id) {
    //           course.subjects[i] = subject;
    //           updateCourse(course);
    //         }
    //       }
    //     }
    //   }
    // }
  }

  @override
  void deleteFragment({
    required int id,
  }) {}

  @override
  List<FragmentCategory> getCategories() {
    List<FragmentCategory> categories = [];

    //  categories = recordCategoryHiveBox!.values.toList();

    return categories;
  }

  @override
  List<Fragment> getFragments() {
    List<Fragment> records = [];

    return records;
  }

  @override
  void addCategory(String name) {}

  @override
  void editCategory({required FragmentCategory category}) {
    // var categoriesMap = recordCategoryHiveBox!.toMap();
    // categoriesMap.forEach((key, value) {
    //   if (value.id == category.id) {
    //     recordCategoryHiveBox!.put(key, category);
    //   }
    // });
    // _updateRecordCategory(category: category);
  }

  void _updateRecordCategory({required FragmentCategory category}) {
    // var recordsMap = recordHivebox!.toMap();
    // recordsMap.forEach((key, value) {
    //   var rc = value.categories;
    //   bool hasCategory = false;
    //   if (rc != null) {
    //     List<FragmentCategory> newCategoryList = [];
    //     for (var c in rc) {
    //       if (c.id == category.id) {
    //         hasCategory = true;
    //         break;
    //       }
    //     }
    //     if (hasCategory) {
    //       for (var c in rc) {
    //         if (c.id != category.id) {
    //           newCategoryList.add(c);
    //         } else {
    //           newCategoryList.add(category);
    //         }
    //       }
    //       var newFragment = value.copyWith(categories: newCategoryList);
    //       recordHivebox!.put(key, newFragment);
    //     }
    //   }
    // });
  }

  @override
  Future<void> deleteCategory(FragmentCategory category) async {
    // var categoriesMap = recordCategoryHiveBox!.toMap();

    // categoriesMap.forEach((key, value) async {
    //   if (value.id == category.id) {
    //     await recordCategoryHiveBox!.delete(key);
    //   }
    // });
    // _deleteCategoryFromFragments(category);
  }

  @override
  void saveCourse(Course course) {}

  @override
  void updateCourse(Course course) {
    // if (courseHiveBox != null) {
    //   var coursesMap = courseHiveBox!.toMap();
    //   coursesMap.forEach((key, value) {
    //     if (value.id == course.id) {
    //       courseHiveBox!.put(key, course);
    //     }
    //   });
    // }
  }

  @override
  List<Course> getCourses() {
    List<Course> courses = [];

    return courses;
  }

  @override
  List<Subject> getSubjects() {
    List<Subject> subjects = [];

    return subjects;
  }

  @override
  void addSubject({
    required String title,
    String? description,
    List<Fragment>? records,
    required DateTime date,
    List<SubjectCategory>? subjectCategories,
    int? duration,
  }) {}

  void _deleteCategoryFromFragments(FragmentCategory category) {
    // var recordsMap = recordHivebox!.toMap();
    // recordsMap.forEach((index, value) {
    //   var oldFragment = value;
    //   if (oldFragment.categories != null) {
    //     oldFragment.categories!
    //         .removeWhere((element) => category.id == value.id);
    //   }
    //   var newFragment = value.copyWith(categories: oldFragment.categories!);
    //   recordHivebox!.putAt(index, newFragment);
    // });
    getFragments();
  }

  @override
  List<SubjectCategory> getSubjectCategories() {
    List<SubjectCategory> subjectCategories = [];

    return subjectCategories;
  }

  @override
  void addSubjectCategory(String name) {}

  void _deleteCategoryFromSubjects(SubjectCategory subjectCategory) {
    // var subjectsMap = subjectHiveBox!.toMap();
    // subjectsMap.forEach((index, value) {
    //   var oldSubject = value;
    //   if (oldSubject.subjectCategories != null) {
    //     oldSubject.subjectCategories!
    //         .removeWhere((element) => subjectCategory.id == value.id);

    //     var newSubject =
    //         value.copyWith(subjectCategories: oldSubject.subjectCategories!);
    //     if (newSubject.subjectCategories == null) {
    //       newSubject = value.copyWith(
    //           subjectCategories: [subjectCategoryHivebox!.values.first]);
    //     } else if (newSubject.subjectCategories!.isEmpty) {
    //       newSubject = value.copyWith(
    //           subjectCategories: [subjectCategoryHivebox!.values.first]);
    //     }
    //     subjectHiveBox!.putAt(index, newSubject);
    //   }
    // });
  }

  @override
  void deleteSubjectCategory(SubjectCategory subjectCategory) {
    // var categoriesMap = subjectCategoryHivebox!.toMap();
    // categoriesMap.forEach((key, value) {
    //   if (value.id == subjectCategory.id) {
    //     subjectCategoryHivebox!.delete(key);
    //   }
    // });

    _deleteCategoryFromSubjects(subjectCategory);
  }

  @override
  void editSubjectCategory({required SubjectCategory subjectCategory}) {
    // var categoriesMap = subjectCategoryHivebox!.toMap();
    // categoriesMap.forEach((key, value) {
    //   if (value.id == subjectCategory.id) {
    //     subjectCategoryHivebox!.put(key, subjectCategory);
    //   }
    // });
    _updateCategoryInSubjects(subjectCategory);
  }

  void _updateCategoryInSubjects(SubjectCategory subjectCategory) {
    // var subjectsMap = subjectHiveBox!.toMap();
    // subjectsMap.forEach((key, value) {
    //   var rc = value.subjectCategories;
    //   bool hasCategory = false;
    //   if (rc != null) {
    //     List<SubjectCategory> newCategoryList = [];
    //     for (var c in rc) {
    //       if (c.id == subjectCategory.id) {
    //         hasCategory = true;
    //         break;
    //       }
    //     }
    //     if (hasCategory) {
    //       for (var c in rc) {
    //         if (c.id != subjectCategory.id) {
    //           newCategoryList.add(c);
    //         } else {
    //           newCategoryList.add(subjectCategory);
    //         }
    //       }
    //       var newSubject = value.copyWith(subjectCategories: newCategoryList);
    //       subjectHiveBox!.put(key, newSubject);
    //     }
    //   }
    // });
  }

  @override
  void addCourseCategory(String name) {}

  @override
  void deleteCourseCategory(CourseCategory category) {
    // var categoriesMap = courseCategoryHivebox!.toMap();
    // categoriesMap.forEach((key, value) {
    //   if (value.id == category.id) {
    //     courseCategoryHivebox!.delete(key);
    //   }
    // });
    _deleteCategoryFromCourse(category);
  }

  void _deleteCategoryFromCourse(CourseCategory category) {
    // var subjectsMap = courseHiveBox!.toMap();
    // subjectsMap.forEach((index, value) {
    //   var oldSubject = value;
    //   if (oldSubject.courseCategories != null) {
    //     oldSubject.courseCategories
    //         .removeWhere((element) => category.id == value.id);

    //     var newSubject =
    //         value.copyWith(courseCategories: oldSubject.courseCategories);
    //     if (newSubject.courseCategories == null) {
    //       newSubject = value.copyWith(
    //           courseCategories: [courseCategoryHivebox!.values.first]);
    //     } else if (newSubject.courseCategories.isEmpty) {
    //       newSubject = value.copyWith(
    //           courseCategories: [courseCategoryHivebox!.values.first]);
    //     }
    //     courseHiveBox!.putAt(index, newSubject);
    //   }
    // });
  }

  @override
  void editCourseCategory(String name) {
    // var categoriesMap = subjectCategoryHivebox!.toMap();
    // categoriesMap.forEach((key, value) {
    //   if (value.id == category.id) {
    //     courseCategoryHivebox!.put(key, category);
    //   }
    // });
    //   _updateCategoryInCourses(category);
  }

  void _updateCategoryInCourses(CourseCategory category) {
    // var coursesMap = courseHiveBox!.toMap();
    // coursesMap.forEach((key, value) {
    //   var rc = value.courseCategories;
    //   bool hasCategory = false;

    //   List<CourseCategory> newCategoryList = [];
    //   for (var c in rc) {
    //     if (c.id == category.id) {
    //       hasCategory = true;
    //       break;
    //     }

    //     if (hasCategory) {
    //       for (var c in rc) {
    //         if (c.id != category.id) {
    //           newCategoryList.add(c);
    //         } else {
    //           newCategoryList.add(category);
    //         }
    //       }
    //       var newCourse = value.copyWith(courseCategories: newCategoryList);
    //       courseHiveBox!.put(key, newCourse);
    //     }
    //   }
    // });
  }

  @override
  List<CourseCategory> getCourseCategories() {
    return [];
  }

  @override
  void addFragment(
      {required String title,
      String? description,
      String? imagePath,
      required int duration,
      required String audioPath,
      required DateTime date,
      String? images,
      List<FragmentCategory>? selectedCategories}) {
    // TODO: implement addFragment
  }
}
