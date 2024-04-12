import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:introbox/domain/models/channel.dart';
import 'package:introbox/generated/locale_keys.g.dart';
import 'package:introbox/presentation/common/common_loading_error_widget.dart';
import 'package:introbox/presentation/extetsions/context_extensions.dart';
import 'package:introbox/presentation/theme/dynamic_theme.dart';

import '../../../../domain/models/presentation.dart';

import '../../../domain/models/course.dart';
import '../../auto_router/app_router.dart';
import '../../common/common_elevated_button.dart';
import '../../common/common_functions.dart';

///import '../../common/common_navigation_drawer.dart';
import '../../common/common_text_field.dart';
import '../../utils/responsive.dart';
import 'bloc/presentations_bloc.dart';

@RoutePage()
class PresentationsScreen extends StatelessWidget {
  PresentationsScreen({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PresentationsBloc(),
      child: BlocConsumer<PresentationsBloc, PresentationsState>(
        listener: (context, state) => state.mapOrNull(
          requestError: (state) => CommonFunctions.showMessage(
              context,
              state.errorText ?? LocaleKeys.commonRequestError.tr(),
              Reason.error),
          requestSuccess: (state) => CommonFunctions.showMessage(
              context,
              state.message ?? LocaleKeys.commonSaveSuccess.tr(),
              Reason.neutral),
        ),
        buildWhen: ((previous, current) => current.maybeMap(
            orElse: () => false,
            pending: (_) => true,
            screenState: (_) => true,
            loadingError: (_) => true)),
        builder: (context, state) => state.maybeMap(
          orElse: () =>
              throw UnsupportedError('PresentationsScreen unsupported state'),
          pending: (_) => Scaffold(
              //drawer: const CommonNavigationDrawer(),
              appBar: AppBar(
                title: Text(
                  LocaleKeys.presentations.tr(),
                ),
                leading: BackButton(
                  onPressed: () {
                    context.router.push(const MainRoute());
                  },
                ),
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              )),
          screenState: (state) => Scaffold(
              // drawer: const CommonNavigationDrawer(),
              appBar: AppBar(
                leading: BackButton(
                  onPressed: () {
                    context.router.push(const MainRoute());
                  },
                ),
                title: Row(
                  children: [
                    Text(
                      LocaleKeys.presentations.tr(),
                    ),
                    const Spacer(),
                    if (Responsive.isMobile(context) == false) ...[
                      TextButton(
                          onPressed: () =>
                              context.router.push(const ChannelsRoute()),
                          child: Text(
                            LocaleKeys.channels.tr(),
                            style: const TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () =>
                              context.router.push(const CompaniesRoute()),
                          child: Text(
                            LocaleKeys.companies.tr(),
                            style: const TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () =>
                              context.router.push(const MyCoursesRoute()),
                          child: Text(
                            LocaleKeys.courses.tr(),
                            style: const TextStyle(color: Colors.white),
                          ))
                    ] else
                      PopupMenuButton(
                        itemBuilder: (BuildContext bc) {
                          return [
                            PopupMenuItem(
                              child: Text(
                                LocaleKeys.channels.tr(),
                                style: const TextStyle(color: Colors.black),
                              ),
                              onTap: () =>
                                  context.router.push(const ChannelsRoute()),
                            ),
                            PopupMenuItem(
                              child: Text(
                                LocaleKeys.companies.tr(),
                                style: const TextStyle(color: Colors.black),
                              ),
                              onTap: () =>
                                  context.router.push(const CompaniesRoute()),
                            ),
                            PopupMenuItem(
                              child: Text(
                                LocaleKeys.courses.tr(),
                                style: const TextStyle(color: Colors.black),
                              ),
                              onTap: () =>
                                  context.router.push(const MyCoursesRoute()),
                            ),
                          ];
                        },
                      )
                  ],
                ),
                actions: [
                  if (Responsive.isMobile(context) == false)
                    IconButton(
                      tooltip: LocaleKeys.refreshPage.tr(),
                      icon: const Icon(Icons.refresh),
                      style: TextButton.styleFrom(
                          iconColor:
                              DynamicTheme.paletteOf(context).alwaysWhite,
                          foregroundColor:
                              DynamicTheme.paletteOf(context).alwaysWhite,
                          textStyle: TextStyle(
                              color:
                                  DynamicTheme.paletteOf(context).alwaysWhite)),
                      onPressed: () {
                        BlocProvider.of<PresentationsBloc>(context)
                            .add(const PresentationsEvent.reloadData());
                      },
                    ),
                  IconButton(
                    tooltip: LocaleKeys.newPdfPresentation.tr(),
                    icon: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.picture_as_pdf),
                      ],
                    ),
                    onPressed: () async {
                      final result = await context.router
                          .push(const PdfCreatePresentationRoute());
                      if (context.mounted) {
                        if (result != null) {
                          BlocProvider.of<PresentationsBloc>(context)
                              .add(const PresentationsEvent.reloadData());
                        }
                      }
                    },
                  ),
                  IconButton(
                    tooltip: LocaleKeys.newImagePresentation.tr(),
                    icon: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.image),
                      ],
                    ),
                    onPressed: () async {
                      final result = await context.router
                          .push(ImageCreatePresentationRoute());
                      if (context.mounted) {
                        if (result != null) {
                          BlocProvider.of<PresentationsBloc>(context)
                              .add(const PresentationsEvent.reloadData());
                        }
                      }
                    },
                  ),
                ],
              ),
              body: RefreshIndicator(
                onRefresh: () async =>
                    BlocProvider.of<PresentationsBloc>(context)
                        .add(const PresentationsEvent.reloadData()),
                child: _PresentationList(
                  presentations: state.presentations,
                  courses: state.courses,
                  controller: controller,
                  channels: state.channels,
                ),
              )),
          loadingError: (_) => Scaffold(
              appBar: AppBar(
                leading: BackButton(onPressed: () {
                  context.router.push(const MainRoute());
                }),
                title: Text(
                  LocaleKeys.presentations.tr(),
                ),
              ),
              body: const _LoadingError()),
        ),
      ),
    );
  }
}

class _PresentationList extends StatefulWidget {
  _PresentationList(
      {super.key,
      required this.presentations,
      required this.courses,
      required this.controller,
      required this.channels});

  final List<Presentation> presentations;
  final List<Course> courses;
  final List<Channel> channels;
  final TextEditingController controller;

  @override
  State<_PresentationList> createState() => _PresentationListState();
}

class _PresentationListState extends State<_PresentationList> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      print('end of page');
      // Загрузка новых данных
      _loadMoreData();
    }
  }

  void _loadMoreData() {
    BlocProvider.of<PresentationsBloc>(context).add(
        PresentationsEvent.initialDataRequested(
            searchText: widget.controller.text));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context) ? 12 : 150,
              vertical: Responsive.isMobile(context) ? 12 : 24,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: SearchBar(
                    onSubmitted: (_) =>
                        BlocProvider.of<PresentationsBloc>(context).add(
                            PresentationsEvent.initialDataRequested(
                                searchText: widget.controller.text)),
                    hintText: LocaleKeys.hintSearch.tr(),
                    hintStyle: const MaterialStatePropertyAll<TextStyle>(
                        TextStyle(color: Colors.grey)),
                    controller: widget.controller,
                    elevation: const MaterialStatePropertyAll<double>(1),
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white),
                    textStyle: const MaterialStatePropertyAll<TextStyle>(
                        TextStyle(color: Colors.black)),
                    trailing: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          widget.controller.text = '';
                          BlocProvider.of<PresentationsBloc>(context)
                              .add(const PresentationsEvent.reloadData());
                        },
                      )
                    ],
                    onChanged: (t) {
                      if (t.isEmpty) {
                        BlocProvider.of<PresentationsBloc>(context)
                            .add(const PresentationsEvent.reloadData());
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<PresentationsBloc>(context).add(
                          PresentationsEvent.initialDataRequested(
                              searchText: widget.controller.text));
                    },
                    icon: const Icon(Icons.search))
              ],
            ),
          ),
        ),
        widget.presentations.isNotEmpty
            ? SliverList.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.isMobile(context) ? 12 : 24,
                        right: Responsive.isMobile(context) ? 12 : 24),
                    child: PresentationItem(
                      presentation: widget.presentations.elementAt(index),
                      courses: widget.courses,
                      channels: widget.channels,
                      onDeleteConfirm: () =>
                          BlocProvider.of<PresentationsBloc>(context).add(
                              PresentationsEvent.deletePresentation(
                                  widget.presentations.elementAt(index).id)),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 12,
                ),
                itemCount: widget.presentations.length,
              )
            : SliverToBoxAdapter(
                child: Center(
                  child: Text(LocaleKeys.presentationsNotFound.tr()),
                ),
              ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 32),
        )
      ],
    );
  }
}

class PresentationItem extends StatelessWidget {
  const PresentationItem(
      {super.key,
      required this.presentation,
      required this.onDeleteConfirm,
      required this.courses,
      required this.channels});

  final Presentation presentation;
  final Function() onDeleteConfirm;
  final List<Course> courses;
  final List<Channel> channels;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(PresentationRoute(id: presentation.id)),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (presentation.firstImage != null &&
                      presentation.firstImage!.isNotEmpty)
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: CachedNetworkImage(
                            imageUrl: presentation.firstImage!)),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      flex: 3,
                      child: SizedBox(
                          height: 100,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(presentation.title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                Text(
                                  presentation.channel!.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(
                                  presentation.description!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic),
                                ),
                                const Spacer(),
                                Text(
                                  DateFormat('dd.MM.yyy kk:mm')
                                      .format(presentation.createdAt),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ]))),
                  const SizedBox(
                    width: 12,
                  ),
                  if (Responsive.isMobile(context) == false) ...[
                    IconButton(
                      tooltip: LocaleKeys.channel.tr(),
                      onPressed: () => onAddToChannelClicked(context,
                          presentationId: presentation.id,
                          channels: channels,
                          selectedChannel: presentation.channel),
                      icon: SvgPicture.asset('assets/images/all-channels-1.svg',
                          height: 24),
                    ),
                    IconButton(
                      tooltip: LocaleKeys.addToCourse.tr(),
                      onPressed: () => onAddToCourseClicked(
                          context, presentation.id, courses),
                      icon: const Icon(Icons.add_rounded),
                    ),
                    IconButton(
                      tooltip: LocaleKeys.buttonEdit.tr(),
                      onPressed: () async {
                        final result = await context.router
                            .push(EditPresentationRoute(id: presentation.id));
                        if (context.mounted) {
                          if (result == true) {
                            BlocProvider.of<PresentationsBloc>(context).add(
                                const PresentationsEvent
                                    .initialDataRequested());
                          }
                        }
                      },
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      tooltip: LocaleKeys.buttonDelete.tr(),
                      onPressed: () => _showDeleteConfirmDialog(
                          context, presentation.id, onDeleteConfirm),
                      icon: const Icon(Icons.delete),
                    ),
                    IconButton(
                        tooltip: presentation.isPublished
                            ? LocaleKeys.unPublish.tr()
                            : LocaleKeys.publish.tr(),
                        onPressed: () {
                          BlocProvider.of<PresentationsBloc>(context).add(
                              PresentationsEvent.publishPresentation(
                                  presentation.id));
                        },
                        icon: Icon(Icons.public,
                            color: presentation.isPublished
                                ? Colors.green
                                : Colors.grey)),
                    IconButton(
                        tooltip: LocaleKeys.links.tr(),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => Dialog.fullscreen(
                                    child: _LinkView(
                                        presentationId: presentation.id),
                                  ));
                        },
                        icon: const Icon(Icons.share)),
                    IconButton(
                        tooltip: presentation.hasPassword
                            ? LocaleKeys.passwordProtected.tr()
                            : LocaleKeys.noPassword.tr(),
                        onPressed: () async {
                          final passwordController = TextEditingController();
                          final confirmPasswordController =
                              TextEditingController();
                          final result = await showDialog(
                              context: context,
                              builder: (context) => SizedBox(
                                    child: SimpleDialog(
                                      contentPadding: EdgeInsets.all(
                                          Responsive.isMobile(context)
                                              ? 12
                                              : 24),
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: Text(LocaleKeys
                                              .addPasswordMessage
                                              .tr()),
                                        ),
                                        const SizedBox(height: 12),
                                        CommonTextField(
                                            controller: passwordController,
                                            obscureText: true,
                                            labelText:
                                                LocaleKeys.password.tr()),
                                        const SizedBox(height: 12),
                                        CommonTextField(
                                            controller:
                                                confirmPasswordController,
                                            obscureText: true,
                                            labelText:
                                                LocaleKeys.repeatPassword.tr()),
                                        const SizedBox(height: 12),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            TextButton(
                                                onPressed: () =>
                                                    context.router.pop(),
                                                child: Text(LocaleKeys
                                                    .buttonCancel
                                                    .tr())),
                                            TextButton(
                                                onPressed: () {
                                                  context.router.pop((
                                                    password:
                                                        passwordController.text,
                                                    confirmPassword:
                                                        confirmPasswordController
                                                            .text
                                                  ));
                                                },
                                                child: Text(LocaleKeys
                                                    .buttonSave
                                                    .tr())),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ));
                          if (result != null &&
                              result is ({
                                String password,
                                String confirmPassword
                              })) {
                            if (context.mounted) {
                              BlocProvider.of<PresentationsBloc>(context).add(
                                  PresentationsEvent.onPasswordChanged(
                                      presentation.id, result));
                            }
                          }
                        },
                        icon: Icon(Icons.lock,
                            color: presentation.hasPassword
                                ? Colors.green
                                : Colors.grey))
                  ] else
                    PopupMenuButton(itemBuilder: (BuildContext bc) {
                      return [
                        PopupMenuItem(
                            child: Text(
                              'Change channel',
                              style: const TextStyle(color: Colors.black),
                            ),
                            onTap: () => onAddToChannelClicked(
                                  context,
                                  presentationId: presentation.id,
                                  channels: channels,
                                  selectedChannel: presentation.channel,
                                )),
                        PopupMenuItem(
                            child: Text(
                              LocaleKeys.addToCourse.tr(),
                              style: const TextStyle(color: Colors.black),
                            ),
                            onTap: () => onAddToCourseClicked(
                                context, presentation.id, courses)),
                        PopupMenuItem(
                            child: Text(
                              LocaleKeys.buttonEdit.tr(),
                              style: const TextStyle(color: Colors.black),
                            ),
                            onTap: () async {
                              final result = await context.router.push(
                                  EditPresentationRoute(id: presentation.id));
                              if (context.mounted) {
                                if (result == true) {
                                  BlocProvider.of<PresentationsBloc>(context)
                                      .add(const PresentationsEvent
                                          .initialDataRequested());
                                }
                              }
                            }),
                        PopupMenuItem(
                            child: Text(
                              LocaleKeys.buttonDelete.tr(),
                              style: const TextStyle(color: Colors.black),
                            ),
                            onTap: () => _showDeleteConfirmDialog(
                                context, presentation.id, onDeleteConfirm)),
                        PopupMenuItem(
                            child: Text(
                              presentation.isPublished
                                  ? LocaleKeys.unPublish.tr()
                                  : LocaleKeys.publish.tr(),
                              style: const TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              BlocProvider.of<PresentationsBloc>(context).add(
                                  PresentationsEvent.publishPresentation(
                                      presentation.id));
                            }),
                        PopupMenuItem(
                            child: Text(
                              LocaleKeys.links.tr(),
                              style: const TextStyle(color: Colors.black),
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => Dialog.fullscreen(
                                        child: _LinkView(
                                            presentationId: presentation.id),
                                      ));
                            }),
                        PopupMenuItem(
                            child: Text(
                              presentation.hasPassword
                                  ? LocaleKeys.passwordProtected.tr()
                                  : LocaleKeys.noPassword.tr(),
                              style: const TextStyle(color: Colors.black),
                            ),
                            onTap: () async {
                              final passwordController =
                                  TextEditingController();
                              final confirmPasswordController =
                                  TextEditingController();
                              final result = await showDialog(
                                  context: context,
                                  builder: (context) => SizedBox(
                                        child: SimpleDialog(
                                          contentPadding: EdgeInsets.all(
                                              Responsive.isMobile(context)
                                                  ? 12
                                                  : 24),
                                          children: [
                                            SizedBox(
                                              width: 200,
                                              child: Text(LocaleKeys
                                                  .addPasswordMessage
                                                  .tr()),
                                            ),
                                            const SizedBox(height: 12),
                                            CommonTextField(
                                                controller: passwordController,
                                                obscureText: true,
                                                labelText:
                                                    LocaleKeys.password.tr()),
                                            const SizedBox(height: 12),
                                            CommonTextField(
                                                controller:
                                                    confirmPasswordController,
                                                obscureText: true,
                                                labelText: LocaleKeys
                                                    .repeatPassword
                                                    .tr()),
                                            const SizedBox(height: 12),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                TextButton(
                                                    onPressed: () =>
                                                        context.router.pop(),
                                                    child: Text(LocaleKeys
                                                        .buttonCancel
                                                        .tr())),
                                                TextButton(
                                                    onPressed: () {
                                                      context.router.pop((
                                                        password:
                                                            passwordController
                                                                .text,
                                                        confirmPassword:
                                                            confirmPasswordController
                                                                .text
                                                      ));
                                                    },
                                                    child: Text(LocaleKeys
                                                        .buttonSave
                                                        .tr())),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ));
                              if (result != null &&
                                  result is ({
                                    String password,
                                    String confirmPassword
                                  })) {
                                if (context.mounted) {
                                  BlocProvider.of<PresentationsBloc>(context)
                                      .add(PresentationsEvent.onPasswordChanged(
                                          presentation.id, result));
                                }
                              }
                            }),
                      ];
                    })
                ],
              ))),
    );
  }

  Future<void> _showDeleteConfirmDialog(
      BuildContext context, String id, Function() onDeleteConfirmed) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        return AlertDialog(
          // <-- SEE HERE
          title: Text(LocaleKeys.deletePresentation.tr()),
          content: Text(LocaleKeys.deletePresentationConfirmationMessage.tr()),

          actions: <Widget>[
            TextButton(
              child: Text(LocaleKeys.buttonCancel.tr()),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(LocaleKeys.buttonDelete.tr()),
              onPressed: () {
                onDeleteConfirm();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> onAddToCourseClicked(
      BuildContext context, String presentationId, List<Course> courses) async {
    if (courses.isEmpty) {
      CommonFunctions.showMessage(
          context, LocaleKeys.coursesNotFound.tr(), Reason.error);
      return;
    }
    String? selectedCourseId;
    final result = await showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(LocaleKeys.addToCourse.tr()),
        contentPadding: const EdgeInsets.all(24),
        children: [
          CourseSelectWidget(
              selectedId: courses.first.id,
              courses: courses,
              onCourseSelect: (v) {
                selectedCourseId = v;
              }),
          const SizedBox(
            height: 12,
          ),
          CommonElevatedButton(
              text: LocaleKeys.buttonSelect.tr(),
              onPressed: () {
                context.router.pop(selectedCourseId);
              }),
          const SizedBox(
            height: 12,
          ),
          TextButton(
              onPressed: () => context.router.pop(),
              child: Text(LocaleKeys.buttonCancel.tr()))
        ],
      ),
    );

    print(result);
    if (result is String) {
      if (context.mounted) {
        BlocProvider.of<PresentationsBloc>(context).add(
            PresentationsEvent.addPresentationToCourse(
                presentationId: presentationId, courseId: result));
      }
    }
  }

  onAddToChannelClicked(
    BuildContext context, {
    required List<Channel> channels,
    Channel? selectedChannel,
    required String presentationId,
  }) {
    String? selectedChannelId = selectedChannel?.id;
    CommonFunctions.showStyledDialog(
        context: context,
        message: '',
        negativeButtonText: LocaleKeys.buttonCancel.tr(),
        onPositiveTap: () => BlocProvider.of<PresentationsBloc>(context).add(
            PresentationsEvent.changeChannel(
                presentationId: presentationId, channelId: selectedChannelId!)),
        content: ChannelSelectWidget(
            channels: channels,
            selectedId: selectedChannel?.id,
            onChannelSelect: (v) {
              selectedChannelId = v;
            }),
        positiveButtonText: LocaleKeys.buttonSave.tr());
  }
}

class CourseSelectWidget extends StatefulWidget {
  const CourseSelectWidget(
      {super.key,
      required this.courses,
      required this.onCourseSelect,
      this.selectedId});

  final List<Course> courses;
  final Function(String) onCourseSelect;
  final String? selectedId;

  @override
  State<CourseSelectWidget> createState() => _CourseSelectWidgetState();
}

class _CourseSelectWidgetState extends State<CourseSelectWidget> {
  String? selectedCourseId;
  late List<Widget> courseSelectWidgets;

  @override
  Widget build(BuildContext context) {
    courseSelectWidgets = widget.courses
        .map((channel) => ListTile(
              title: Text(
                channel.title,
                style: const TextStyle(color: Colors.black),
              ),
              leading: Radio(
                value: channel.id,
                groupValue: selectedCourseId,
                onChanged: (value) {
                  setState(() {
                    selectedCourseId = value!;
                  });
                  widget.onCourseSelect(value!);
                },
              ),
            ))
        .toList();
    return Column(children: [
      /// TODO: еще на странице есть
      ListTile(
        title: const Text(
          'Отдельная презентация',
          style: TextStyle(color: Colors.black),
        ),
        leading: Radio(
          value: null,
          groupValue: selectedCourseId,
          onChanged: (value) {
            setState(() {
              selectedCourseId = value!;
            });
            widget.onCourseSelect(value!);
          },
        ),
      ),
      ...courseSelectWidgets,
    ]);
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
  String? selectedChannelId;
  late List<Widget> channelSelectWidgets;
  @override
  void initState() {
    super.initState();
    selectedChannelId = widget.selectedId;
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
    return Column(children: [
      ...channelSelectWidgets,
    ]);
  }
}

class _LoadingError extends StatelessWidget {
  const _LoadingError({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLoadingErrorWidget(
        onPressed: () => BlocProvider.of<PresentationsBloc>(context)
            .add(const PresentationsEvent.initialDataRequested()));
  }
}

class _LinkView extends StatelessWidget {
  const _LinkView({super.key, required this.presentationId});

  final String presentationId;

  @override
  Widget build(BuildContext context) {
    final linkText = '''https://introbox.app/presentation/$presentationId''';
    final htmlText = '''<!DOCTYPE html>
      <html>
        <head>
          <title>'${LocaleKeys.presentation.tr()}'</title> 
          <style type="text/css"> 
            html { 
              overflow: auto; 
            } 
            
            html, 
            body, 
            div, 
            iframe { 
              margin: 0px; 
              padding: 0px; 
              height: 100%; 
              border: none; 
            } 
            
            iframe { 
              display: block; 
              width: 100%; 
              border: none; 
              overflow-y: auto; 
              overflow-x: hidden; 
            } 
          </style> 
        </head>
      <body>
        <iframe src="https://introbox.app/presentation/$presentationId"></iframe>
      
      </body>
    </html>
    ''';
    return Stack(
      alignment: Alignment.center,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Text(
                LocaleKeys.presentationLink.tr(),
                style: context.style18w600$title2,
              ),
              const SizedBox(height: 24),
              DecoratedBox(
                decoration: const BoxDecoration(color: Colors.black),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          color: Colors.white,
                          onPressed: () async {
                            await Clipboard.setData(
                                ClipboardData(text: linkText));
                            // copied successfully
                          },
                          icon: const Icon(Icons.copy)),
                      SelectableText(
                        showCursor: true,
                        maxLines: null,
                        linkText,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                LocaleKeys.htmlCode.tr(),
                style: context.style18w600$title2,
              ),
              const SizedBox(height: 24),
              DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                color: Colors.white,
                                onPressed: () async {
                                  await Clipboard.setData(
                                      ClipboardData(text: htmlText));
                                },
                                icon: const Icon(Icons.copy)),
                            SelectableText(htmlText,
                                maxLines: null,
                                showCursor: true,
                                style: const TextStyle(
                                  color: Colors.white,
                                )),
                          ])))
            ],
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {
                  context.router.pop();
                },
                icon: const Icon(Icons.close)))
      ],
    );
  }
}
