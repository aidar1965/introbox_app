import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbox/presentation/common/common_loading_error_widget.dart';

import 'dart:html' as html;
import 'package:path/path.dart' as p;

import '../../../domain/models/course.dart';
import '../../../domain/models/pdf_fragment.dart';

import '../../../generated/locale_keys.g.dart';
import '../../common/common_elevated_button.dart';
import '../../common/common_functions.dart';
import '../../common/common_text_field.dart';
import 'bloc/public_presentation_bloc.dart';
import 'public_audio_player.dart';

@RoutePage()
class PublicPresentationScreen extends StatelessWidget {
  const PublicPresentationScreen(
      {super.key, @pathParam this.id, this.openedFromApp, this.course});

  final String? id;
  final bool? openedFromApp;
  final Course? course;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PublicPresentationBloc(id),
        child: BlocConsumer<PublicPresentationBloc, PublicPresentationState>(
            listener: (context, state) => state.mapOrNull(
                  requestError: (state) => CommonFunctions.showMessage(
                      context,
                      state.errorText ?? LocaleKeys.commonRequestError.tr(),
                      Reason.error),
                ),
            buildWhen: (previous, current) => current.maybeMap(
                  orElse: () => true,
                  requestError: (_) => false,
                ),
            builder: (context, state) => state.maybeMap(
                orElse: () =>
                    throw UnsupportedError('State $state not supporting build'),
                idNotSpecified: (state) => const SizedBox(),
                passwordForm: (_) => const _PasswordForm(),
                notFound: (_) => const _NotFoundView(),
                screenState: (state) => _ScreenView(
                    isFirst: state.isFirst,
                    isLast: state.isLast,
                    presentationTitle: state.presentationTitle,
                    presentationDescription: state.presentationDescription,
                    pdfFile: state.pdfFile,
                    fragments: state.fragments,
                    selectedFragment: state.selectedFragment,
                    channelTitle: state.channel?.title ?? '',
                    channelWebsite: state.channel?.company?.website,
                    openedFromApp: openedFromApp == true,
                    course: course),
                loadingError: (state) =>
                    CommonLoadingErrorWidget(onPressed: () {
                      BlocProvider.of<PublicPresentationBloc>(context).add(
                          const PublicPresentationEvent.initialDataRequested());
                    }),
                pending: (_) => const _PendingView(),
                checkHasPasswordError: (state) =>
                    CommonLoadingErrorWidget(onPressed: () {
                      BlocProvider.of<PublicPresentationBloc>(context).add(
                          const PublicPresentationEvent
                              .checkPresentationHasPassword());
                    }))));
  }
}

class _ScreenView extends StatefulWidget {
  const _ScreenView(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.selectedFragment,
      required this.presentationTitle,
      this.presentationDescription,
      this.pdfFile,
      required this.fragments,
      required this.channelTitle,
      this.channelWebsite,
      required this.openedFromApp,
      this.course});

  final bool isFirst;
  final bool isLast;

  final String presentationTitle;
  final String? presentationDescription;
  final String? pdfFile;
  final List<PdfFragment> fragments;
  final PdfFragment selectedFragment;
  final String channelTitle;
  final String? channelWebsite;
  final bool openedFromApp;
  final Course? course;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  double opacityLevel = 0.0;
  double leftOpacity = 0.0;
  double rightOpacity = 0.0;
  double infoOpacity = 0.0;

  late double width;
  late double height;
  String? audioUrl;
  bool showControls = false;
  late bool isFirstAudio;
  late bool isTitleOverImage;

  late Stream<bool> clickScreenStream;

  StreamController<bool> controller = StreamController<bool>();

  @override
  void initState() {
    super.initState();

    isTitleOverImage = widget.selectedFragment.isTitleOverImage;
    audioUrl = widget.selectedFragment.audioPath;
    if (audioUrl != null) {
      isFirstAudio = true;
    } else {
      isFirstAudio = false;
    }

    clickScreenStream = controller.stream;
    clickScreenStream.listen((event) {
      setState(() {
        showControls = !showControls;
      });
      if (showControls) {
        opacityLevel = 0.5;
        leftOpacity = 0.5;
        rightOpacity = 0.5;
      } else {
        opacityLevel = 0;
        leftOpacity = 0;
        rightOpacity = 0;
      }
    });
    if (audioUrl != null) {
      setState(() {
        showControls = true;
        opacityLevel = 0.5;
      });
    }
  }

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(_ScreenView oldWidget) {
    opacityLevel = 0;
    leftOpacity = 0;
    rightOpacity = 0;
    audioUrl = widget.selectedFragment.audioPath;
    isTitleOverImage = widget.selectedFragment.isTitleOverImage;
    if (showControls) {
      controller.add(showControls);
    }
    if (isFirstAudio == true && audioUrl != null) {
      isFirstAudio = false;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => controller.add(showControls),
        onHorizontalDragEnd: (dragEndDetails) {
          if (dragEndDetails.primaryVelocity! < 0) {
            BlocProvider.of<PublicPresentationBloc>(context)
                .add(const PublicPresentationEvent.nextSlideClicked());
          } else if (dragEndDetails.primaryVelocity! > 0) {
            BlocProvider.of<PublicPresentationBloc>(context)
                .add(const PublicPresentationEvent.previousSlideClicked());
          }
        },
        child: Material(
          child: Stack(children: [
            Container(
                height: height,
                width: width,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(
                        height: height,
                        width: width,
                        child: Center(
                            child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (widget.selectedFragment.imagePath != null)
                              CachedNetworkImage(
                                imageUrl: widget.selectedFragment.imagePath!,
                                progressIndicatorBuilder:
                                    (context, _, progress) =>
                                        const CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            else
                              Center(
                                  child: Text(
                                widget.selectedFragment.title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),
                            if (isTitleOverImage)
                              Positioned(
                                  bottom: 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity: 0.5,
                                        child: DecoratedBox(
                                            decoration: const BoxDecoration(
                                                color: Colors.black),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                widget.selectedFragment.title,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ))
                          ],
                        )))
                  ],
                )),
            Row(children: [
              const Spacer(),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: opacityLevel,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            color: Colors.black,
                            height: audioUrl != null ? 134 : 0,
                            child: Center(
                                child: PublicAudioPlayer(
                              isFirstAudio: isFirstAudio,
                              audioUrl: audioUrl,
                              audioDurationInSeconds:
                                  widget.selectedFragment.duration,
                              onEnd: () {
                                if (widget.isLast != true) {
                                  BlocProvider.of<PublicPresentationBloc>(
                                          context)
                                      .add(const PublicPresentationEvent
                                          .nextSlideClicked());
                                }
                              },
                              onClicked: () {
                                controller.add(showControls);
                              },
                            )),
                          ),
                        ]),
                  ),
                ),
              ),
              const Spacer(),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.isFirst == false
                    ? MouseRegion(
                        onHover: (_) {
                          setState(() {
                            leftOpacity = 0.5;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            leftOpacity = 0.0;
                          });
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: leftOpacity,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: FloatingActionButton(
                                heroTag: 'left',
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.grey,
                                child: const Icon(
                                  Icons.arrow_left,
                                  color: Colors.black,
                                  size: 48,
                                ),
                                onPressed: () {
                                  BlocProvider.of<PublicPresentationBloc>(
                                          context)
                                      .add(const PublicPresentationEvent
                                          .previousSlideClicked());
                                },
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
                widget.isLast == false
                    ? MouseRegion(
                        onHover: (_) {
                          setState(() {
                            rightOpacity = 0.5;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            rightOpacity = 0.0;
                          });
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: rightOpacity,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: FloatingActionButton(
                                  heroTag: 'right',
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.grey,
                                  child: const Icon(Icons.arrow_right,
                                      color: Colors.black, size: 48),
                                  onPressed: () {
                                    BlocProvider.of<PublicPresentationBloc>(
                                            context)
                                        .add(const PublicPresentationEvent
                                            .nextSlideClicked());
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () async {
                          final result = await showDialog(
                              context: context,
                              builder: (context) => Dialog.fullscreen(
                                    backgroundColor: Colors.black,
                                    child: InfoView(
                                        fragments: widget.fragments,
                                        selectedFragment:
                                            widget.selectedFragment,
                                        title: widget.presentationTitle,
                                        description:
                                            widget.presentationDescription,
                                        pdfFile: widget.pdfFile,
                                        channelTitle: widget.channelTitle,
                                        channelWebsite: widget.channelWebsite,
                                        course: widget.course),
                                  ));
                          if (result is int) {
                            if (context.mounted) {
                              BlocProvider.of<PublicPresentationBloc>(context)
                                  .add(PublicPresentationEvent.fragmentClicked(
                                      result));
                            }
                          }
                        },
                        icon: const Icon(Icons.info, color: Colors.white)),
                    if (widget.openedFromApp)
                      IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(Icons.close),
                          color: Colors.white)
                  ],
                ))
          ]),
        ));
  }
}

class _NotFoundView extends StatelessWidget {
  const _NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text(LocaleKeys.presentationsNotFound.tr())),
    );
  }
}

class _PendingView extends StatelessWidget {
  const _PendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _PasswordForm extends StatelessWidget {
  const _PasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Material(
      child: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonTextField(
                controller: controller,
                labelText: LocaleKeys.password.tr(),
                obscureText: true,
              ),
              const SizedBox(height: 12),
              CommonElevatedButton(
                text: LocaleKeys.buttonSend.tr(),
                onPressed: () {
                  BlocProvider.of<PublicPresentationBloc>(context).add(
                      PublicPresentationEvent.sendPassword(
                          password: controller.text));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfoView extends StatelessWidget {
  const InfoView({
    super.key,
    required this.fragments,
    required this.selectedFragment,
    required this.title,
    this.description,
    this.pdfFile,
    required this.channelTitle,
    this.channelWebsite,
    this.course,
  });

  final List<PdfFragment> fragments;
  final PdfFragment selectedFragment;
  final String title;
  final String? description;
  final String? pdfFile;
  final String channelTitle;
  final String? channelWebsite;
  final Course? course;

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (pdfFile != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        p.basename(pdfFile!),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                      const SizedBox(width: 24),
                      IconButton(
                          onPressed: () => downloadFile(pdfFile!),
                          icon: const Icon(
                            Icons.download,
                            color: Colors.white,
                          ))
                    ],
                  ),
                const SizedBox(height: 24),
                Text(
                  course == null
                      ? '${LocaleKeys.channel.tr()} $channelTitle'
                      : '${LocaleKeys.course.tr()} ${course!.title}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                if (channelWebsite != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    '${LocaleKeys.channel.tr()} $channelTitle',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
                const SizedBox(height: 24),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                if (description != null) ...[
                  const SizedBox(height: 24),
                  Text(
                    description!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
                const SizedBox(height: 32),
                ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: fragments.length,
                    itemBuilder: (context, index) => ListTile(
                          selected: fragments.elementAt(index).id ==
                              selectedFragment.id,
                          selectedTileColor:
                              const Color.fromARGB(255, 5, 35, 88),
                          onTap: () {
                            context.router.pop(index);
                          },
                          title: Text(
                            fragments.elementAt(index).title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          subtitle:
                              fragments.elementAt(index).description != null
                                  ? Text(
                                      fragments.elementAt(index).description!,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    )
                                  : null,
                        )),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.close, color: Colors.white)))
      ],
    );
  }
}
