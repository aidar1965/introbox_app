import 'dart:developer';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:moki_tutor/domain/models/course_category.dart';
import 'package:moki_tutor/domain/models/record.dart';
import 'package:moki_tutor/domain/models/subject.dart';
import 'package:moki_tutor/domain/models/subject_category.dart';

import '../../domain/constants.dart';
import '../../domain/interfaces/i_local_db.dart';
import '../../domain/models/course.dart';
import '../../domain/models/record_category.dart';
import '../../domain/models/user.dart';

const String recordCategoryBox = 'recordCategories';
const String recordBox = '_records';
const String courseBox = '_courses';
const String userBox = 'user';
const String subjectBox = '_subjects';
const String subjectCategoryBox = '_subjectCategory';
const String courseCategoryBox = '_courseCategory';

class HiveDB implements ILocalDB {
  Box<Record>? recordHivebox;
  Box<User>? userHiveBox;
  Box<Subject>? subjectHiveBox;
  Box<RecordCategory>? recordCategoryHiveBox;
  Box<Course>? courseHiveBox;
  Box<SubjectCategory>? subjectCategoryHivebox;
  Box<CourseCategory>? courseCategoryHivebox;

  @override
  Future<void> init() async {
    recordHivebox = await Hive.openBox<Record>(recordBox);
    userHiveBox = await Hive.openBox<User>(userBox);
    subjectHiveBox = await Hive.openBox<Subject>(subjectBox);
    recordCategoryHiveBox =
        await Hive.openBox<RecordCategory>(recordCategoryBox);
    courseHiveBox = await Hive.openBox<Course>(courseBox);
    subjectCategoryHivebox =
        await Hive.openBox<SubjectCategory>(subjectCategoryBox);
    courseCategoryHivebox =
        await Hive.openBox<CourseCategory>(courseCategoryBox);
  }

  @override
  void createRecord(Record record) {
    recordHivebox!.add(record);
  }

  @override
  void saveUserLocally(User user) {
    userHiveBox!.add(user);
  }

  @override
  User? getLocalUser() {
    User? user;
    if (userHiveBox!.values.isNotEmpty) {
      user = userHiveBox!.values.first;
    }

    return user;
  }

  @override
  void removeLocalUser() {
    userHiveBox!.clear();
  }

  @override
  void updateRecord({required Record record}) {
    var recordMap = recordHivebox!.toMap();
    for (int i = 0; i < recordMap.length; i++) {
      if (recordMap[i]!.id == record.id) {
        recordHivebox!.putAt(recordMap.keys.elementAt(i), record);
        break;
      }
    }
    updateSubjectsByRecord(record);
  }

  @override
  void updateSubject(Subject subject) {
    var subjectdMap = subjectHiveBox!.toMap();
    for (int i = 0; i < subjectdMap.length; i++) {
      if (subjectdMap[i]!.id == subject.id) {
        subjectHiveBox!.putAt(subjectdMap.keys.elementAt(i), subject);
        updateCoursesBySubject(subject);
        break;
      }
    }
  }

  void updateSubjectsByRecord(Record record) {
    if (subjectHiveBox != null) {
      for (var subject in subjectHiveBox!.values) {
        if (subject.records.contains(record)) {
          for (var i = 0; i < subject.records.length; i++) {
            if (subject.records.elementAt(i).id == record.id) {
              subject.records[i] = record;
              updateSubject(subject);
            }
          }
        }
      }
    }
  }

  void updateCoursesBySubject(Subject subject) {
    if (courseHiveBox != null) {
      for (var course in courseHiveBox!.values) {
        if (course.subjects.contains(subject)) {
          for (var i = 0; i < course.subjects.length; i++) {
            if (course.subjects.elementAt(i).id == subject.id) {
              course.subjects[i] = subject;
              updateCourse(course);
            }
          }
        }
      }
    }
  }

  @override
  void deleteRecord({
    required int id,
  }) {}

  @override
  List<RecordCategory> getCategories() {
    List<RecordCategory> categories = [];

    categories = recordCategoryHiveBox!.values.toList();

    return categories;
  }

  @override
  List<Record> getRecords() {
    List<Record> records = recordHivebox!.values.toList();

    return records;
  }

  @override
  void addCategory(RecordCategory category) {
    recordCategoryHiveBox!.add(category);
  }

  @override
  void editCategory({required RecordCategory category}) {
    var categoriesMap = recordCategoryHiveBox!.toMap();
    categoriesMap.forEach((key, value) {
      if (value.id == category.id) {
        recordCategoryHiveBox!.put(key, category);
      }
    });
    _updateRecorsCategory(category: category);
  }

  void _updateRecorsCategory({required RecordCategory category}) {
    var recordsMap = recordHivebox!.toMap();
    recordsMap.forEach((key, value) {
      var rc = value.categories;
      bool hasCategory = false;
      if (rc != null) {
        List<RecordCategory> newCategoryList = [];
        for (var c in rc) {
          if (c.id == category.id) {
            hasCategory = true;
            break;
          }
        }
        if (hasCategory) {
          for (var c in rc) {
            if (c.id != category.id) {
              newCategoryList.add(c);
            } else {
              newCategoryList.add(category);
            }
          }
          var newRecord = value.copyWith(categories: newCategoryList);
          recordHivebox!.put(key, newRecord);
        }
      }
    });
  }

  @override
  Future<void> deleteCategory(RecordCategory category) async {
    var categoriesMap = recordCategoryHiveBox!.toMap();

    categoriesMap.forEach((key, value) async {
      if (value.id == category.id) {
        await recordCategoryHiveBox!.delete(key);
      }
    });
    _deleteCategoryFromRecords(category);
  }

  @override
  void saveCourse(Course course) {
    courseHiveBox!.add(course);
  }

  @override
  void updateCourse(Course course) {
    if (courseHiveBox != null) {
      var coursesMap = courseHiveBox!.toMap();
      coursesMap.forEach((key, value) {
        if (value.id == course.id) {
          courseHiveBox!.put(key, course);
        }
      });
    }
  }

  @override
  List<Course> getCourses() {
    List<Course> courses = [];

    courses = courseHiveBox!.values.toList();

    return courses;
  }

  @override
  List<Subject> getSubjects() {
    List<Subject> subjects = [];

    subjects = subjectHiveBox!.values.toList();

    return subjects;
  }

  @override
  void addSubject(Subject subject) {
    subjectHiveBox!.add(subject);
  }

  void _deleteCategoryFromRecords(RecordCategory category) {
    var recordsMap = recordHivebox!.toMap();
    recordsMap.forEach((index, value) {
      var oldRecord = value;
      if (oldRecord.categories != null) {
        oldRecord.categories!.removeWhere((element) => category.id == value.id);
      }
      var newRecord = value.copyWith(categories: oldRecord.categories!);
      recordHivebox!.putAt(index, newRecord);
    });
    getRecords();
  }

  @override
  List<SubjectCategory> getSubjectCategories() {
    List<SubjectCategory> subjectCategories = [];

    subjectCategories = subjectCategoryHivebox!.values.toList();
    return subjectCategories;
  }

  @override
  void addSubjectCategory(SubjectCategory subjectCategory) {
    subjectCategoryHivebox!.add(subjectCategory);
  }

  void _deleteCategoryFromSubjects(SubjectCategory subjectCategory) {
    var subjectsMap = subjectHiveBox!.toMap();
    subjectsMap.forEach((index, value) {
      var oldSubject = value;
      if (oldSubject.subjectCategories != null) {
        oldSubject.subjectCategories!
            .removeWhere((element) => subjectCategory.id == value.id);

        var newSubject =
            value.copyWith(subjectCategories: oldSubject.subjectCategories!);
        if (newSubject.subjectCategories == null) {
          newSubject = value.copyWith(
              subjectCategories: [subjectCategoryHivebox!.values.first]);
        } else if (newSubject.subjectCategories!.isEmpty) {
          newSubject = value.copyWith(
              subjectCategories: [subjectCategoryHivebox!.values.first]);
        }
        subjectHiveBox!.putAt(index, newSubject);
      }
    });
  }

  @override
  void deleteSubjectCategory(SubjectCategory subjectCategory) {
    var categoriesMap = subjectCategoryHivebox!.toMap();
    categoriesMap.forEach((key, value) {
      if (value.id == subjectCategory.id) {
        subjectCategoryHivebox!.delete(key);
      }
    });

    _deleteCategoryFromSubjects(subjectCategory);
  }

  @override
  void editSubjectCategory({required SubjectCategory subjectCategory}) {
    var categoriesMap = subjectCategoryHivebox!.toMap();
    categoriesMap.forEach((key, value) {
      if (value.id == subjectCategory.id) {
        subjectCategoryHivebox!.put(key, subjectCategory);
      }
    });
    _updateCategoryInSubjects(subjectCategory);
  }

  void _updateCategoryInSubjects(SubjectCategory subjectCategory) {
    var subjectsMap = subjectHiveBox!.toMap();
    subjectsMap.forEach((key, value) {
      var rc = value.subjectCategories;
      bool hasCategory = false;
      if (rc != null) {
        List<SubjectCategory> newCategoryList = [];
        for (var c in rc) {
          if (c.id == subjectCategory.id) {
            hasCategory = true;
            break;
          }
        }
        if (hasCategory) {
          for (var c in rc) {
            if (c.id != subjectCategory.id) {
              newCategoryList.add(c);
            } else {
              newCategoryList.add(subjectCategory);
            }
          }
          var newSubject = value.copyWith(subjectCategories: newCategoryList);
          subjectHiveBox!.put(key, newSubject);
        }
      }
    });
  }

  @override
  void addCourseCategory(CourseCategory category) {
    courseCategoryHivebox!.add(category);
  }

  @override
  void deleteCourseCategory(CourseCategory category) {
    var categoriesMap = courseCategoryHivebox!.toMap();
    categoriesMap.forEach((key, value) {
      if (value.id == category.id) {
        courseCategoryHivebox!.delete(key);
      }
    });
    _deleteCategoryFromCourse(category);
  }

  void _deleteCategoryFromCourse(CourseCategory category) {
    var subjectsMap = courseHiveBox!.toMap();
    subjectsMap.forEach((index, value) {
      var oldSubject = value;
      if (oldSubject.courseCategories != null) {
        oldSubject.courseCategories
            .removeWhere((element) => category.id == value.id);

        var newSubject =
            value.copyWith(courseCategories: oldSubject.courseCategories);
        if (newSubject.courseCategories == null) {
          newSubject = value.copyWith(
              courseCategories: [courseCategoryHivebox!.values.first]);
        } else if (newSubject.courseCategories.isEmpty) {
          newSubject = value.copyWith(
              courseCategories: [courseCategoryHivebox!.values.first]);
        }
        courseHiveBox!.putAt(index, newSubject);
      }
    });
  }

  @override
  void editCourseCategory(CourseCategory category) {
    var categoriesMap = subjectCategoryHivebox!.toMap();
    categoriesMap.forEach((key, value) {
      if (value.id == category.id) {
        courseCategoryHivebox!.put(key, category);
      }
    });
    _updateCategoryInCourssess(category);
  }

  void _updateCategoryInCourssess(CourseCategory category) {
    var coursesMap = courseHiveBox!.toMap();
    coursesMap.forEach((key, value) {
      var rc = value.courseCategories;
      bool hasCategory = false;

      List<CourseCategory> newCategoryList = [];
      for (var c in rc) {
        if (c.id == category.id) {
          hasCategory = true;
          break;
        }

        if (hasCategory) {
          for (var c in rc) {
            if (c.id != category.id) {
              newCategoryList.add(c);
            } else {
              newCategoryList.add(category);
            }
          }
          var newCourse = value.copyWith(courseCategories: newCategoryList);
          courseHiveBox!.put(key, newCourse);
        }
      }
    });
  }

  @override
  List<CourseCategory> getCourseCategories() {
    return courseCategoryHivebox!.values.toList();
  }
}
