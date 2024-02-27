import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:introbox/generated/locale_keys.g.dart';
import 'package:introbox/presentation/auto_router/app_router.dart';
import 'package:introbox/presentation/common/common_loading_error_widget.dart';
import 'package:introbox/presentation/screens/main/bloc/main_bloc.dart';
import 'package:introbox/presentation/utils/responsive.dart';

import '../../../domain/models/presentation.dart';
import '../../values/dynamic_palette.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MainBloc(),
        child: BlocConsumer<MainBloc, MainState>(
          listener: (context, state) => state.mapOrNull(),
          buildWhen: ((previous, current) => current.maybeMap(
              orElse: () => false,
              screenState: (state) => true,
              initialLoadingError: (_) => true)),
          builder: ((context, state) => state.maybeMap(
              orElse: () =>
                  throw UnsupportedError('state not supporting building'),
              initialLoadingError: (_) => Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    //      title: Text(LocaleKeys.presentations.tr())
                  ),
                  body: CommonLoadingErrorWidget(
                      onPressed: () => BlocProvider.of<MainBloc>(context)
                          .add(const MainEvent.initialDataRequested()))),
              screenState: (state) => Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    title: Row(
                      children: [
                        Text(LocaleKeys.presentations.tr()),
                        TextButton(
                          onPressed: () {
                            context.router.replace(const CoursesRoute());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2, left: 12),
                            child: Text(LocaleKeys.courses.tr(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                          ),
                        )
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
                              BlocProvider.of<MainBloc>(context)
                                  .add(const MainEvent.initialDataRequested());
                            },
                            icon: const Icon(Icons.refresh_rounded)),
                      if (state.isAuthorized)
                        if (Responsive.isMobile(context))
                          IconButton(
                              onPressed: () => context.router
                                  .push(const PresentationsRoute()),
                              icon:
                                  const Icon(Icons.cast_for_education_outlined))
                        else
                          TextButton(
                              onPressed: () => context.router
                                  .push(const PresentationsRoute()),
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
                  body: state.isPending
                      ? const Center(child: CircularProgressIndicator())
                      : state.presentations.isEmpty
                          ? Center(
                              child:
                                  Text(LocaleKeys.presentationsNotFound.tr()),
                            )
                          : RefreshIndicator(
                              onRefresh: () async =>
                                  BlocProvider.of<MainBloc>(context).add(
                                      const MainEvent.initialDataRequested()),
                              child: ListView.separated(
                                itemCount: state.presentations.length,
                                padding: EdgeInsets.all(
                                    Responsive.isMobile(context) == false
                                        ? 24
                                        : 12),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  height: 12,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return PresentationItem(
                                    presentation:
                                        state.presentations.elementAt(index),
                                  );
                                },
                              ),
                            )))),
        ));
  }

  showLocaleDialog(BuildContext context, Locale? currentLocale) {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              contentPadding: const EdgeInsets.all(24),
              children: [
                ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    tileColor: EasyLocalization.of(context)?.currentLocale ==
                            const Locale('kk', 'KZ')
                        ? Colors.black54
                        : DynamicPalette.light().accent,
                    title: const Text('Қазақша'),
                    onTap: () {
                      EasyLocalization.of(context)?.setLocale(
                        const Locale('kk', 'KZ'),
                      );
                    }),
                const SizedBox(
                  height: 12,
                ),
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
}

class PresentationItem extends StatelessWidget {
  const PresentationItem({
    super.key,
    required this.presentation,
  });

  final Presentation presentation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
            PublicPresentationRoute(id: presentation.id, openedFromApp: true));
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (presentation.firstImage != null)
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                        width: 100,
                        height: 100,
                        imageUrl: presentation.firstImage!)),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        presentation.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),

                      Text(
                        presentation.channel!.title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),

                      //     if (presentation.description != null)
                      Text(
                        presentation.description ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                      ),
                      const Spacer(),
                      Text(
                        DateFormat('dd.MM.yyy').format(presentation.createdAt),
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
