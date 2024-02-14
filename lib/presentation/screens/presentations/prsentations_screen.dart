import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:moki_tutor/presentation/common/common_loading_error_widget.dart';
import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';
import 'package:moki_tutor/presentation/theme/dynamic_theme.dart';

import '../../../../domain/models/presentation.dart';

import '../../auto_router/app_router.dart';
import '../../common/common_functions.dart';

///import '../../common/common_navigation_drawer.dart';
import '../../common/common_text_field.dart';
import '../../utils/responsive.dart';
import 'bloc/presentations_bloc.dart';

@RoutePage()
class PresentationsScreen extends StatelessWidget {
  const PresentationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PresentationsBloc(),
      child: BlocConsumer<PresentationsBloc, PresentationsState>(
        listener: (context, state) => state.mapOrNull(
          requestError: (state) => CommonFunctions.showMessage(
              context,
              state.errorText ?? 'Во время запроса призошла ошибка',
              Reason.error),
          requestSuccess: (state) => CommonFunctions.showMessage(context,
              state.message ?? 'Данные успешно сохранены', Reason.neutral),
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
                title: const Text(
                  'Презентации',
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
                    const Text(
                      'Презентации',
                    ),
                    Spacer(),
                    if (Responsive.isMobile(context) == false) ...[
                      TextButton(
                          onPressed: () => context.router.push(ChannelsRoute()),
                          child: Text(
                            'Каналы',
                            style: TextStyle(color: Colors.white),
                          )),
                      TextButton(
                          onPressed: () =>
                              context.router.push(CompaniesRoute()),
                          child: Text(
                            'Компании',
                            style: TextStyle(color: Colors.white),
                          ))
                    ] else
                      PopupMenuButton(
                        itemBuilder: (BuildContext bc) {
                          return [
                            PopupMenuItem(
                              child: Text(
                                'Каналы',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () =>
                                  context.router.push(const ChannelsRoute()),
                            ),
                            PopupMenuItem(
                              child: Text(
                                'Компании',
                                style: TextStyle(color: Colors.black),
                              ),
                              onTap: () =>
                                  context.router.push(const CompaniesRoute()),
                            ),
                          ];
                        },
                      )
                  ],
                ),
                actions: [
                  IconButton(
                    tooltip: 'Обновить страницу',
                    icon: const Icon(Icons.refresh),
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
                  IconButton(
                    tooltip: 'Новая презентация из PDF',
                    icon: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.picture_as_pdf), Icon(Icons.add)],
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
                    tooltip: 'Новая презентация из изображений',
                    icon: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.image), Icon(Icons.add)],
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
              body: _PresentationList(presentations: state.presentations)),
          loadingError: (_) => Scaffold(
              appBar: AppBar(
                leading: BackButton(onPressed: () {
                  context.router.push(const MainRoute());
                }),
                title: const Text(
                  'Презентации',
                ),
              ),
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
            padding: EdgeInsets.all(Responsive.isMobile(context) ? 12 : 24),
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
        : const Center(
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
    return MouseRegion(
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
                if (presentation.firstImage != null)
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: CachedNetworkImage(
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
                                  child: Text(presentation.title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
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
                            ]))),
                const SizedBox(
                  width: 12,
                ),
                // if (Responsive.isMobile(context) == false) ...[
                //   Expanded(child: Text(presentation.description ?? '')),
                //   const SizedBox(
                //     width: 12,
                //   ),
                //   Text(presentation.channel.title),
                //   const SizedBox(
                //     width: 12,
                //   ),
                //   Text(
                //     DateFormat('dd.MM.yyy kk:mm')
                //         .format(presentation.createdAt),
                //     style: context.style12w400$text3Grey,
                //   ),
                //   const SizedBox(
                //     width: 12,
                //   )
                // ],
                IconButton(
                  tooltip: 'Воспроизвести',
                  onPressed: () => context.router
                      .push(PresentationRoute(id: presentation.id)),
                  icon: const Icon(Icons.play_arrow_rounded),
                ),
                IconButton(
                  tooltip: 'Редактировать',
                  onPressed: () async {
                    final result = await context.router
                        .push(EditPresentationRoute(id: presentation.id));
                    if (context.mounted) {
                      if (result == true) {
                        BlocProvider.of<PresentationsBloc>(context).add(
                            const PresentationsEvent.initialDataRequested());
                      }
                    }
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  tooltip: 'Удалить',
                  onPressed: () => _showDeleteConfirmDialog(
                      context, presentation.id, onDeleteConfirm),
                  icon: const Icon(Icons.delete),
                ),
                IconButton(
                    tooltip: presentation.isPublished
                        ? 'Снять публикацию'
                        : 'Опубликовать',
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
                    tooltip: 'Ссылки',
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => Dialog.fullscreen(
                                child:
                                    _LinkView(presentationId: presentation.id),
                              ));
                    },
                    icon: const Icon(Icons.share)),
                IconButton(
                    tooltip: presentation.hasPassword
                        ? 'Защищено паролем'
                        : 'Без пароля',
                    onPressed: () async {
                      final passwordController = TextEditingController();
                      final confirmPasswordController = TextEditingController();
                      final result = await showDialog(
                          context: context,
                          builder: (context) => SizedBox(
                                child: SimpleDialog(
                                  contentPadding: EdgeInsets.all(
                                      Responsive.isMobile(context) ? 12 : 24),
                                  children: [
                                    const SizedBox(
                                      width: 200,
                                      child: Text(
                                          'При вводе пароля просмотр презентации при публикации будет защищен паролем'),
                                    ),
                                    const SizedBox(height: 12),
                                    CommonTextField(
                                        controller: passwordController,
                                        obscureText: true,
                                        labelText: 'Пароль'),
                                    const SizedBox(height: 12),
                                    CommonTextField(
                                        controller: confirmPasswordController,
                                        obscureText: true,
                                        labelText: 'Повторите пароль'),
                                    const SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        TextButton(
                                            onPressed: () =>
                                                context.router.pop(),
                                            child: const Text('Отмена')),
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
                                            child: const Text('Сохранить')),
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
                            : Colors.grey)),
              ],
            )));
  }

  Future<void> _showDeleteConfirmDialog(
      BuildContext context, String id, Function() onDeleteConfirmed) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Удаление презентации'),
          content: const Text('Вы уверены, что хотите удалить презентацию?'),

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

class _LinkView extends StatelessWidget {
  const _LinkView({super.key, required this.presentationId});

  final String presentationId;

  @override
  Widget build(BuildContext context) {
    final linkText = '''https://introbox.app/presentation/$presentationId''';
    final htmlText = '''<!DOCTYPE html>
      <html>
        <head>
          <title>Презентация</title> 
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
                'Ссылка на презентацию',
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
                'Код HTML страницы Для Вашего сайта с отображением презентации',
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
