import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';
import 'package:moki_tutor/presentation/common/common_text_field.dart';
import 'package:moki_tutor/presentation/widgets/name_and_description.dart';

import '../../../domain/models/channel.dart';
import '../../../domain/models/course.dart';
import '../../auto_router/app_router.dart';
import '../../common/common_elevated_button.dart';
import '../../utils/responsive.dart';
import 'bloc/my_courses_bloc.dart';

@RoutePage()
class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MyCoursesBloc(),
        child: BlocConsumer<MyCoursesBloc, MyCoursesState>(
            listener: (context, state) => state.mapOrNull(
                requestError: (state) => CommonFunctions.showMessage(
                    context,
                    state.errorText ??
                        'Произошла ошибка в запросе. Попробуйте позже',
                    Reason.error)),
            buildWhen: (previous, current) => current.maybeMap(
                orElse: () => false,
                screenState: (_) => true,
                pending: (_) => true,
                initialLoadingError: (_) => true),
            builder: (context, state) => state.maybeMap(
                  orElse: () =>
                      throw UnsupportedError('the state not supporting build'),
                  pending: (_) => Scaffold(
                      appBar: AppBar(
                        title: const Text(
                          'Курсы',
                        ),
                        leading: BackButton(
                          onPressed: () {
                            context.router.push(const PresentationsRoute());
                          },
                        ),
                      ),
                      body: Center(
                        child: CircularProgressIndicator(),
                      )),
                  initialLoadingError: (_) => Scaffold(
                      appBar: AppBar(
                        title: const Text(
                          'Курсы',
                        ),
                        leading: BackButton(
                          onPressed: () {
                            context.router.push(const PresentationsRoute());
                          },
                        ),
                      ),
                      body: CommonLoadingErrorWidget(
                          onPressed: () =>
                              BlocProvider.of<MyCoursesBloc>(context).add(
                                  const MyCoursesEvent
                                      .initialDataRequested()))),
                  screenState: (state) => Scaffold(
                      appBar: AppBar(
                        title: const Text(
                          'Курсы',
                        ),
                        leading: BackButton(
                          onPressed: () {
                            context.router.push(const PresentationsRoute());
                          },
                        ),
                        actions: [
                          IconButton(
                              onPressed: () async {
                                final result = await _onAddCoursePressed(
                                    context, state.channels);
                                if (result is AddCourseFormData) {
                                  if (context.mounted) {
                                    BlocProvider.of<MyCoursesBloc>(context).add(
                                        MyCoursesEvent.onAddCourse(
                                            title: result.title,
                                            channelId: result.channelId,
                                            description: result.description,
                                            price: result.price,
                                            imageBytes: result.imageBytes));
                                  }
                                }
                              },
                              icon: Icon(Icons.add_rounded))
                        ],
                      ),
                      body: _ScreenView(
                          channels: state.channels, courses: state.courses)),
                )));
  }

  Future<AddCourseFormData?> _onAddCoursePressed(
      BuildContext context, List<Channel> channels) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final priceController = TextEditingController();
    String selectedChannelId = channels.first.id;

    Uint8List? imageBytes;

    final result = await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
                title: const Text('Добавление курса'),
                contentPadding: const EdgeInsets.all(24),
                children: [
                  ImageSelectWidget(
                    onImageSelected: (v) {
                      imageBytes = v;
                    },
                  ),
                  const SizedBox(height: 12),
                  ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: 300),
                    child: NameAndDescriptionWidget(
                        titleController: titleController,
                        descriptionController: descriptionController),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonTextField(
                      controller: priceController,
                      labelText: 'Стоимость курса'),
                  ChannelSelectWidget(
                    channels: channels,
                    onChannelSelect: (c) {
                      selectedChannelId = c;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonElevatedButton(
                      text: 'Сохранить',
                      onPressed: () {
                        if (titleController.text.isEmpty) {
                          CommonFunctions.showMessage(
                              context, 'Введите название', Reason.error);
                        } else {
                          context.router.pop(AddCourseFormData(
                              channelId: selectedChannelId,
                              imageBytes: imageBytes,
                              title: titleController.text,
                              price: priceController.text,
                              description: descriptionController.text));
                        }
                      }),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                      onPressed: () => context.router.pop(),
                      child: const Text('Отмена'))
                ]));

    return result;
  }
}

class ChannelSelectWidget extends StatefulWidget {
  const ChannelSelectWidget(
      {super.key,
      required this.channels,
      required this.onChannelSelect,
      this.selectedId});

  final List<Channel> channels;
  final Function(String) onChannelSelect;
  final String? selectedId;

  @override
  State<ChannelSelectWidget> createState() => _ChannelSelectWidgetState();
}

class _ChannelSelectWidgetState extends State<ChannelSelectWidget> {
  late String selectedChannelId;
  late List<Widget> channelSelectWidgets;

  @override
  void initState() {
    super.initState();

    selectedChannelId = widget.selectedId ?? widget.channels.first.id;
  }

  @override
  Widget build(BuildContext context) {
    channelSelectWidgets = widget.channels
        .map((channel) => ListTile(
              title: Text(
                channel.title,
                style: const TextStyle(color: Colors.black),
              ),
              leading: Radio(
                value: channel.id,
                groupValue: selectedChannelId,
                onChanged: (value) {
                  setState(() {
                    selectedChannelId = value!;
                  });
                  widget.onChannelSelect(value!);
                },
              ),
            ))
        .toList();
    return Column(
      children: [...channelSelectWidgets],
    );
  }
}

class ImageSelectWidget extends StatefulWidget {
  const ImageSelectWidget(
      {super.key, required this.onImageSelected, this.imageUrl});

  final Function(Uint8List?) onImageSelected;

  final String? imageUrl;

  @override
  State<ImageSelectWidget> createState() => _ImageSelectWidgetState();
}

class _ImageSelectWidgetState extends State<ImageSelectWidget> {
  Image? image;
  Uint8List? imageBytes;

  @override
  void initState() {
    super.initState();
    if (widget.imageUrl != null) {
      image = Image.network(widget.imageUrl!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 300),
      child: Column(
        children: [
          GestureDetector(
              onTap: () async {
                var file = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['jpg', 'jpeg', 'png', 'webp', 'gif'],
                );
                if (file != null) {
                  imageBytes = file.files.first.bytes;
                  setState(() {
                    image = Image.memory(imageBytes!);
                  });
                  widget.onImageSelected(imageBytes);
                }
              },
              child: Padding(
                padding: EdgeInsets.only(top: 24),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    child: image ??
                        ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: const Icon(
                              Icons.person_rounded,
                              size: 300,
                              color: Colors.grey,
                            ))),
              )),
          if (image != null || widget.imageUrl != null) ...[
            const SizedBox(height: 12),
            CommonElevatedButton(
                text: 'Удалить',
                onPressed: () {
                  setState(() {
                    image = null;
                    imageBytes = null;
                  });
                })
          ]
        ],
      ),
    );
  }
}

class AddCourseFormData {
  final String title;
  final String channelId;
  final String? description;
  final String? price;
  final Uint8List? imageBytes;
  AddCourseFormData(
      {required this.title,
      required this.channelId,
      this.description,
      this.price,
      this.imageBytes});
}

class _ScreenView extends StatelessWidget {
  const _ScreenView({super.key, required this.channels, required this.courses});

  final List<Channel> channels;
  final List<Course> courses;

  @override
  Widget build(BuildContext context) {
    return courses.isNotEmpty
        ? ListView.separated(
            itemCount: courses.length,
            padding: EdgeInsets.all(Responsive.isMobile(context) ? 12 : 24),
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (BuildContext context, int index) {
              return CourseItem(
                course: courses.elementAt(index),
                channels: channels,
              );
            },
          )
        : const Center(
            child: Text('Список курсов пуст'),
          );
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, required this.course, required this.channels});

  final Course course;
  final List<Channel> channels;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.router.push(CourseRoute(id: course.id));
        },
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: const Offset(0, 15)),
                ],
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                if (course.image != null)
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: CachedNetworkImage(imageUrl: course.image!)),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: SizedBox(
                        height: 100,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(course.title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                              Expanded(
                                child: Text(
                                  course.description!,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              Text(
                                DateFormat('dd.MM.yyy kk:mm')
                                    .format(course.createdAt),
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                            ]))),
                IconButton(
                    tooltip: course.isPublished
                        ? 'Снять публикацию'
                        : 'Опубликовать',
                    onPressed: () {
                      BlocProvider.of<MyCoursesBloc>(context)
                          .add(MyCoursesEvent.onPublishCourse(id: course.id));
                    },
                    icon: Icon(Icons.public,
                        color:
                            course.isPublished ? Colors.green : Colors.grey)),
                IconButton(
                    onPressed: () async {
                      final result = await _onEditCourse(
                        context,
                        course,
                        channels,
                      );
                      if (result is AddCourseFormData) {
                        if (context.mounted) {
                          BlocProvider.of<MyCoursesBloc>(context).add(
                              MyCoursesEvent.onUpdateCourse(
                                  id: course.id,
                                  title: result.title,
                                  description: result.description,
                                  channelId: result.channelId,
                                  price: result.price,
                                  imageBytes: result.imageBytes));
                        }
                      }
                    },
                    icon: Icon(Icons.edit_rounded)),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<MyCoursesBloc>(context)
                          .add(MyCoursesEvent.onDeleteCourse(id: course.id));
                    },
                    icon: Icon(Icons.delete_rounded)),
              ]),
            )));
  }

  Future<AddCourseFormData?> _onEditCourse(
    BuildContext context,
    Course course,
    List<Channel> channels,
  ) async {
    final titleController = TextEditingController(text: course.title);
    final descriptionController =
        TextEditingController(text: course.description);
    final priceController =
        TextEditingController(text: course.price.toString());
    String selectedChannelId = course.channel.id;

    Uint8List? imageBytes;

    final result = await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
                title: const Text('Добавление курса'),
                contentPadding: const EdgeInsets.all(24),
                children: [
                  ImageSelectWidget(
                    imageUrl: course.image,
                    onImageSelected: (v) {
                      print('image selected');
                      imageBytes = v;
                    },
                  ),
                  const SizedBox(height: 12),
                  ConstrainedBox(
                    constraints: const BoxConstraints(minWidth: 300),
                    child: NameAndDescriptionWidget(
                        titleController: titleController,
                        descriptionController: descriptionController),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonTextField(
                      controller: priceController,
                      labelText: 'Стоимость курса'),
                  ChannelSelectWidget(
                    selectedId: course.channel.id,
                    channels: channels,
                    onChannelSelect: (c) {
                      selectedChannelId = c;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonElevatedButton(
                      text: 'Сохранить',
                      onPressed: () {
                        if (titleController.text.isEmpty) {
                          CommonFunctions.showMessage(
                              context, 'Введите название', Reason.error);
                        } else {
                          context.router.pop(AddCourseFormData(
                              channelId: selectedChannelId,
                              imageBytes: imageBytes,
                              title: titleController.text,
                              price: priceController.text,
                              description: descriptionController.text));
                        }
                      }),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                      onPressed: () => context.router.pop(),
                      child: const Text('Отмена'))
                ]));

    return result;
  }
}
