// import 'dart:io';

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../domain/models/course_category.dart';
// import '../../../../domain/models/subject.dart';
// import '../../../../domain/models/subject_category.dart';

// import '../../home_screen/bloc/home_bloc.dart';
// import 'bloc/new_course_bloc.dart';
// import '../../widgets/add_course_category_form.dart';

// @RoutePage()
// class NewCourseScreen extends StatelessWidget {
//   const NewCourseScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Новый курс'),
//       ),
//       body: BlocProvider(
//         create: (context) => NewCourseBloc(),
//         child: BlocConsumer<NewCourseBloc, NewCourseState>(
//             listener: (context, state) =>
//                 state.mapOrNull(courseSaved: (_) => context.router.pop()),
//             buildWhen: (context, state) => state.map(
//                 pending: (_) => true,
//                 dataReceived: (state) => true,
//                 courseSaved: (state) => false),
//             builder: (context, state) => state.maybeMap(
//                 orElse: () => throw UnimplementedError(),
//                 pending: (_) => const _PendingView(),
//                 dataReceived: (state) => _NewCourseView(
//                       courseCategories: state.courseCategories,
//                       subjects: state.subjects,
//                       subjectCategories: state.subjectCategories,
//                       selectedSubjectCategories:
//                           state.selectedSubjectCategories,
//                       selectedCourseCategories: state.selectedCourseCategories,
//                       courseSubjects: state.courseSubjects,
//                       titleController: state.titleController,
//                       descriptionController: state.descriptionController,
//                     ))),
//       ),
//     );
//   }
// }

// class _NewCourseView extends StatelessWidget {
//   const _NewCourseView(
//       {super.key,
//       required this.courseCategories,
//       required this.selectedCourseCategories,
//       required this.subjects,
//       required this.subjectCategories,
//       required this.selectedSubjectCategories,
//       required this.courseSubjects,
//       required this.titleController,
//       required this.descriptionController});

//   final List<CourseCategory> courseCategories;
//   final List<CourseCategory> selectedCourseCategories;
//   final List<Subject> subjects;
//   final List<SubjectCategory> subjectCategories;
//   final List<SubjectCategory> selectedSubjectCategories;
//   final List<Subject> courseSubjects;
//   final TextEditingController titleController;
//   final TextEditingController descriptionController;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//       Row(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           _CourseCategoriesView(
//             courseCategories: courseCategories,
//             selectedCourseCategories: selectedCourseCategories,
//             titleController: titleController,
//             descriptionController: descriptionController,
//           ),
//           const VerticalDivider(),
//           _SubjectCategoriesView(
//             subjectCategories: subjectCategories,
//             selectedSubjectCategories: selectedSubjectCategories,
//           ),
//           const VerticalDivider(),
//           _SelectedSubjectsView(
//             subjects: subjects,
//             courseSubjects: courseSubjects,
//           ),
//           const VerticalDivider(),
//           _SubjectsView(
//             subjects: courseSubjects,
//           )
//         ],
//       ),
//       courseSubjects.isNotEmpty && titleController.text != ''
//           ? Positioned(
//               right: 10,
//               bottom: 10,
//               child: FloatingActionButton(
//                 onPressed: () {
//                   BlocProvider.of<NewCourseBloc>(context)
//                       .add(const NewCourseEvent.saveCourse());
//                   context.router.pop();
//                 },
//                 tooltip: 'Создать',
//                 child: const Icon(Icons.save),
//               ),
//             )
//           : const SizedBox()
//     ]);
//   }
// }

// class _PendingView extends StatelessWidget {
//   const _PendingView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: CircularProgressIndicator());
//   }
// }

// class _CourseCategoriesView extends StatelessWidget {
//   const _CourseCategoriesView({
//     super.key,
//     required this.courseCategories,
//     required this.selectedCourseCategories,
//     required this.titleController,
//     required this.descriptionController,
//   });

//   final List<CourseCategory> courseCategories;
//   final List<CourseCategory> selectedCourseCategories;

//   final TextEditingController titleController;
//   final TextEditingController descriptionController;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 200,
//       child: Column(children: [
//         const SizedBox(
//           height: 20,
//         ),
//         const Text('Курс'),
//         const Divider(),
//         TextFormField(
//           maxLines: null,
//           controller: titleController,
//           onChanged: (value) => BlocProvider.of<NewCourseBloc>(context)
//               .add(const NewCourseEvent.resendData()),
//           decoration: const InputDecoration(hintText: 'Название'),
//         ),
//         TextFormField(
//           controller: descriptionController,
//           maxLines: null,
//           decoration: const InputDecoration(hintText: 'Описание'),
//         ),
//         const SizedBox(height: 20),
//         Expanded(
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: courseCategories.length,
//             itemBuilder: (BuildContext context, int index) {
//               var category = courseCategories.elementAt(index);
//               return CheckboxListTile(
//                 dense: true,
//                 title: Text('category.name'),
//                 value: selectedCourseCategories.contains(category),
//                 onChanged: (value) {
//                   BlocProvider.of<NewCourseBloc>(context)
//                       .add(NewCourseEvent.selectCourseCategory(category));
//                 },
//               );
//             },
//           ),
//         ),
//         const SizedBox(height: 20),
//         ElevatedButton(
//             onPressed: () async {
//               var bloc = BlocProvider.of<NewCourseBloc>(context);
//               Map<String, dynamic>? response =
//                   await showDialog<Map<String, dynamic>>(
//                       context: context,
//                       builder: (context) =>
//                           const Dialog(child: AddCourseCategoryForm()));
//               if (response != null) {
//                 if (response['action'] == 'edit') {
//                   var categoryName = response['name'] as String?;
//                   if (categoryName != null && categoryName.trim() != '') {
//                     bloc.add(
//                         NewCourseEvent.addCourseCategory(name: categoryName));
//                   }
//                 } else {
//                   if (response['action'] == 'delete') {}
//                 }
//               }
//             },
//             child: const Text('Добавить категорию')),
//         const SizedBox(height: 20),
//       ]),
//     );
//   }
// }

// class _SubjectCategoriesView extends StatelessWidget {
//   const _SubjectCategoriesView({
//     super.key,
//     required this.subjectCategories,
//     required this.selectedSubjectCategories,
//   });

//   final List<SubjectCategory> subjectCategories;
//   final List<SubjectCategory> selectedSubjectCategories;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: 200,
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             const Text('Категории тем'),
//             const Divider(),
//             Expanded(
//                 child: ListView.builder(
//                     itemCount: subjectCategories.length,
//                     itemBuilder: ((context, index) => CheckboxListTile(
//                         dense: true,
//                         title: Text(subjectCategories.elementAt(index).name),
//                         value: selectedSubjectCategories
//                             .contains(subjectCategories.elementAt(index)),
//                         onChanged: ((value) {
//                           BlocProvider.of<NewCourseBloc>(context).add(
//                               NewCourseEvent.selectSubjectCategory(
//                                   subjectCategories.elementAt(index)));
//                         })))))
//           ],
//         ));
//   }
// }

// class _SubjectsView extends StatelessWidget {
//   const _SubjectsView({
//     Key? key,
//     required this.subjects,
//   }) : super(key: key);

//   final List<Subject> subjects;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Column(
//       children: [
//         const SizedBox(
//           height: 20,
//         ),
//         const Text('Темы курса'),
//         const Divider(),
//         Expanded(
//           child: ReorderableListView.builder(
//             itemCount: subjects.length,
//             itemBuilder: (context, index) {
//               var subject = subjects.elementAt(index);
//               return ListTile(
//                 key: ValueKey(subject.id),
//                 leading: SizedBox(
//                   height: 50,
//                   width: 50,
//                   child: subject.records?.first.images != null
//                       ? Padding(
//                           padding: const EdgeInsets.only(top: 8, bottom: 8),
//                           child: Image.file(File(subject
//                               .records!.first.images!.entries.first.key
//                               .replaceAll('\\\\', '\\'))),
//                         )
//                       : null,
//                 ),
//                 title: GestureDetector(
//                   onTap: () => (() {}),
//                   child: MouseRegion(
//                     cursor: SystemMouseCursors.click,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         SizedBox(
//                           width: 140,
//                           child: Text(
//                             '${index + 1}. ${subject.title}',
//                             maxLines: null,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 20),
//                           child: IconButton(
//                               onPressed: () {
//                                 BlocProvider.of<HomeBloc>(context).add(
//                                     HomeEvent.openSubjectPlayer(
//                                         subject: subject));
//                               },
//                               icon: const Icon(
//                                 Icons.play_circle,
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//             onReorder: (oldIndex, newIndex) =>
//                 BlocProvider.of<NewCourseBloc>(context)
//                     .add(NewCourseEvent.onReorder(oldIndex, newIndex)),
//           ),
//         )
//       ],
//     ));
//   }
// }

// class _SelectedSubjectsView extends StatelessWidget {
//   const _SelectedSubjectsView({
//     super.key,
//     required this.subjects,
//     required this.courseSubjects,
//   });

//   final List<Subject> subjects;
//   final List<Subject> courseSubjects;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 250,
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           const Text('Темы'),
//           const Divider(),
//           Expanded(
//               child: ListView.builder(
//                   itemCount: subjects.length,
//                   itemBuilder: ((context, index) {
//                     return CheckboxListTile(
//                         dense: true,
//                         value:
//                             courseSubjects.contains(subjects.elementAt(index)),
//                         onChanged: (value) {
//                           BlocProvider.of<NewCourseBloc>(context).add(
//                               NewCourseEvent.selectCourseSubject(
//                                   subjects.elementAt(index)));
//                         },
//                         title: Text(
//                           subjects.elementAt(index).title,
//                         ));
//                   })))
//         ],
//       ),
//     );
//   }
// }
