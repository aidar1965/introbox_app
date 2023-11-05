import 'dart:async';
import 'dart:developer';
import 'dart:io' as io;
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:nanoid/nanoid.dart';

import 'package:printing/printing.dart';

import '../../../../domain/interfaces/i_category_repository.dart';
import '../../../../domain/interfaces/i_fragments_repository.dart';
import '../../../../domain/interfaces/i_subject_repository.dart';
import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/fragment.dart';
import '../../../../domain/models/fragment_category.dart';

import '../../../../domain/models/subject_category.dart';
import '../../../player/player_widget.dart';

part 'assembling_bloc.freezed.dart';
part 'assembling_event.dart';
part 'assembling_state.dart';

class AssemblingBloc extends Bloc<AssemblingEvent, AssemblingState> {
  AssemblingBloc() : super(const _Pending()) {
    on<AssemblingEvent>((event, emitter) => event.map(
          addFragment: (event) => _addFragment(event, emitter),
          fetchInitialData: (event) => _fetchInitialData(event, emitter),
          selectCategory: (event) => _selectCategory(event, emitter),
          onReorder: (event) => _onReordering(event, emitter),
          setPlayerStatus: (event) => _setPlayerStatus(event, emitter),
          playFragment: (event) => _playFragment(event, emitter),
          startTimer: (event) => _startTimer(event, emitter),
          stopTimer: (event) => _stopTimer(event, emitter),
          clearTimer: (event) => _clearTimer(event, emitter),
          resendData: (event) => _resendData(event, emitter),
          saveSubject: (event) => _saveSubject(event, emitter),
          addSubjectCategory: (event) => _addSubjectCategory(event, emitter),
          selectSubjectCategory: (event) =>
              _selectSubjectCategory(event, emitter),
          convertPdf: (event) => _convertPdf(event, emitter),
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

  final IFragmentsRepository fragmentsRepository =
      getIt<IFragmentsRepository>();
  final ICategoryRepository categoryRepository = getIt<ICategoryRepository>();
  final ISubjectsRepository subjectsRepository = getIt<ISubjectsRepository>();
  final ISubjectCategoryRepository subjectCategoryRepository =
      getIt<ISubjectCategoryRepository>();

  List<FragmentCategory> selectedCategories = [];
  List<FragmentCategory> categories = [];
  List<SubjectCategory> selectedSubjectCategories = [];
  List<SubjectCategory> subjectCategories = [];

  List<Fragment> records = [];
  List<Fragment> subjectFragments = [];
  List<Fragment> selectedFragments = [];

  PlayerStatus? playerStatus;
  Fragment? playingFragment;

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
    records = fragmentsRepository.records;
    for (var record in records) {
      if (!selectedFragments.contains(record)) {
        selectedFragments.add(record);
      }
    }
    selectedFragments.sort((a, b) => b.date.compareTo(a.date));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories));
  }

  void _selectCategory(_SelectCategory event, Emitter emitter) async {
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
            if (sk.id == element.id) {
              if (!selectedFragments.contains(record)) {
                selectedFragments.add(record);
              }
            }
          }
        }
      }
    }
    selectedFragments.sort((a, b) => b.date.compareTo(a.date));

    emitter((const AssemblingState.pending()));
    if (selectedCategories.isNotEmpty) {
      emitter(AssemblingState.dataReceived(
          categories: categories,
          records: selectedFragments,
          selectedCategories: selectedCategories,
          subjectFragments: subjectFragments,
          subjectCategories: subjectCategories,
          selectedSubjectCategories: selectedSubjectCategories,
          playerStatus: playerStatus,
          playingFragment: playingFragment));
    } else {
      selectedFragments = [];
      for (var element in records) {
        if (element.categories!.isEmpty) selectedFragments.add(element);
      }
      selectedFragments.sort((a, b) => b.date.compareTo(a.date));
      emitter(AssemblingState.dataReceived(
          categories: categories,
          records: selectedFragments,
          selectedCategories: selectedCategories,
          subjectFragments: subjectFragments,
          subjectCategories: subjectCategories,
          selectedSubjectCategories: selectedSubjectCategories,
          playerStatus: playerStatus,
          playingFragment: playingFragment));
    }
  }

  void _addSubjectCategory(_AddSubjectCategory event, Emitter emitter) {
    subjectCategoryRepository.addSubjectCategory(name: event.name);
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingFragment: playingFragment));
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
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingFragment: playingFragment));
  }

  void _addFragment(_AddFragment event, Emitter emitter) {
    secondsPassed = 0;
    if (subjectFragments.contains(event.record)) {
      subjectFragments.remove(event.record);
    } else {
      subjectFragments.add(event.record);
    }
    if (subjectFragments.isNotEmpty) {
      playingFragment = subjectFragments.first;
    } else {
      playingFragment = null;
    }

    emitter((const AssemblingState.pending()));
    selectedFragments.sort((a, b) => b.date.compareTo(a.date));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playingFragment: playingFragment,
        playerStatus: PlayerStatus.stop));
  }

  void _onReordering(_OnReorder event, Emitter emitter) {
    if (playerStatus != PlayerStatus.stop && playerStatus != null) return;
    int oldIndex = event.oldIndex;
    int newIndex = event.newIndex;
    if (newIndex > oldIndex) {
      newIndex = newIndex - 1;
    }
    final element = subjectFragments.removeAt(oldIndex);
    subjectFragments.insert(newIndex, element);
    playingFragment = subjectFragments.first;
    emitter((const AssemblingState.pending()));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playingFragment: playingFragment,
        playerStatus: PlayerStatus.stop));
  }

  void _setPlayerStatus(_SetPlayerStatus event, Emitter emitter) {
    playerStatus = event.playerStatus;
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playingFragment: playingFragment,
        playerStatus: playerStatus));
  }

  void _playFragment(_PlayFragment event, Emitter emitter) {
    add(const AssemblingEvent.setPlayerStatus(PlayerStatus.stop));
    playingFragment = event.record;
    playerStatus = PlayerStatus.play;
    emitter((const AssemblingState.pending()));
    add(AssemblingEvent.setPlayerStatus(playerStatus!));
  }

  Future<void> _startTimer(_StartTimer event, Emitter emitter) async {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const AssemblingEvent.resendData());
      secondsPassed++;
      // log(secondsPassed.toString());
      if (secondsPassed > (playingFragment!.duration ?? 0)) {
        add(const AssemblingEvent.clearTimer());
        for (int index = 0; index < subjectFragments.length; index++) {
          if (playingFragment!.id == subjectFragments[index].id) {
            if (index + 1 < subjectFragments.length) {
              playingFragment = subjectFragments[index + 1];
              secondsPassed = 0;
              add(AssemblingEvent.playFragment(playingFragment!));
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
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingFragment: playingFragment,
        secondsPassed: secondsPassed));
  }

  void _clearTimer(_ClearTimer event, Emitter emitter) {
    timer!.cancel();
    secondsPassed = 0;
    playerStatus = PlayerStatus.stop;
    add(const AssemblingEvent.setPlayerStatus(PlayerStatus.stop));
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingFragment: playingFragment,
        secondsPassed: secondsPassed));
  }

  void _resendData(_ResendData event, Emitter emitter) {
    emitter(const AssemblingState.pending());
    emitter(AssemblingState.dataReceived(
        categories: categories,
        records: selectedFragments,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        playerStatus: playerStatus,
        playingFragment: playingFragment,
        secondsPassed: secondsPassed));
  }

  void _saveSubject(_SaveSubject event, Emitter emitter) {
    subjectsRepository.addSubject(
      title: event.title,
      description: event.description,
      records: subjectFragments,
      subjectCategories: subjectCategories,
      duration: _subjectDuration(),
      date: DateTime.now(),
    );
    categories = [];
    records = [];
    subjectFragments = [];
    selectedFragments = [];

    playerStatus = null;
    playingFragment = null;

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
    for (var subjectFragment in subjectFragments) {
      duration = duration + (subjectFragment.duration ?? 0);
    }
    return duration;
  }

  Future<void> _convertPdf(_ConvertFile event, Emitter emitter) async {
    final List<Uint8List> pdfImageList = [];

    final file = io.File(event.pdfFilePath);

    await for (var page in Printing.raster(file.readAsBytesSync())) {
      final image = await page.toPng();
      pdfImageList.add(image);
    }
    emitter(AssemblingState.dataReceived(
        categories: categories,
        selectedCategories: selectedCategories,
        subjectFragments: subjectFragments,
        subjectCategories: subjectCategories,
        selectedSubjectCategories: selectedSubjectCategories,
        pdfImages: pdfImageList));
  }
}
