// import 'dart:async';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../../../../domain/interfaces/i_fragments_repository.dart';
// import '../../../../../domain/interfaces/i_subject_category_repository.dart';
// import '../../../../../domain/interfaces/i_subject_repository.dart';

// import '../../../../../domain/interfaces/i_category_repository.dart';
// import '../../../../../domain/locator/locator.dart';
// import '../../../../../domain/models/fragment.dart';
// import '../../../../../domain/models/fragment_category.dart';
// import '../../../../../domain/models/subject.dart';
// import '../../../../../domain/models/subject_category.dart';
// import '../../../../../presentation/player/player_widget.dart';

// part 'edit_subject_event.dart';
// part 'edit_subject_state.dart';
// part 'edit_subject_bloc.freezed.dart';

// class EditSubjectBloc extends Bloc<EditSubjectEvent, EditSubjectState> {
//   EditSubjectBloc({
//     required this.subject,
//   }) : super(const _Pending()) {
//     on<EditSubjectEvent>((event, emitter) => event.map(
//           addFragment: (event) => _addFragment(event, emitter),
//           fetchInitialData: (event) => _fetchInitialData(event, emitter),
//           selectCategory: (event) => _selectCategory(event, emitter),
//           onReorder: (event) => _onReordering(event, emitter),
//           setPlayerStatus: (event) => _setPlayerStatus(event, emitter),
//           playFragment: (event) => _playFragment(event, emitter),
//           startTimer: (event) => _startTimer(event, emitter),
//           stopTimer: (event) => _stopTimer(event, emitter),
//           clearTimer: (event) => _clearTimer(event, emitter),
//           resendData: (event) => _resendData(event, emitter),
//           saveSubject: (event) => _saveSubject(event, emitter),
//           addSubjectCategory: (event) => _addSubjectCategory(event, emitter),
//           selectSubjectCategory: (event) =>
//               _selectSubjectCategory(event, emitter),
//         ));
//     add(const EditSubjectEvent.fetchInitialData());
//     categoryRepository.addChangeListener(() {
//       if (!isClosed) {
//         add(const EditSubjectEvent.fetchInitialData());
//       }
//     });
//     subjectCategoryRepository.addChangeListener(
//         () => subjectCategories = subjectCategoryRepository.subjectCategories);
//     recordsRepository
//         .addChangeListener(() => records = recordsRepository.records);
//   }

//   final Subject subject;
//   final ISubjectsRepository subjectsRepository = getIt<ISubjectsRepository>();
//   final ISubjectCategoryRepository subjectCategoryRepository =
//       getIt<ISubjectCategoryRepository>();
//   final ICategoryRepository categoryRepository = getIt<ICategoryRepository>();
//   final IFragmentsRepository recordsRepository = getIt<IFragmentsRepository>();

//   List<FragmentCategory> selectedCategories = [];
//   List<FragmentCategory> categories = [];
//   List<SubjectCategory> selectedSubjectCategories = [];
//   List<SubjectCategory> subjectCategories = [];

//   List<Fragment> records = [];
//   List<Fragment> subjectFragments = [];
//   List<Fragment> selectedFragments = [];

//   PlayerStatus? playerStatus;
//   Fragment? playingFragment;

//   Timer? timer;
//   int secondsPassed = 0;

//   Future<void> _fetchInitialData(
//       _FetchInitialData event, Emitter emitter) async {
//     categories = categoryRepository.categories;
//     subjectFragments = subject.records ?? [];
//     subjectCategories = subjectCategoryRepository.subjectCategories;
//     for (var cat in categories) {
//       selectedCategories.add(cat);
//     }
//     records = recordsRepository.records;
//     for (var record in records) {
//       selectedFragments.add(record);
//     }

//     if (subject.subjectCategories != null) {
//       for (var sk in subjectCategories) {
//         for (var ssk in subject.subjectCategories!) {
//           if (sk.id == ssk.id) {
//             selectedSubjectCategories.add(sk);
//           }
//         }
//       }
//     }

//     records.sort((a, b) => b.date.compareTo(a.date));
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: records,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories));
//   }

//   void _addSubjectCategory(_AddSubjectCategory event, Emitter emitter) async {
//     subjectCategoryRepository.addSubjectCategory(name: event.name);
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playerStatus: playerStatus,
//         playingFragment: playingFragment));
//   }

//   void _selectSubjectCategory(_SelectSubjectCategory event, Emitter emitter) {
//     emitter((const EditSubjectState.pending()));
//     if (selectedSubjectCategories.contains(event.subjectCategory)) {
//       selectedSubjectCategories.remove(event.subjectCategory);
//     } else {
//       selectedSubjectCategories.add(event.subjectCategory);
//     }
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playerStatus: playerStatus,
//         playingFragment: playingFragment));
//   }

//   void _addFragment(_AddFragment event, Emitter emitter) {
//     bool contains = false;
//     secondsPassed = 0;
//     for (var sk in subjectFragments) {
//       if (sk.id == event.record.id) {
//         contains = true;
//         break;
//       }
//     }
//     if (contains) {
//       subjectFragments.removeWhere((element) => element.id == event.record.id);
//     } else {
//       subjectFragments.add(event.record);
//     }

//     if (subjectFragments.isNotEmpty) {
//       playingFragment = subjectFragments.first;
//     } else {
//       playingFragment = null;
//     }

//     emitter((const EditSubjectState.pending()));
//     selectedFragments.sort((a, b) => b.date.compareTo(a.date));
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playingFragment: playingFragment,
//         playerStatus: PlayerStatus.stop));
//   }

//   void _onReordering(_OnReorder event, Emitter emitter) {
//     if (playerStatus != PlayerStatus.stop && playerStatus != null) return;
//     int oldIndex = event.oldIndex;
//     int newIndex = event.newIndex;
//     if (newIndex > oldIndex) {
//       newIndex = newIndex - 1;
//     }
//     final element = subjectFragments.removeAt(oldIndex);
//     subjectFragments.insert(newIndex, element);
//     playingFragment = subjectFragments.first;
//     emitter((const EditSubjectState.pending()));
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playingFragment: playingFragment,
//         playerStatus: PlayerStatus.stop));
//   }

//   void _setPlayerStatus(_SetPlayerStatus event, Emitter emitter) {
//     playerStatus = event.playerStatus;
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playingFragment: playingFragment,
//         playerStatus: playerStatus));
//   }

//   void _playFragment(_PlayFragment event, Emitter emitter) {
//     add(const EditSubjectEvent.setPlayerStatus(PlayerStatus.stop));
//     playingFragment = event.record;
//     playerStatus = PlayerStatus.play;
//     emitter((const EditSubjectState.pending()));
//     add(EditSubjectEvent.setPlayerStatus(playerStatus!));
//   }

//   Future<void> _startTimer(_StartTimer event, Emitter emitter) async {
//     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       add(const EditSubjectEvent.resendData());
//       secondsPassed++;
//       // log(secondsPassed.toString());
//       if (secondsPassed > (playingFragment!.duration ?? 0)) {
//         add(const EditSubjectEvent.clearTimer());
//         for (int index = 0; index < subjectFragments.length; index++) {
//           if (playingFragment!.id == subjectFragments[index].id) {
//             if (index + 1 < subjectFragments.length) {
//               playingFragment = subjectFragments[index + 1];
//               secondsPassed = 0;
//               add(EditSubjectEvent.playFragment(playingFragment!));
//               add(const EditSubjectEvent.startTimer());
//               break;
//             }
//           }
//         }
//       }
//     });
//   }

//   void _stopTimer(_StopTimer event, Emitter emitter) {
//     timer!.cancel();
//     add(const EditSubjectEvent.setPlayerStatus(PlayerStatus.pause));
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playerStatus: playerStatus,
//         playingFragment: playingFragment,
//         secondsPassed: secondsPassed));
//   }

//   void _clearTimer(_ClearTimer event, Emitter emitter) {
//     timer!.cancel();
//     secondsPassed = 0;
//     playerStatus = PlayerStatus.stop;
//     add(const EditSubjectEvent.setPlayerStatus(PlayerStatus.stop));
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playerStatus: playerStatus,
//         playingFragment: playingFragment,
//         secondsPassed: secondsPassed));
//   }

//   void _resendData(_ResendData event, Emitter emitter) {
//     emitter(EditSubjectState.dataReceived(
//         categories: categories,
//         records: selectedFragments,
//         selectedCategories: selectedCategories,
//         subjectFragments: subjectFragments,
//         subjectCategories: subjectCategories,
//         selectedSubjectCategories: selectedSubjectCategories,
//         playerStatus: playerStatus,
//         playingFragment: playingFragment,
//         secondsPassed: secondsPassed));
//   }

//   void _saveSubject(_SaveSubject event, Emitter emitter) {
//     Subject newSubject = subject.copyWith(
//         title: event.title,
//         description: event.description,
//         records: subjectFragments,
//         date: DateTime.now(),
//         subjectCategories: selectedSubjectCategories);
//     subjectsRepository.updateSubject(newSubject);
//     selectedCategories = [];
//     categories = [];
//     records = [];
//     subjectFragments = [];
//     selectedFragments = [];

//     playerStatus = null;
//     playingFragment = null;

//     timer?.cancel();

//     add(const EditSubjectEvent.fetchInitialData());
//   }

//   void _selectCategory(_SelectCategory event, Emitter emitter) async {
//     if (selectedCategories.contains(event.category)) {
//       selectedCategories.remove(event.category);
//     } else {
//       selectedCategories.add(event.category);
//     }
//     selectedFragments = [];
//     for (var record in records) {
//       List<FragmentCategory>? categoriesOfFragment = record.categories;
//       if (categoriesOfFragment != null) {
//         for (var element in categoriesOfFragment) {
//           for (var sk in selectedCategories) {
//             if (sk.id == element.id) {
//               if (!selectedFragments.contains(record)) {
//                 selectedFragments.add(record);
//               }
//             }
//           }
//         }
//       }
//     }
//     selectedFragments.sort((a, b) => b.date.compareTo(a.date));

//     emitter(const EditSubjectState.pending());
//     if (selectedCategories.isNotEmpty) {
//       emitter(EditSubjectState.dataReceived(
//           categories: categories,
//           records: selectedFragments,
//           selectedCategories: selectedCategories,
//           subjectFragments: subjectFragments,
//           subjectCategories: subjectCategories,
//           selectedSubjectCategories: selectedSubjectCategories,
//           playerStatus: playerStatus,
//           playingFragment: playingFragment));
//     } else {
//       selectedFragments = [];
//       for (var element in records) {
//         if (element.categories!.isEmpty) selectedFragments.add(element);
//       }
//       selectedFragments.sort((a, b) => b.date.compareTo(a.date));
//       emitter(EditSubjectState.dataReceived(
//           categories: categories,
//           records: selectedFragments,
//           selectedCategories: selectedCategories,
//           subjectFragments: subjectFragments,
//           subjectCategories: subjectCategories,
//           selectedSubjectCategories: selectedSubjectCategories,
//           playerStatus: playerStatus,
//           playingFragment: playingFragment));
//     }
//   }

//   @override
//   Future<void> close() {
//     timer?.cancel();
//     return super.close();
//   }
// }
