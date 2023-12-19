// import 'dart:io';

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:moki_tutor/presentation/common/common_functions.dart';

// import '../../../domain/models/fragment.dart';
// import '../../../domain/models/subject.dart';
// import '../../../domain/models/subject_category.dart';

// import '../../auto_router/app_router.dart';
// import 'bloc/subjects_bloc.dart';
// import '../home_screen/bloc/home_bloc.dart';

// import '../widgets/add_subject_category_form.dart';

// @RoutePage()
// class SubjectsScreen extends StatelessWidget {
//   const SubjectsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => SubjectsBloc(),
//       child: BlocConsumer<SubjectsBloc, SubjectsState>(
//           listener: (context, state) => state.mapOrNull(
//               addSubject: (_) => context.router.push(AssemblingRoute())),
//           buildWhen: (context, state) => state.map(
//               pending: (_) => true,
//               dataReceived: (_) => true,
//               addSubject: (_) => false),
//           builder: (context, state) => state.maybeMap(
//               orElse: () => throw UnimplementedError(),
//               pending: (_) => const PendingView(),
//               dataReceived: (state) => SubjectsView(
//                     subjects: state.subjects,
//                     categories: state.categories,
//                     selectedCategories: state.selectedCategories,
//                     selectedSubject: state.selectedSubject,
//                   ))),
//     );
//   }
// }

// class SubjectsView extends StatelessWidget {
//   const SubjectsView(
//       {Key? key,
//       required this.subjects,
//       required this.categories,
//       required this.selectedCategories,
//       this.selectedSubject})
//       : super(key: key);

//   final List<Subject> subjects;
//   final List<SubjectCategory> categories;
//   final List<SubjectCategory> selectedCategories;
//   final Subject? selectedSubject;
//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//       Row(children: [
//         SizedBox(
//           width: 300,
//           child: Column(children: [
//             const Text('Категории тем'),
//             const Divider(),
//             Expanded(
//                 child: ListView.builder(
//                     itemCount: categories.length,
//                     itemBuilder: (context, index) => Tooltip(
//                           preferBelow: false,
//                           message: 'Нажмите и удерживайте для редактирования',
//                           child: GestureDetector(
//                             onLongPress: () async {
//                               var bloc = BlocProvider.of<SubjectsBloc>(context);
//                               Map<String, dynamic>? response =
//                                   await showDialog<Map<String, dynamic>>(
//                                       context: context,
//                                       builder: (context) => Dialog(
//                                               child: AddSubjectCategoryForm(
//                                             category:
//                                                 categories.elementAt(index),
//                                           )));
//                               if (response != null) {
//                                 if (response['action'] == 'edit') {
//                                   var categoryName =
//                                       response['name'] as String?;
//                                   if (categoryName != null &&
//                                       categoryName !=
//                                           categories.elementAt(index).name) {
//                                     var updatedCategory = categories
//                                         .elementAt(index)
//                                         .copyWith(name: categoryName);
//                                     bloc.add(SubjectsEvent.editCategory(
//                                         updatedCategory));
//                                   }
//                                 } else {
//                                   if (response['action'] == 'delete') {
//                                     bloc.add(SubjectsEvent.deleteCategory(
//                                         categories.elementAt(index)));
//                                   }
//                                 }
//                               }
//                             },
//                             child: MouseRegion(
//                               cursor: SystemMouseCursors.click,
//                               child: SubjectCategoryItem(
//                                 category: categories.elementAt(index),
//                                 isChecked: selectedCategories
//                                     .contains(categories.elementAt(index)),
//                               ),
//                             ),
//                           ),
//                         )))
//           ]),
//         ),
//         const VerticalDivider(),
//         SizedBox(
//           width: 400,
//           child: Column(
//             children: [
//               const Text('Темы'),
//               const Divider(),
//               Expanded(
//                 child: ListView.builder(
//                     itemCount: subjects.length,
//                     itemBuilder: (context, index) => SubjectView(
//                           subject: subjects.elementAt(index),
//                           isChecked:
//                               subjects.elementAt(index) == selectedSubject,
//                         )),
//               ),
//             ],
//           ),
//         ),
//         const VerticalDivider(),
//         selectedSubject != null && selectedSubject?.records != null
//             ? SizedBox(
//                 width: 300,
//                 child: Column(
//                   children: [
//                     const Text('Записи'),
//                     const Divider(),
//                     Expanded(
//                       child: ListView.builder(
//                           itemCount: selectedSubject!.records?.length,
//                           itemBuilder: (context, index) => FragmentView(
//                               record:
//                                   selectedSubject!.records!.elementAt(index))),
//                     ),
//                   ],
//                 ),
//               )
//             : const SizedBox(),
//       ]),
//       Positioned(
//         right: 10,
//         bottom: 10,
//         child: FloatingActionButton(
//           onPressed: () async {
//             await CommonFunctions.showStyledDialog(
//                 context: context,
//                 message: 'Выберите способ создания темы',
//                 positiveButtonText: 'Из PDF файла',
//                 negativeButtonText: 'Из изображений',
//                 onPositiveTap: () => BlocProvider.of<SubjectsBloc>(context)
//                     .add(const SubjectsEvent.newSubject()),
//                 onNegativeTap: () {});
//           },
//           tooltip: 'Новая тема',
//           child: const Icon(Icons.add),
//         ),
//       )
//     ]);
//   }
// }

// class SubjectView extends StatelessWidget {
//   const SubjectView({Key? key, required this.subject, required this.isChecked})
//       : super(key: key);

//   final Subject subject;
//   final bool isChecked;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: () => BlocProvider.of<SubjectsBloc>(context)
//           .add(SubjectsEvent.selectSubject(subject)),
//       mouseCursor: SystemMouseCursors.click,
//       tileColor: isChecked ? Colors.grey.shade200 : null,
//       dense: true,
//       leading: subject.records?.first.images != null
//           ? SizedBox(
//               height: 80,
//               width: 80,
//               child: Image.file(
//                   File(subject.records!.first.images!.entries.first.key)))
//           : SizedBox(),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             subject.title,
//           ),
//           Align(
//               alignment: Alignment.bottomRight,
//               child: Text(DateFormat('dd.MM.yy').format(subject.date))),
//         ],
//       ),
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           IconButton(
//             iconSize: 24,
//             onPressed: () => BlocProvider.of<HomeBloc>(context)
//                 .add(HomeEvent.openSubjectPlayer(subject: subject)),
//             icon: const Icon(Icons.play_circle),
//           ),
//           IconButton(
//             iconSize: 24,
//             onPressed: () =>
//                 context.router.push(EditSubjectRoute(subject: subject)),
//             icon: const Icon(Icons.edit),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SubjectCategoryItem extends StatelessWidget {
//   const SubjectCategoryItem(
//       {Key? key, required this.category, required this.isChecked})
//       : super(key: key);

//   final SubjectCategory category;
//   final bool isChecked;
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       value: isChecked,
//       onChanged: (value) => BlocProvider.of<SubjectsBloc>(context)
//           .add(SubjectsEvent.selectCategory(category)),
//       dense: true,
//       title: Text(category.name),
//     );
//   }
// }

// class FragmentView extends StatelessWidget {
//   const FragmentView({Key? key, required this.record}) : super(key: key);

//   final Fragment record;

//   @override
//   Widget build(BuildContext context) {
//     return Tooltip(
//       margin: const EdgeInsets.symmetric(horizontal: 100),
//       message: record.description ?? 'Нет описания',
//       child: GestureDetector(
//         onTap: () => BlocProvider.of<HomeBloc>(context)
//             .add(HomeEvent.openPlayer(record: record)),
//         child: ListTile(
//             mouseCursor: SystemMouseCursors.click,
//             title: Text(
//                 '${record.title} ${DateFormat('dd.MM.yy').format(record.date)}'),
//             leading: SizedBox(
//               height: 60,
//               width: 60,
//               child: record.images != null
//                   ? Image.file(File(record.images!.keys.first))
//                   : null,
//             )),
//       ),
//     );
//   }
// }

// class PendingView extends StatelessWidget {
//   const PendingView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: CircularProgressIndicator());
//   }
// }
