// import 'dart:io';

// import 'package:audioplayers/audioplayers.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../domain/models/fragment_category.dart';
// import 'bloc/edit_record_bloc.dart';
// import '../../../player/player_widget.dart';
// import '../../../widgets/add_image_widget.dart';
// import '../../../widgets/images_list.dart';

// import '../../../../domain/models/fragment.dart';
// import '../../widgets/add_category_form.dart';
// import '../../widgets/category_list.dart';

// @RoutePage()
// class EditFragmentScreen extends StatefulWidget {
//   const EditFragmentScreen({
//     Key? key,
//     required this.record,
//   }) : super(key: key);

//   final Fragment record;

//   @override
//   State<EditFragmentScreen> createState() => _EditFragmentScreenState();
// }

// class _EditFragmentScreenState extends State<EditFragmentScreen> {
//   @override
//   void dispose() {
//     super.dispose();
//   }

//   late Fragment _record;
//   late Map<String, int> imagesMap;

//   @override
//   void initState() {
//     super.initState();
//     _record = widget.record;
//     imagesMap = _record.images ?? {};
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => EditFragmentBloc(record: widget.record),
//       child: BlocConsumer<EditFragmentBloc, EditFragmentState>(
//           listener: (context, state) {
//             // TODO: implement listener
//           },
//           builder: (context, state) => state.map(
//               pending: (_) => const _PendingView(),
//               dataReceived: (state) => EditFragmentView(
//                   record: _record,
//                   categories: state.categoties,
//                   selectedCategories: state.selectedCategoties))),
//     );
//   }
// }

// class EditFragmentView extends StatefulWidget {
//   const EditFragmentView({
//     Key? key,
//     required this.record,
//     required this.categories,
//     required this.selectedCategories,
//   }) : super(key: key);

//   final Fragment record;
//   final List<FragmentCategory> categories;
//   final List<FragmentCategory> selectedCategories;

//   @override
//   State<EditFragmentView> createState() => _EditFragmentViewState();
// }

// class _EditFragmentViewState extends State<EditFragmentView> {
//   final ScrollController secondScrollController = ScrollController();
//   late FilePickerResult? file;
//   late Fragment _record;
//   late Map<String, int> imagesMap;
//   final AudioPlayer player = AudioPlayer();
//   late final TextEditingController titleController;
//   late final TextEditingController descriptionController;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _record = widget.record;
//     imagesMap = _record.images ?? {};
//     titleController = TextEditingController(text: _record.title);
//     descriptionController =
//         TextEditingController(text: _record.description ?? '');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: const Text(
//           'Редактирование записи',
//         )),
//         body: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               SizedBox(
//                 width: 300,
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       controller: titleController,
//                       decoration:
//                           const InputDecoration(hintText: 'Название записи'),
//                     ),
//                     TextFormField(
//                       //   initialValue: record.description ?? '',
//                       controller: descriptionController,
//                       maxLines: null,
//                       decoration:
//                           const InputDecoration(hintText: 'Описание записи'),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const Text('Категории'),
//                     const Divider(),
//                     CategoryList(
//                       categories: widget.categories,
//                       selectedCategories: widget.selectedCategories,
//                       selectCategory: (category) =>
//                           BlocProvider.of<EditFragmentBloc>(context)
//                               .add(EditFragmentEvent.selectCategory(category)),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Center(
//                       child: SizedBox(
//                         width: 200,
//                         child: ElevatedButton(
//                             onPressed: () async {
//                               String? categoryName = await showDialog<String>(
//                                   context: context,
//                                   builder: (context) =>
//                                       const Dialog(child: AddCategoryForm()));

//                               if (categoryName != null) {
//                                 // ignore: use_build_context_synchronously
//                                 BlocProvider.of<EditFragmentBloc>(context).add(
//                                     EditFragmentEvent.addCategory(
//                                         categoryName));
//                               }
//                             },
//                             child: const Text('Добавить категорию')),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const VerticalDivider(),
//               Expanded(
//                   child: ListView(shrinkWrap: true, children: [
//                 ImagesList(
//                   imagesMap: imagesMap,
//                   onDelete: (mapEntry) {
//                     setState(() {
//                       imagesMap.remove(mapEntry.key);
//                     });
//                   },
//                 ),
//                 AddImageWidget(
//                   onAdd: (imageMap) {
//                     setState(() {
//                       imagesMap[imageMap.key] = imageMap.value;
//                     });
//                   },
//                 ),
//                 _AudioImageView(
//                   record: _record,
//                   onFileSelect: ((selectedFile) {
//                     _onAudioSelect(selectedFile);
//                   }),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Center(
//                   child: SizedBox(
//                     width: 200,
//                     child: ElevatedButton(
//                         onPressed: () {
//                           BlocProvider.of<EditFragmentBloc>(context).add(
//                               EditFragmentEvent.saveFragment(
//                                   record: _record,
//                                   title: titleController.text,
//                                   description: descriptionController.text,
//                                   audioPath: _record.audioPath,
//                                   images: imagesMap,
//                                   recordDuration: _record.duration ?? 0));
//                           context.router.pop();
//                         },
//                         child: const Text('Сохранить')),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//               ]))
//             ]));
//   }

//   void _onAudioSelect(FilePickerResult selectedFile) async {
//     await player.setSourceDeviceFile(selectedFile.paths.first!);
//     player.onDurationChanged.listen((Duration d) {
//       var recordDurationInSeconds = d.inSeconds;
//       setState(() {
//         _record = _record.copyWith(
//             audioPath: selectedFile.paths.first,
//             duration: recordDurationInSeconds);
//       });
//     });

//     await player.play(DeviceFileSource(selectedFile.paths.first!), volume: 0);
//     await Future<void>.delayed(const Duration(milliseconds: 1000));

//     await player.stop();
//   }
// }

// class _AudioImageView extends StatefulWidget {
//   const _AudioImageView({
//     Key? key,
//     required this.record,
//     required this.onFileSelect,
//   }) : super(key: key);

//   final Fragment record;

//   final Function(FilePickerResult selectedFile) onFileSelect;

//   @override
//   State<_AudioImageView> createState() => _AudioImageViewState();
// }

// class _AudioImageViewState extends State<_AudioImageView> {
//   File? audio;

//   String? recordPath;

//   FilePickerResult? file;
//   ScrollController secondScrollController = ScrollController();
//   late Fragment _record;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     _record = widget.record;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ListView(
//           controller: secondScrollController,
//           shrinkWrap: true,
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//                 width: 320,
//                 child: Center(
//                     child: PlayerWidget(
//                   record: _record,
//                   remote: false,
//                 ))),
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                     onPressed: () async {
//                       file = await FilePicker.platform.pickFiles(
//                         type: FileType.custom,
//                         allowedExtensions: ['mp3', 'wav'],
//                       );
//                       if (file != null) {
//                         widget.onFileSelect(file!);
//                         setState(() {
//                           _record = _record.copyWith(
//                             audioPath: file!.paths.first,
//                           );
//                         });
//                         widget.onFileSelect(file!);
//                       }
//                     },
//                     child: const Text('Заменить аудио')),
//               ),
//             ),
//           ]),
//     );
//   }
// }

// class _PendingView extends StatelessWidget {
//   const _PendingView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: CircularProgressIndicator());
//   }
// }
