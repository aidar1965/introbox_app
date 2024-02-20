import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moki_tutor/presentation/auto_router/app_router.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';
import 'package:moki_tutor/presentation/screens/main/bloc/main_bloc.dart';
import 'package:moki_tutor/presentation/utils/responsive.dart';

import '../../../domain/models/presentation.dart';

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
                      leading: const SizedBox(),
                      title: const Text('Презентации')),
                  body: CommonLoadingErrorWidget(
                      onPressed: () => BlocProvider.of<MainBloc>(context)
                          .add(const MainEvent.initialDataRequested()))),
              screenState: (state) => Scaffold(
                  appBar: AppBar(
                    leading: const SizedBox(),
                    title: Row(
                      children: [
                        const Text('Презентации'),
                        TextButton(
                          onPressed: () {
                            context.router.replace(const CoursesRoute());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2, left: 12),
                            child: Text('Курсы',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                          ),
                        )
                      ],
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<MainBloc>(context)
                                .add(const MainEvent.initialDataRequested());
                          },
                          icon: const Icon(Icons.refresh_rounded)),
                      if (state.isAuthorized)
                        TextButton(
                            onPressed: () =>
                                context.router.push(const PresentationsRoute()),
                            child: Text(
                              'Студия',
                              style: TextStyle(color: Colors.white),
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
                              child: Text('Презентаций не найдено'),
                            )
                          : ListView.separated(
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
                            )))),
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
                      Expanded(
                        child: Text(
                          presentation.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      //     if (presentation.description != null)
                      Expanded(
                        child: Text(
                          presentation.description!,
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
                            .format(presentation.createdAt),
                        style: TextStyle(
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
