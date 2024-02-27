import 'dart:io';
import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/data/api/http_client/request_exception.dart';
import 'package:introbox/domain/interfaces/i_api.dart';
import 'package:introbox/domain/locator/locator.dart';

import '../../../../domain/models/channel.dart';
import '../../../../domain/models/course.dart';
import '../../../../generated/locale_keys.g.dart';

part 'my_courses_state.dart';
part 'my_courses_event.dart';
part 'my_courses_bloc.freezed.dart';

class MyCoursesBloc extends Bloc<MyCoursesEvent, MyCoursesState> {
  MyCoursesBloc() : super(const MyCoursesState.pending()) {
    on<MyCoursesEvent>(
      (event, emitter) => event.map(
          initialDataRequested: (_) => initialDataRequested(emitter),
          onAddCourse: (event) => onAddCourse(event, emitter),
          onDeleteCourse: (event) => onDeleteCourse(event, emitter),
          onUpdateCourse: (event) => onUpdateCourse(event, emitter),
          loadMore: (event) => onLoadMore(event, emitter),
          onPublishCourse: (event) => onPublishCourse(event, emitter)),
    );
    add(const MyCoursesEvent.initialDataRequested());
    _screenState = const _ScreenState(courses: [], channels: []);
  }

  final api = getIt<IApi>();
  late _ScreenState _screenState;
  final int limit = 20;
  int offset = 0;
  late int total;

  Future<void> initialDataRequested(Emitter<MyCoursesState> emitter) async {
    offset = 0;
    _screenState = _screenState.copyWith(courses: []);
    add(const MyCoursesEvent.loadMore());
  }

  Future<void> onAddCourse(
      _EventAddCourse event, Emitter<MyCoursesState> emitter) async {
    try {
      await api.addCourse(
          title: event.title,
          description: event.description,
          channelId: event.channelId,
          imageBytes: event.imageBytes);
      add(const MyCoursesEvent.initialDataRequested());
    } on Object {
      emitter(const MyCoursesState.requestError());
      rethrow;
    }
  }

  Future<void> onDeleteCourse(
      _EventDeleteCourse event, Emitter<MyCoursesState> emitter) async {
    try {
      await api.deleteCourse(id: event.id);

      final newCourses = <Course>[];
      _screenState.courses.map((e) {
        if (e.id != event.id) newCourses.add(e);
      });

      _screenState = _screenState.copyWith(courses: newCourses);
      emitter(_screenState);
    } on RequestException catch (e) {
      if (e.httpStatusCode == HttpStatus.badRequest) {
        emitter(MyCoursesState.requestError(
            errorText: LocaleKeys.courseDeleteUnable.tr()));
      }
    } on Object {
      emitter(const MyCoursesState.requestError());
      rethrow;
    }
  }

  Future<void> onUpdateCourse(
      _EventUpdateCourse event, Emitter<MyCoursesState> emitter) async {
    try {
      await api.updateCourse(
          id: event.id,
          title: event.title,
          description: event.description,
          channelId: event.channelId,
          price: event.price,
          imageBytes: event.imageBytes);
      add(const MyCoursesEvent.initialDataRequested());
    } on Object {
      emitter(const MyCoursesState.requestError());
      rethrow;
    }
  }

  Future<void> onLoadMore(
      _EventLoadMore event, Emitter<MyCoursesState> emitter) async {
    emitter(const MyCoursesState.pending());
    try {
      final paginatedCourses =
          await api.getCourses(limit: limit, offset: offset);
      final courses = <Course>[
        ..._screenState.courses,
        ...paginatedCourses.courses.toList()
      ];
      total = paginatedCourses.count;
      offset = paginatedCourses.offset;
      final channels = await api.getChannels();
      _screenState =
          _screenState.copyWith(channels: channels, courses: courses);
      emitter(_screenState);
    } on Object {
      if (_screenState.channels.isEmpty) {
        emitter(const MyCoursesState.initialLoadingError());
      } else {
        emitter(const MyCoursesState.loadMoreError());
      }
    }
  }

  Future<void> onPublishCourse(
      _EventPublishCourse event, Emitter<MyCoursesState> emitter) async {
    try {
      await api.publishCourse(id: event.id);
      add(const MyCoursesEvent.initialDataRequested());
    } on Object {
      emitter(const MyCoursesState.requestError());
      rethrow;
    }
  }
}
