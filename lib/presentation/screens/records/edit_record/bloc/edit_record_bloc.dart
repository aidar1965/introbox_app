import 'dart:io';
import 'dart:math';
import 'dart:developer' as dev;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:nanoid/nanoid.dart';

import '../../../../../domain/constants.dart';
import '../../../../../domain/interfaces/i_category_repository.dart';
import '../../../../../domain/interfaces/i_records_repository.dart';
import '../../../../../domain/models/record.dart';
import '../../../../../domain/models/record_category.dart';

part 'edit_record_event.dart';
part 'edit_record_state.dart';
part 'edit_record_bloc.freezed.dart';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

class EditRecordBloc extends Bloc<EditRecordEvent, EditRecordState> {
  EditRecordBloc(
      {required this.record,
      required this.recordsRepository,
      required this.categoryRepository})
      : super(const _Pending()) {
    on<EditRecordEvent>((event, emitter) => event.map(
          fetchCategories: (event) => _fetchCategories(event, emitter),
          saveRecord: (event) => _saveRecord(event, emitter),
          addCategory: (event) => _addCategory(event, emitter),
          editCategory: (event) => _editCategory(event, emitter),
          deleteCategory: (event) => _deleteCategory(event, emitter),
          selectCategory: (event) => _selectCategory(event, emitter),
        ));
    add(const EditRecordEvent.fetchCategories());
    if (!isClosed) {
      categoryRepository.addChangeListener(
          () => add(const EditRecordEvent.fetchCategories()));
    }
  }

  final Record record;
  final IRecordsRepository recordsRepository;
  final ICategoryRepository categoryRepository;

  List<RecordCategory> selectedCategories = [];
  List<RecordCategory> categories = [];

  late String? title;
  late String? description;

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

    Record updatedRecord = record.copyWith(
      title: event.title,
      description: event.description,
      duration: event.recordDuration,
      images: event.images,
      audioPath: audioRandomFilename,
      categories: selectedCategories,
      isPublished: false,
    );

    recordsRepository.updateRecord(updatedRecord);
    //selectedCategories = [];
    add(const EditRecordEvent.fetchCategories());
  }

  Future<void> _fetchCategories(_FetchCategories event, Emitter emitter) async {
    categories = categoryRepository.categories;
    selectedCategories = record.categories ?? [];

    emitter(EditRecordState.dataReceived(categories, selectedCategories));
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
    emitter(const EditRecordState.pending());

    if (selectedCategories.contains(event.category)) {
      selectedCategories.remove(event.category);
    } else {
      selectedCategories.add(event.category);
    }
    // for (var cat in categories) {
    //   if (cat == event.category) {
    //     for (var sc in selectedCategories) {
    //       if (sc == cat) {
    //         removeCategory = sc;
    //       }
    //     }
    //   }
    // }
    // if (removeCategory == null) {
    //   selectedCategories.add(event.category);
    // } else {
    //   selectedCategories.remove(removeCategory);
    // }

    emitter(EditRecordState.dataReceived(categories, selectedCategories));
  }

  @override
  Future<void> close() {
    dev.log('Edit bloc closed');
    return super.close();
  }
}