// import 'dart:io';
// import 'dart:math';
// import 'dart:developer' as dev;

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:path/path.dart' as p;

// import '../../../../../domain/constants.dart';
// import '../../../../../domain/interfaces/i_category_repository.dart';
// import '../../../../../domain/interfaces/i_fragments_repository.dart';
// import '../../../../../domain/locator/locator.dart';
// import '../../../../../domain/models/fragment.dart';
// import '../../../../../domain/models/fragment_category.dart';

// part 'edit_record_event.dart';
// part 'edit_record_state.dart';
// part 'edit_record_bloc.freezed.dart';

// const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
// Random _rnd = Random();

// String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
//     length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

// class EditFragmentBloc extends Bloc<EditFragmentEvent, EditFragmentState> {
//   EditFragmentBloc({
//     required this.record,
//   }) : super(const _Pending()) {
//     on<EditFragmentEvent>((event, emitter) => event.map(
//           fetchCategories: (event) => _fetchCategories(event, emitter),
//           saveFragment: (event) => _saveFragment(event, emitter),
//           addCategory: (event) => _addCategory(event, emitter),
//           editCategory: (event) => _editCategory(event, emitter),
//           deleteCategory: (event) => _deleteCategory(event, emitter),
//           selectCategory: (event) => _selectCategory(event, emitter),
//         ));
//     add(const EditFragmentEvent.fetchCategories());
//     if (!isClosed) {
//       categoryRepository.addChangeListener(
//           () => add(const EditFragmentEvent.fetchCategories()));
//     }
//   }

//   final Fragment record;
//   final IFragmentsRepository recordsRepository = getIt<IFragmentsRepository>();
//   final ICategoryRepository categoryRepository = getIt<ICategoryRepository>();

//   List<FragmentCategory> selectedCategories = [];
//   List<FragmentCategory> categories = [];

//   late String? title;
//   late String? description;
//   String? audioRandomFilename;

//   void _saveFragment(_SaveFragment event, Emitter emitter) {
//     String imageRandomFilename;

//     String directory;
//     Map<String, int> savedImages = {};
//     directory = Constants.fullImageFolder!;
//     if (event.images != null) {
//       event.images!.forEach((key, value) {
//         File file = File(key);
//         imageRandomFilename = p.extension(key);
//         imageRandomFilename = '${getRandomString(8)}$imageRandomFilename';
//         imageRandomFilename = '$directory$imageRandomFilename';
//         file.copy(imageRandomFilename);
//         savedImages[imageRandomFilename] = value;
//       });
//     } else {}
//     if (event.audioPath != null) {
//       File file = File(event.audioPath!);
//       directory = Constants.fullAudioFolder!;

//       audioRandomFilename = p.extension(event.audioPath!);
//       audioRandomFilename = '${getRandomString(8)}$audioRandomFilename';
//       audioRandomFilename = '$directory$audioRandomFilename';

//       file.copy(audioRandomFilename!);
//     }

//     Fragment updatedFragment = record.copyWith(
//       title: event.title,
//       description: event.description,
//       duration: event.recordDuration,
//       images: event.images,
//       audioPath: audioRandomFilename,
//       categories: selectedCategories,
//       isPublished: false,
//     );

//     recordsRepository.updateFragment(updatedFragment);
//     //selectedCategories = [];
//     add(const EditFragmentEvent.fetchCategories());
//   }

//   Future<void> _fetchCategories(_FetchCategories event, Emitter emitter) async {
//     categories = categoryRepository.categories;
//     selectedCategories = record.categories ?? [];

//     emitter(EditFragmentState.dataReceived(categories, selectedCategories));
//   }

//   void _addCategory(_AddCategory event, Emitter emitter) {
//     categoryRepository.addCategory(event.name);
//     //add(const RecordingEvent.fetchCategories());
//   }

//   Future<void> _editCategory(_EditCategory event, Emitter emitter) async {}

//   Future<void> _deleteCategory(_DeleteCategory event, Emitter emitter) async {}

//   void _selectCategory(_SelectCategory event, Emitter emitter) {
//     emitter(const EditFragmentState.pending());

//     if (selectedCategories.contains(event.category)) {
//       selectedCategories.remove(event.category);
//     } else {
//       selectedCategories.add(event.category);
//     }
//     // for (var cat in categories) {
//     //   if (cat == event.category) {
//     //     for (var sc in selectedCategories) {
//     //       if (sc == cat) {
//     //         removeCategory = sc;
//     //       }
//     //     }
//     //   }
//     // }
//     // if (removeCategory == null) {
//     //   selectedCategories.add(event.category);
//     // } else {
//     //   selectedCategories.remove(removeCategory);
//     // }

//     emitter(EditFragmentState.dataReceived(categories, selectedCategories));
//   }

//   @override
//   Future<void> close() {
//     dev.log('Edit bloc closed');
//     return super.close();
//   }
// }
