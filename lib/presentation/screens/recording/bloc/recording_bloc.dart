import 'dart:developer' as dev;
import 'dart:io';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_records_repository.dart';
import 'package:path/path.dart' as p;

import 'package:nanoid/nanoid.dart';

import '../../../../domain/constants.dart';
import '../../../../domain/models/record.dart';
import '../../../../domain/models/record_category.dart';

part 'recording_bloc.freezed.dart';
part 'recording_event.dart';
part 'recording_state.dart';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

class RecordingBloc extends Bloc<RecordingEvent, RecordingState> {
  RecordingBloc({
    required this.recordsRepository,
    required this.categoryRepository,
  }) : super(const _Pending()) {
    on<RecordingEvent>(
      (event, emitter) => event.map(
        fetchCategories: (event) => _fetchCategories(event, emitter),
        saveRecord: (event) => _saveRecord(event, emitter),
        addCategory: (event) => _addCategory(event, emitter),
        editCategory: (event) => _editCategory(event, emitter),
        deleteCategory: (event) => _deleteCategory(event, emitter),
        selectCategory: (event) => _selectCategory(event, emitter),
      ),
    );
    add(const RecordingEvent.fetchCategories());
    categoryRepository
        .addChangeListener(() => add(const RecordingEvent.fetchCategories()));
  }
  final IRecordsRepository recordsRepository;
  final ICategoryRepository categoryRepository;

  List<RecordCategory> selectedCategories = [];
  List<RecordCategory> categories = [];

  void _saveRecord(_SaveRecord event, Emitter emitter) {
    String imageRandomFilename;
    String audioRandomFilename;
    String directory;
    Map<String, int> savedImages = {};
    directory = Constants.fullImageFolder!;
    if (event.images != null) {
      event.images!.forEach((key, value) {
        File file = File(key);
        imageRandomFilename = p.extension(key);
        imageRandomFilename = '${getRandomString(8)}$imageRandomFilename';
        imageRandomFilename = '$directory$imageRandomFilename';
        file.copy(imageRandomFilename);
        savedImages[imageRandomFilename] = value;
      });
    } else {}

    File file = File(event.audioPath);
    directory = Constants.fullAudioFolder!;
    audioRandomFilename = p.extension(event.audioPath);
    audioRandomFilename = '${getRandomString(8)}$audioRandomFilename';

    audioRandomFilename = '$directory$audioRandomFilename';
    file.copy(audioRandomFilename);
    var nanoId = nanoid(12);
    Record record = Record(
        id: nanoId,
        title: event.title,
        description: event.description,
        duration: event.recordDuration,
        images: savedImages,
        audioPath: audioRandomFilename,
        categories: selectedCategories,
        isPublished: false,
        date: DateTime.now());
    recordsRepository.addRecord(record);
    selectedCategories = [];
    emitter(RecordingState.dataReceived(categories, selectedCategories));
  }

  Future<void> _fetchCategories(_FetchCategories event, Emitter emitter) async {
    categories = categoryRepository.categories;

    emitter(RecordingState.dataReceived(categories, selectedCategories));
  }

  void _addCategory(_AddCategory event, Emitter emitter) {
    var nanoId = nanoid(12);
    categoryRepository
        .addCategory(RecordCategory(id: nanoId, name: event.name));
    //add(const RecordingEvent.fetchCategories());
  }

  Future<void> _editCategory(_EditCategory event, Emitter emitter) async {}

  Future<void> _deleteCategory(_DeleteCategory event, Emitter emitter) async {}

  void _selectCategory(_SelectCategory event, Emitter emitter) {
    emitter(const RecordingState.pending());
    dev.log(event.category.name);
    if (selectedCategories.contains(event.category)) {
      selectedCategories.remove(event.category);
    } else {
      selectedCategories.add(event.category);
    }
    dev.log(selectedCategories.length.toString());
    emitter(RecordingState.dataReceived(categories, selectedCategories));
  }
}
