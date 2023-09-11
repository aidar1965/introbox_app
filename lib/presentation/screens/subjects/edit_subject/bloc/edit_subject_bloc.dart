import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_records_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:nanoid/nanoid.dart';

import '../../../../../domain/interfaces/i_category_repository.dart';
import '../../../../../domain/models/record.dart';
import '../../../../../domain/models/record_category.dart';
import '../../../../../domain/models/subject.dart';
import '../../../../../domain/models/subject_category.dart';
import '../../../../../presentation/player/player_widget.dart';

part 'edit_subject_event.dart';
part 'edit_subject_state.dart';
part 'edit_subject_bloc.freezed.dart';

class EditSubjectBloc extends Bloc<EditSubjectEvent, EditSubjectState> {
  EditSubjectBloc(
      {required this.subject,
      required this.subjectsRepository,
      required this.subjectCategoryRepository,
      required this.categoryRepository,
      required this.recordsRepository})
      : super(const _Pending()) {
    on<EditSubjectEvent>((event, emitter) => event.map(
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
    add(const EditSubjectEvent.fetchInitialData());
    categoryRepository.addChangeListener(() {
      if (!isClosed) {
        add(const EditSubjectEvent.fetchInitialData());
      }
    });
    subjectCategoryRepository.addChangeListener(
        () => subjectCategories = subjectCategoryRepository.subjectCategories);
    recordsRepository
        .addChangeListener(() => records = recordsRepository.records);
  }

  final Subject subject;
  final ISubjectsRepository subjectsRepository;
  final ISubjectCategoryRepository subjectCategoryRepository;
  final ICategoryRepository categoryRepository;
  final IRecordsRepository recordsRepository;

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

  Future<void> _fetchInitialData(
      _FetchInitialData event, Emitter emitter) async {
    categories = categoryRepository.categories;
    subjectRecords = subject.records;
    subjectCategories = subjectCategoryRepository.subjectCategories;
    for (var cat in categories) {
      selectedCategories.add(cat);
    }
    records = recordsRepository.records;
    for (var record in records) {
      selectedRecords.add(record);
    }

    if (subject.subjectCategories != null) {
      for (var sk in subjectCategories) {
        for (var ssk in subject.subjectCategories!) {
          if (sk.id == ssk.id) {
            selectedSubjectCategories.add(sk);
          }
        }
      }
    }

    records.sort((a, b) => b.date.compareTo(a.date));
    emitter(EditSubjectState.dataReceived(
        categories: categories,
        records: records,
        selectedCategories: selectedCategories,
        subjectRecords: subjectRecords,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories));
  }

  void _addSubjectCategory(_AddSubjectCategory event, Emitter emitter) async {
    var nanoId = nanoid(12);
    subjectCategoryRepository.addSubjectCategory(
        subjectCategory: SubjectCategory(id: nanoId, name: event.name));
    emitter(EditSubjectState.dataReceived(
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
    emitter((const EditSubjectState.pending()));
    if (selectedSubjectCategories.contains(event.subjectCategory)) {
      selectedSubjectCategories.remove(event.subjectCategory);
    } else {
      selectedSubjectCategories.add(event.subjectCategory);
    }
    emitter(EditSubjectState.dataReceived(
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
    bool contains = false;
    secondsPassed = 0;
    for (var sk in subjectRecords) {
      if (sk.id == event.record.id) {
        contains = true;
        break;
      }
    }
    if (contains) {
      subjectRecords.removeWhere((element) => element.id == event.record.id);
    } else {
      subjectRecords.add(event.record);
    }

    if (subjectRecords.isNotEmpty) {
      playingRecord = subjectRecords.first;
    } else {
      playingRecord = null;
    }

    emitter((const EditSubjectState.pending()));
    selectedRecords.sort((a, b) => b.date.compareTo(a.date));
    emitter(EditSubjectState.dataReceived(
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
    emitter((const EditSubjectState.pending()));
    emitter(EditSubjectState.dataReceived(
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
    emitter(EditSubjectState.dataReceived(
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
    add(const EditSubjectEvent.setPlayerStatus(PlayerStatus.stop));
    playingRecord = event.record;
    playerStatus = PlayerStatus.play;
    emitter((const EditSubjectState.pending()));
    add(EditSubjectEvent.setPlayerStatus(playerStatus!));
  }

  Future<void> _startTimer(_StartTimer event, Emitter emitter) async {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const EditSubjectEvent.resendData());
      secondsPassed++;
      // log(secondsPassed.toString());
      if (secondsPassed > playingRecord!.duration) {
        add(const EditSubjectEvent.clearTimer());
        for (int index = 0; index < subjectRecords.length; index++) {
          if (playingRecord!.id == subjectRecords[index].id) {
            if (index + 1 < subjectRecords.length) {
              playingRecord = subjectRecords[index + 1];
              secondsPassed = 0;
              add(EditSubjectEvent.playRecord(playingRecord!));
              add(const EditSubjectEvent.startTimer());
              break;
            }
          }
        }
      }
    });
  }

  void _stopTimer(_StopTimer event, Emitter emitter) {
    timer!.cancel();
    add(const EditSubjectEvent.setPlayerStatus(PlayerStatus.pause));
    emitter(EditSubjectState.dataReceived(
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
    add(const EditSubjectEvent.setPlayerStatus(PlayerStatus.stop));
    emitter(EditSubjectState.dataReceived(
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
    emitter(EditSubjectState.dataReceived(
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
    Subject newSubject = subject.copyWith(
        title: event.title,
        description: event.description,
        records: subjectRecords,
        date: DateTime.now(),
        subjectCategories: selectedSubjectCategories);
    subjectsRepository.updateSubject(newSubject);
    selectedCategories = [];
    categories = [];
    records = [];
    subjectRecords = [];
    selectedRecords = [];

    playerStatus = null;
    playingRecord = null;

    timer?.cancel();

    add(const EditSubjectEvent.fetchInitialData());
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

    emitter(const EditSubjectState.pending());
    if (selectedCategories.isNotEmpty) {
      emitter(EditSubjectState.dataReceived(
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
      emitter(EditSubjectState.dataReceived(
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

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }
}
