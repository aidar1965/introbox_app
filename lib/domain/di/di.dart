import 'package:flutter/material.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_course_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_courses_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/interfaces/i_records_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_request_manager.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';

import '../../presentation/screens/assembling/bloc/assembling_bloc.dart';
import '../../presentation/screens/courses/bloc/courses_bloc.dart';
import '../../presentation/screens/courses/new_course/bloc/new_course_bloc.dart';
import '../../presentation/screens/home_screen/bloc/home_bloc.dart';
import '../../presentation/screens/login/bloc/login_bloc.dart';
import '../../presentation/screens/profile/bloc/profile_bloc.dart';
import '../../presentation/screens/recording/bloc/recording_bloc.dart';
import '../../presentation/screens/records/bloc/records_bloc.dart';
import '../../presentation/screens/records/edit_record/bloc/edit_record_bloc.dart';
import '../../presentation/screens/subjects/bloc/subjects_bloc.dart';
import '../../presentation/screens/subjects/edit_subject/bloc/edit_subject_bloc.dart';
import '../models/record.dart';
import '../models/subject.dart';

class Di extends InheritedWidget {
  final Map<Type, Object> environment;

  // ---------------------------------------------------------------------------
  Di({Key? key, required Widget child, required this.environment})
      : super(key: key, child: child);

  // ---------------------------------------------------------------------------
  static Di of(BuildContext context) {
    final Di? di = context.findAncestorWidgetOfExactType<Di>();
    if (di == null) {
      throw UnimplementedError('Di is not initialized in context');
    }
    return di;
  }

  // ---------------------------------------------------------------------------
  @override
  bool updateShouldNotify(Di oldWidget) {
    return false;
  }

  // ---------------------------------------------------------------------------
  T g<T>() => environment[T] as T;

  // ---------------------------------------------------------------------------
  T? mayBeGet<T>() => environment[T] as T?;

  //--------------------------------------------------//

  HomeBloc? _homeBloc;
  ProfileBloc? _profileBloc;
  LoginBloc? _loginBloc;
  AssemblingBloc? _assemblingBloc;
  CoursesBloc? _coursesBloc;
  RecordingBloc? _recordingBloc;
  RecordsBloc? _recordsBloc;
  SubjectsBloc? _subjectsBloc;

  EditRecordBloc? _editRecordBloc;
  EditSubjectBloc? _editSubjectBloc;
  NewCourseBloc? _newCourseBloc;

  HomeBloc buildHomeBloc({bool forceCreate = true}) {
    if (_homeBloc == null || forceCreate) {
      _homeBloc = HomeBloc(
        userRepository: g<IUserRepository>(),
        api: g<IApi>(),
      );
    }
    return _homeBloc!;
  }

  ProfileBloc builProfileBloc({bool forceCreate = true}) {
    if (_profileBloc == null || forceCreate) {
      _profileBloc = ProfileBloc(userRepository: g<IUserRepository>());
    }
    return _profileBloc!;
  }

  LoginBloc builLoginBloc({bool forceCreate = true}) {
    if (_loginBloc == null || forceCreate) {
      _loginBloc = LoginBloc(userRepository: g<IUserRepository>());
    }
    return _loginBloc!;
  }

  AssemblingBloc builAssemblingBloc({bool forceCreate = true}) {
    if (_assemblingBloc == null || forceCreate) {
      _assemblingBloc = AssemblingBloc(
          requestManager: g<IRequestManager>(),
          categoryRepository: g<ICategoryRepository>(),
          subjectsRepository: g<ISubjectsRepository>(),
          subjectCategoryRepository: g<ISubjectCategoryRepository>());
    }
    return _assemblingBloc!;
  }

  CoursesBloc builCoursesBloc({bool forceCreate = true}) {
    if (_coursesBloc == null || forceCreate) {
      _coursesBloc = CoursesBloc(
          courseCategoryRepository: g<ICourseCategoryRepository>(),
          coursesRepository: g<ICoursesRepository>(),
          subjectsRepository: g<ISubjectsRepository>(),
          userRepository: g<IUserRepository>());
    }
    return _coursesBloc!;
  }

  RecordingBloc builRecordingBloc({bool forceCreate = true}) {
    if (_recordingBloc == null || forceCreate) {
      _recordingBloc = RecordingBloc(
          recordsRepository: g<IRecordsRepository>(),
          categoryRepository: g<ICategoryRepository>());
    }
    return _recordingBloc!;
  }

  RecordsBloc buildRecordsBloc({bool forceCreate = true}) {
    if (_recordsBloc == null || forceCreate) {
      _recordsBloc = RecordsBloc(
          requestManager: g<IRequestManager>(),
          recordsRepository: g<IRecordsRepository>(),
          categoryRepository: g<ICategoryRepository>());
    }
    return _recordsBloc!;
  }

  SubjectsBloc buildSubjectsBloc({bool forceCreate = true}) {
    if (_subjectsBloc == null || forceCreate) {
      _subjectsBloc = SubjectsBloc(
          subjectsRepository: g<ISubjectsRepository>(),
          subjectCategoryRepository: g<ISubjectCategoryRepository>());
    }
    return _subjectsBloc!;
  }

  EditRecordBloc buildEditRecordrBloc(Record record,
      {bool forceCreate = true}) {
    if (_editRecordBloc == null || forceCreate) {
      _editRecordBloc = EditRecordBloc(
          record: record,
          recordsRepository: g<IRecordsRepository>(),
          categoryRepository: g<ICategoryRepository>());
    }
    return _editRecordBloc!;
  }

  EditSubjectBloc buildEditSubjectBloc(Subject subject,
      {bool forceCreate = true}) {
    if (_editSubjectBloc == null || forceCreate) {
      _editSubjectBloc = EditSubjectBloc(
          subject: subject,
          subjectsRepository: g<ISubjectsRepository>(),
          subjectCategoryRepository: g<ISubjectCategoryRepository>(),
          categoryRepository: g<ICategoryRepository>(),
          recordsRepository: g<IRecordsRepository>());
    }
    return _editSubjectBloc!;
  }

  NewCourseBloc buildNewCourseBloc({bool forceCreate = true}) {
    if (_newCourseBloc == null || forceCreate) {
      _newCourseBloc = NewCourseBloc(
          coursesRepository: g<ICoursesRepository>(),
          courseCategoryRepository: g<ICourseCategoryRepository>(),
          subjectsRepository: g<ISubjectsRepository>(),
          subjectCategoryRepository: g<ISubjectCategoryRepository>());
    }
    return _newCourseBloc!;
  }
}
