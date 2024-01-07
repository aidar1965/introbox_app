import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';
import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';
import 'package:moki_tutor/presentation/theme/dynamic_theme.dart';

import '../../../../domain/models/presentation.dart';

import '../../auto_router/app_router.dart';
import '../../common/common_functions.dart';

import 'bloc/presentations_bloc.dart';

@RoutePage()
class PresentationsScreen extends StatelessWidget {
  const PresentationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PresentationsBloc(),
      child: BlocConsumer<PresentationsBloc, PresentationsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        buildWhen: ((previous, current) => current.maybeMap(
            orElse: () => false,
            pending: (_) => true,
            screenState: (_) => true,
            loadingError: (_) => true)),
        builder: (context, state) => state.maybeMap(
          orElse: () =>
              throw UnsupportedError('PresentationsScreen unsupported state'),
          pending: (_) => Scaffold(
              drawer: NavigationDrawer(),
              appBar: AppBar(
                  title: const Text(
                'Список презентаций',
              )),
              body: const Center(
                child: CircularProgressIndicator(),
              )),
          screenState: (state) => Scaffold(
              drawer: NavigationDrawer(),
              appBar: AppBar(
                title: const Text(
                  'Список презентаций',
                ),
                actions: [
                  TextButton.icon(
                    icon: Icon(Icons.redo_rounded),
                    label: Text('Обновить страницу'),
                    style: TextButton.styleFrom(
                        iconColor: DynamicTheme.paletteOf(context).alwaysWhite,
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
                  TextButton.icon(
                    icon: Icon(Icons.picture_as_pdf),
                    label: Text('Добавить из PDF'),
                    style: TextButton.styleFrom(
                        iconColor: DynamicTheme.paletteOf(context).alwaysWhite,
                        foregroundColor:
                            DynamicTheme.paletteOf(context).alwaysWhite,
                        textStyle: TextStyle(
                            color:
                                DynamicTheme.paletteOf(context).alwaysWhite)),
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
                  TextButton.icon(
                    icon: Icon(Icons.image),
                    label: Text('Добавить из изображений'),
                    style: TextButton.styleFrom(
                        iconColor: DynamicTheme.paletteOf(context).alwaysWhite,
                        foregroundColor:
                            DynamicTheme.paletteOf(context).alwaysWhite,
                        textStyle: TextStyle(
                            color:
                                DynamicTheme.paletteOf(context).alwaysWhite)),
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
              body: _PresentationList(presentations: state.presentations)),
          loadingError: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Список тем',
                ),
              ),
              floatingActionButton: IconButton(
                  onPressed: () async {
                    await CommonFunctions.showStyledDialog(
                        context: context,
                        message: 'Выберите способ создания темы',
                        positiveButtonText: 'Из PDF файла',
                        negativeButtonText: 'Из изображений',
                        onPositiveTap: () {
                          if (context.mounted) {
                            context.router
                                .push(const PdfCreatePresentationRoute());
                          }
                        },
                        onNegativeTap: () {
                          if (context.mounted) {
                            context.router.push(ImageCreatePresentationRoute());
                          }
                        });
                  },
                  icon: const Icon(Icons.add)),
              body: const _LoadingError()),
        ),
      ),
    );
  }
}

class _PresentationList extends StatelessWidget {
  const _PresentationList({super.key, required this.presentations});

  final List<Presentation> presentations;

  @override
  Widget build(BuildContext context) {
    return presentations.isNotEmpty
        ? ListView.separated(
            itemCount: presentations.length,
            padding: const EdgeInsets.all(24),
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (BuildContext context, int index) {
              return PresentationItem(
                presentation: presentations.elementAt(index),
                onDeleteConfirm: () =>
                    BlocProvider.of<PresentationsBloc>(context).add(
                        PresentationsEvent.deletePresentation(
                            presentations.elementAt(index).id)),
              );
            },
          )
        : Center(
            child: Text('Список презентаций пуст'),
          );
  }
}

class PresentationItem extends StatelessWidget {
  const PresentationItem(
      {super.key, required this.presentation, required this.onDeleteConfirm});

  final Presentation presentation;
  final Function() onDeleteConfirm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
            height: 100,
            width: 100,
            child: CachedNetworkImage(imageUrl: presentation.firstImage)),
        Expanded(child: Text(presentation.title)),
        const SizedBox(
          width: 24,
        ),
        Expanded(child: Text(presentation.description ?? '')),
        Text(DateFormat('dd.MM.yyy kk:mm').format(presentation.createdAt)),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () =>
              context.router.push(PresentationRoute(id: presentation.id)),
          icon: const Icon(Icons.play_arrow_rounded),
        ),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () async {
            final result = await context.router
                .push(EditPresentationRoute(presentation: presentation));
            if (context.mounted) {
              if (result == true) {
                BlocProvider.of<PresentationsBloc>(context)
                    .add(const PresentationsEvent.initialDataRequested());
              }
            }
          },
          icon: const Icon(Icons.edit),
        ),
        const SizedBox(
          width: 24,
        ),
        IconButton(
          onPressed: () => _showDeleteConfirmDialog(
              context, presentation.id, onDeleteConfirm),
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }

  Future<void> _showDeleteConfirmDialog(
      BuildContext context, int id, Function() onDeleteConfirmed) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Удаление темы'),
          content: Text('Вы уверены, что хотите удалить таму?'),

          actions: <Widget>[
            TextButton(
              child: const Text('Отмена'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Удалить'),
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

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text(
              'Профиль',
              style: context.style16w400$text1,
            ),
            onTap: () {
              context.router.pop();
              context.router.push(const ProfileRoute());
            },
          ),
        ],
      ),
    );
  }
}
