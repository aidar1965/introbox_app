import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:decimal/decimal.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:introbox/generated/locale_keys.g.dart';

import '../../../domain/models/course.dart';
import '../../common/common_functions.dart';
import '../../common/common_loading_error_widget.dart';
import '../../values/dynamic_palette.dart';
import 'bloc/courses_bloc.dart';
import '../../auto_router/app_router.dart';
import '../../utils/responsive.dart';

@RoutePage()
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocProvider(
        create: (context) => CoursesBloc(),
        child: BlocConsumer<CoursesBloc, CoursesState>(
          listener: (context, state) => state.mapOrNull(
            loadMoreError: (_) => CommonFunctions.showMessage(
                context, LocaleKeys.commonLoadingMoreError.tr(), Reason.error),
          ),
          buildWhen: (previous, current) => current.maybeMap(
            orElse: () => true,
            loadingError: (_) => false,
          ),
          builder: (context, state) => state.maybeMap(
              orElse: () =>
                  throw UnsupportedError('state not supporting building'),
              pending: (_) => Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    title: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.router.replace(const MainRoute());
                          },
                          icon: const Icon(Icons.home),
                        ),
                        const SizedBox(width: 8),
                        Text(LocaleKeys.courses.tr()),
                      ],
                    ),
                  ),
                  body: const Center(
                    child: CircularProgressIndicator(),
                  )),
              loadingError: (state) => Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    title: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.router.replace(const MainRoute());
                          },
                          icon: const Icon(Icons.home),
                        ),
                        const SizedBox(width: 8),
                        Text(LocaleKeys.courses.tr()),
                      ],
                    ),
                    actions: [
                      IconButton(
                          onPressed: () => showLocaleDialog(context,
                              EasyLocalization.of(context)?.currentLocale),
                          icon: Text(
                            EasyLocalization.of(context)
                                    ?.currentLocale
                                    ?.languageCode
                                    .toUpperCase() ??
                                'EN',
                            style: const TextStyle(color: Colors.white),
                          )),
                      if (Responsive.isMobile(context) == false)
                        IconButton(
                            onPressed: () {
                              BlocProvider.of<CoursesBloc>(context).add(
                                  const CoursesEvent.initialDataRequested());
                            },
                            icon: const Icon(Icons.refresh_rounded)),
                      if (state.isAuthorized)
                        if (Responsive.isMobile(context))
                          IconButton(
                              onPressed: () =>
                                  context.router.push(PresentationsRoute()),
                              icon:
                                  const Icon(Icons.cast_for_education_outlined))
                        else
                          TextButton(
                              onPressed: () =>
                                  context.router.push(PresentationsRoute()),
                              child: Text(
                                LocaleKeys.studio.tr(),
                                style: const TextStyle(color: Colors.white),
                              )),
                      if (state.isAuthorized)
                        IconButton(
                            onPressed: () {
                              context.router.push(const ProfileRoute());
                            },
                            icon: const Icon(Icons.person_rounded))
                      else
                        IconButton(
                            onPressed: () {
                              context.router.push(const LoginRoute());
                            },
                            icon: const Icon(Icons.login_rounded))
                    ],
                  ),
                  body: CommonLoadingErrorWidget(
                      onPressed: () => BlocProvider.of<CoursesBloc>(context)
                          .add(const CoursesEvent.initialDataRequested()))),
              screenState: (state) => _ScreenView(
                    courses: state.courses,
                    isAuthorized: state.isAuthorized,
                    controller: controller,
                  )),
        ));
  }
}

class _ScreenView extends StatefulWidget {
  _ScreenView(
      {super.key,
      required this.courses,
      required this.isAuthorized,
      required this.controller});

  final List<Course> courses;
  final bool isAuthorized;
  final TextEditingController controller;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
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
    BlocProvider.of<CoursesBloc>(context)
        .add(CoursesEvent.loadMore(searchText: widget.controller.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.router.replace(const MainRoute());
                },
                icon: const Icon(Icons.home),
              ),
              const SizedBox(width: 8),
              Text(LocaleKeys.courses.tr()),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () => showLocaleDialog(
                    context, EasyLocalization.of(context)?.currentLocale),
                icon: Text(
                  EasyLocalization.of(context)
                          ?.currentLocale
                          ?.languageCode
                          .toUpperCase() ??
                      'EN',
                  style: const TextStyle(color: Colors.white),
                )),
            if (Responsive.isMobile(context) == false)
              IconButton(
                  onPressed: () {
                    BlocProvider.of<CoursesBloc>(context)
                        .add(const CoursesEvent.initialDataRequested());
                  },
                  icon: const Icon(Icons.refresh_rounded)),
            if (widget.isAuthorized)
              if (Responsive.isMobile(context))
                IconButton(
                    onPressed: () => context.router.push(PresentationsRoute()),
                    icon: const Icon(Icons.cast_for_education_outlined))
              else
                TextButton(
                    onPressed: () => context.router.push(PresentationsRoute()),
                    child: Text(
                      LocaleKeys.studio.tr(),
                      style: const TextStyle(color: Colors.white),
                    )),
            if (widget.isAuthorized)
              IconButton(
                  onPressed: () {
                    context.router.push(const ProfileRoute());
                  },
                  icon: const Icon(Icons.person_rounded))
            else
              IconButton(
                  onPressed: () {
                    context.router.push(const LoginRoute());
                  },
                  icon: const Icon(Icons.login_rounded))
          ],
        ),
        body: widget.courses.isNotEmpty
            ? RefreshIndicator(
                onRefresh: () async => BlocProvider.of<CoursesBloc>(context)
                    .add(const CoursesEvent.initialDataRequested()),
                child:
                    CustomScrollView(controller: _scrollController, slivers: [
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
                                  BlocProvider.of<CoursesBloc>(context).add(
                                      CoursesEvent.initialDataRequested(
                                          searchText: widget.controller.text)),
                              hintText: LocaleKeys.hintSearch.tr(),
                              hintStyle:
                                  const MaterialStatePropertyAll<TextStyle>(
                                      TextStyle(color: Colors.grey)),
                              controller: widget.controller,
                              elevation:
                                  const MaterialStatePropertyAll<double>(1),
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                      Colors.white),
                              textStyle:
                                  const MaterialStatePropertyAll<TextStyle>(
                                      TextStyle(color: Colors.black)),
                              trailing: [
                                IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: () {
                                    widget.controller.text = '';
                                    BlocProvider.of<CoursesBloc>(context).add(
                                        const CoursesEvent
                                            .initialDataRequested());
                                  },
                                )
                              ],
                              onChanged: (t) {
                                if (t.isEmpty) {
                                  BlocProvider.of<CoursesBloc>(context).add(
                                      const CoursesEvent
                                          .initialDataRequested());
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          IconButton(
                              onPressed: () {
                                BlocProvider.of<CoursesBloc>(context).add(
                                    CoursesEvent.initialDataRequested(
                                        searchText: widget.controller.text));
                              },
                              icon: const Icon(Icons.search))
                        ],
                      ),
                    ),
                  ),
                  SliverList.separated(
                    itemCount: widget.courses.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 12,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Responsive.isMobile(context) ? 12 : 24),
                        child: CourseItem(
                          course: widget.courses.elementAt(index),
                        ),
                      );
                    },
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 32),
                  )
                ]),
              )
            : Center(
                child: Text(LocaleKeys.coursesNotFound.tr()),
              ));
  }
}

void showLocaleDialog(BuildContext context, Locale? currentLocale) {
  showDialog(
      context: context,
      builder: (context) => SimpleDialog(
            contentPadding: const EdgeInsets.all(24),
            children: [
              // ListTile(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(8)),
              //     tileColor: EasyLocalization.of(context)?.currentLocale ==
              //             const Locale('kk', 'KZ')
              //         ? Colors.black54
              //         : DynamicPalette.light().accent,
              //     title: const Text('Қазақша'),
              //     onTap: () {
              //       EasyLocalization.of(context)?.setLocale(
              //         const Locale('kk', 'KZ'),
              //       );
              //     }),
              // const SizedBox(
              //   height: 12,
              // ),
              ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  tileColor: EasyLocalization.of(context)?.currentLocale ==
                          const Locale('ru', 'RU')
                      ? Colors.black54
                      : DynamicPalette.light().accent,
                  title: const Text('Русский'),
                  onTap: () {
                    EasyLocalization.of(context)?.setLocale(
                      const Locale('ru', 'RU'),
                    );
                  }),
              const SizedBox(
                height: 12,
              ),
              ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  tileColor: EasyLocalization.of(context)?.currentLocale ==
                          const Locale('en', 'US')
                      ? Colors.black54
                      : DynamicPalette.light().accent,
                  title: const Text('English'),
                  onTap: () {
                    EasyLocalization.of(context)?.setLocale(
                      const Locale('en', 'US'),
                    );
                  })
            ],
          ));
}

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.router.push(PublicCourseRoute(id: course.id));
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                                Text(course.title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                Text(
                                  course.channel.title,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic),
                                ),
                                Text(course.description ?? '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic)),
                                const Spacer(),
                                Text(
                                  DateFormat('dd.MM.yyy')
                                      .format(course.createdAt),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ]))),
                  if (course.price == Decimal.zero)
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(LocaleKeys.free.tr()),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(NumberFormat.currency(locale: 'kk_KZ')
                          .format(course.price.toDouble())),
                    )
                ]))));
  }
}
