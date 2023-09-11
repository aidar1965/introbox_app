import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:nanoid/nanoid.dart';

import 'package:moki_tutor/domain/interfaces/i_request_manager.dart';

import '../../../../domain/interfaces/i_category_repository.dart';
import '../../../../domain/interfaces/i_subject_repository.dart';
import '../../../../domain/models/record.dart';
import '../../../../domain/models/record_category.dart';
import '../../../../domain/models/subject.dart';
import '../../../../domain/models/subject_category.dart';
import '../../../player/player_widget.dart';

part 'assembling_bloc.freezed.dart';
part 'assembling_event.dart';
part 'assembling_state.dart';

class AssemblingBloc extends Bloc<AssemblingEvent, AssemblingState> {
  AssemblingBloc(
      {required this.requestManager,
      required this.categoryRepository,
      required this.subjectsRepository,
      required this.subjectCategoryRepository})
      : super(const _Pending()) {
    on<AssemblingEvent>((event, emitter) => event.map(
          addRecord: (event) => _addRecord(event, emitter),
          fetchInitialData: (event) => _fetchInitialData(event, emitter),
          selectCategory: (event) => _selectCategory(event, emitter),
          onReorder: (event) => _onReordering(event, emitter),
          setPlayerStatus: (event) => _setPlayerStatus(event, emitter),
          playRecord: (event) => _playRecord(event, emitter),
          startTimer: (event) => _startTimer(event, emitter),
          stopTimer: (event) => _stopTimer(event, emitter),
          clearTimer: (event) => _clearTimer(event, emitter),
          resendData: (event) => _resendData(event, emitter),
          saveSubject: (event) => _saveSubject(event, emitter),
          addSubjectCategory: (event) => _addSubjectCategory(event, emitter),
          selectSubjectCategory: (event) =>
              _selectSubjectCategory(event, emitter),
        ));
    categoryRepository.addChangeListener(() {
      categories = categoryRepository.categories;
      add(const AssemblingEvent.resendData());
    });
    subjectCategoryRepository.addChangeListener(() {
      subjectCategories = subjectCategoryRepository.subjectCategories;
      add(const AssemblingEvent.resendData());
    });

    add(const AssemblingEvent.fetchInitialData());
  }

  final IRequestManager requestManager;
  final ICategoryRepository categoryRepository;
  final ISubjectsRepository subjectsRepository;
  final ISubjectCategoryRepository subjectCategoryRepository;

  List<RecordCategory> selectedCategories = [];
  List<RecordCategory> categories = [];
  List<SubjectCategory> selectedSubjectCategories = [];
  List<SubjectCategory> subjectCategories = [];

  List<Record> records = [];
  List<Record> subjectRecords = [];
  List<Record> selectedRecords = [];

  PlayerStatus? playerStatus;
  Record? playingRecord;

  Timer? timer;
  int secondsPassed = 0;

  var nanoId = nanoid(12);

  Future<void> _fetchInitialData(
      _FetchInitialData event, Emitter emitter) async {
    categories = categoryRepository.categories;
    subjectCategories = subjectCategoryRepository.subjectCategories;
    for (var cat in categories) {
      selectedCategories.add(cat);
    }
    records = await requestManager.getRecords();
    for (var record in records) {
      if (!selectedRecords.contains(record)) {
        selectedRecords.add(record);
      }
    }
    selectedRecords.sort((a, b) => b.date.compareTo(a.date));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories));
  }

  void _selectCategory(_SelectCategory event, Emitter emitter) async {
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
            if (sk.id == element.id) {
              if (!selectedRecords.contains(record)) {
                selectedRecords.add(record);
              }
            }
          }
        }
      }
    }
    selectedRecords.sort((a, b) => b.date.compareTo(a.date));

    emitter((const AssemblingState.pending()));
    if (selectedCategories.isNotEmpty) {
      emitter(AssemblingState.dataReceived(
          categories: categories,
          records: selectedRecords,
          selectedCategories: selectedCategories,
          subjectRecords: subjectRecords,
          subjectCategories: subjectCategories,
          selectedSubjectCategories: selectedSubjectCategories,
          playerStatus: playerStatus,
          playingRecord: playingRecord));
    } else {
      selectedRecords = [];
      for (var element in records) {
        if (element.categories!.isEmpty) selectedRecords.add(element);
      }
      selectedRecords.sort((a, b) => b.date.compareTo(a.date));
      emitter(AssemblingState.dataReceived(
          categories: categories,
          records: selectedRecords,
          selectedCategories: selectedCategories,
          subjectRecords: subjectRecords,
          subjectCategories: subjectCategories,
          selectedSubjectCategories: selectedSubjectCategories,
          playerStatus: playerStatus,
          playingRecord: playingRecord));
    }
  }

  void _addSubjectCategory(_AddSubjectCategory event, Emitter emitter) {
    subjectCategoryRepository.addSubjectCategory(
        subjectCategory: SubjectCategory(id: nanoId, name: event.name));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingRecord: playingRecord));
  }

  void _selectSubjectCategory(_SelectSubjectCategory event, Emitter emitter) {
    emitter((const AssemblingState.pending()));
    if (selectedSubjectCategories.contains(event.subjectCategory)) {
      selectedSubjectCategories.remove(event.subjectCategory);
    } else {
      selectedSubjectCategories.add(event.subjectCategory);
    }
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingRecord: playingRecord));
  }

  void _addRecord(_AddRecord event, Emitter emitter) {
    secondsPassed = 0;
    if (subjectRecords.contains(event.record)) {
      subjectRecords.remove(event.record);
    } else {
      subjectRecords.add(event.record);
    }
    if (subjectRecords.isNotEmpty) {
      playingRecord = subjectRecords.first;
    } else {
      playingRecord = null;
    }

    emitter((const AssemblingState.pending()));
    selectedRecords.sort((a, b) => b.date.compareTo(a.date));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playingRecord: playingRecord,
        playerStatus: PlayerStatus.stop));
  }

  void _onReordering(_OnReorder event, Emitter emitter) {
    if (playerStatus != PlayerStatus.stop && playerStatus != null) return;
    int oldIndex = event.oldIndex;
    int newIndex = event.newIndex;
    if (newIndex > oldIndex) {
      newIndex = newIndex - 1;
    }
    final element = subjectRecords.removeAt(oldIndex);
    subjectRecords.insert(newIndex, element);
    playingRecord = subjectRecords.first;
    emitter((const AssemblingState.pending()));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playingRecord: playingRecord,
        playerStatus: PlayerStatus.stop));
  }

  void _setPlayerStatus(_SetPlayerStatus event, Emitter emitter) {
    playerStatus = event.playerStatus;
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playingRecord: playingRecord,
        playerStatus: playerStatus));
  }

  void _playRecord(_PlayRecord event, Emitter emitter) {
    add(const AssemblingEvent.setPlayerStatus(PlayerStatus.stop));
    playingRecord = event.record;
    playerStatus = PlayerStatus.play;
    emitter((const AssemblingState.pending()));
    add(AssemblingEvent.setPlayerStatus(playerStatus!));
  }

  Future<void> _startTimer(_StartTimer event, Emitter emitter) async {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const AssemblingEvent.resendData());
      secondsPassed++;
      // log(secondsPassed.toString());
      if (secondsPassed > playingRecord!.duration) {
        add(const AssemblingEvent.clearTimer());
        for (int index = 0; index < subjectRecords.length; index++) {
          if (playingRecord!.id == subjectRecords[index].id) {
            if (index + 1 < subjectRecords.length) {
              playingRecord = subjectRecords[index + 1];
              secondsPassed = 0;
              add(AssemblingEvent.playRecord(playingRecord!));
              add(const AssemblingEvent.startTimer());
              break;
            }
          }
        }
      }
    });
  }

  void _stopTimer(_StopTimer event, Emitter emitter) {
    timer!.cancel();
    add(const AssemblingEvent.setPlayerStatus(PlayerStatus.pause));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingRecord: playingRecord,
        secondsPassed: secondsPassed));
  }

  void _clearTimer(_ClearTimer event, Emitter emitter) {
    timer!.cancel();
    secondsPassed = 0;
    playerStatus = PlayerStatus.stop;
    add(const AssemblingEvent.setPlayerStatus(PlayerStatus.stop));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingRecord: playingRecord,
        secondsPassed: secondsPassed));
  }

  void _resendData(_ResendData event, Emitter emitter) {
    emitter(const AssemblingState.pending());
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedRecords,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingRecord: playingRecord,
        secondsPassed: secondsPassed));
  }

  void _saveSubject(_SaveSubject event, Emitter emitter) {
    var nanoId = nanoid(12);
    Subject subject = Subject(
        title: event.title,
        description: event.description,
        id: nanoId,
        records: subjectRecords,
        date: DateTime.now(),
        subjectCategories: selectedSubjectCategories,
        duration: _subjectDuration());
    subjectsRepository.addSubject(subject);
    selectedCategories = [];
    categories = [];
    records = [];
    subjectRecords = [];
    selectedRecords = [];

    playerStatus = null;
    playingRecord = null;

    timer?.cancel();

    add(const AssemblingEvent.fetchInitialData());
  }

  @override
  Future<void> close() {
    log('assembling bloc closed');
    timer?.cancel();
    return super.close();
  }

  int _subjectDuration() {
    int duration = 0;
    for (var subjectRecord in subjectRecords) {
      duration = duration + subjectRecord.duration;
    }
    return duration;
  }
}
