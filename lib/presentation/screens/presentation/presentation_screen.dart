import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/common_audio_player.dart';

import '../../common/common_elevated_button.dart';
import 'bloc/presentation_bloc.dart';

@RoutePage()
class PresentationScreen extends StatelessWidget {
  const PresentationScreen({super.key, @pathParam required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PresentationBloc(id),
        child: BlocBuilder<PresentationBloc, PresentationState>(
            builder: (context, state) => state.map(
                screenState: (state) => _ScreenView(
                      imageUrl: state.selectedFragment.imagePath!,
                      audioUrl: state.selectedFragment.audioPath,
                      duration: state.selectedFragment.duration,
                      isFirst: state.isFirst,
                      isLast: state.isLast,
                      presentationTitle: state.presentationTitle,
                      presentationDescription: state.presentationDescription,
                      fragmentTitle: state.selectedFragment.title,
                      fragmentDescription: state.selectedFragment.description,
                    ),
                loadingError: (_) => const _LoadingErrorView(),
                pending: (_) => const _PendingView())));
  }
}

class _ScreenView extends StatefulWidget {
  const _ScreenView(
      {super.key,
      required this.imageUrl,
      this.audioUrl,
      this.duration,
      required this.isFirst,
      required this.isLast,
      required this.fragmentTitle,
      this.fragmentDescription,
      required this.presentationTitle,
      this.presentationDescription});

  final String imageUrl;
  final String? audioUrl;
  final int? duration;
  final bool isFirst;
  final bool isLast;
  final String fragmentTitle;
  final String? fragmentDescription;
  final String presentationTitle;
  final String? presentationDescription;

  @override
  State<_ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<_ScreenView> {
  double opacityLevel = 0.0;
  double leftOpacity = 0.0;
  double rightOpacity = 0.0;

  late double width;
  late double height;
  String? audioUrl;

  @override
  void initState() {
    print('76');
    super.initState();
    audioUrl = widget.audioUrl;
    // if (audioUrl != null) {
    //   setState(() {
    //     opacityLevel = 0.5;
    //   });
    // }
  }

  void _showPlayer(PointerEvent details) {
    setState(() => opacityLevel = 0.5);
  }

  void _hidePlayer(PointerEvent details) {
    setState(() => opacityLevel = 0.0);
  }

  void _showLeft(PointerEvent details) {
    setState(() => leftOpacity = 0.5);
  }

  void _hideLeft(PointerEvent details) {
    setState(() => leftOpacity = 0.0);
  }

  void _showRight(PointerEvent details) {
    setState(() => rightOpacity = 0.5);
  }

  void _hideRight(PointerEvent details) {
    setState(() => rightOpacity = 0.0);
  }

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(_ScreenView oldWidget) {
    audioUrl = widget.audioUrl;
    print('121 $audioUrl');
    leftOpacity = 0.0;
    rightOpacity = 0.0;

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
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
                        child: CachedNetworkImage(imageUrl: widget.imageUrl)))
              ],
            )),
        AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: opacityLevel,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: MouseRegion(
                      onHover: _showPlayer,
                      onExit: _hidePlayer,
                      child: Container(
                        color: Colors.black,
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 1000),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child:
                                        ListView(shrinkWrap: true, children: [
                                      Text(widget.presentationTitle,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          )),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Text(widget.presentationDescription ?? '',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          )),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Text(widget.fragmentTitle,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          )),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Text(widget.fragmentDescription ?? '',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          )),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                    ]),
                                  ),
                                  if (audioUrl != null)
                                    Container(
                                      color: Colors.black,
                                      height: 200,
                                      child: Center(
                                        child: SizedBox(
                                          width: 320,
                                          height: 240,
                                          child: Center(
                                              child: CommonAudioPlayer(
                                            audioUrl: audioUrl!,
                                            audioDurationInSeconds:
                                                widget.duration!,
                                            onEnd: () {
                                              if (widget.isLast != true) {
                                                BlocProvider.of<
                                                            PresentationBloc>(
                                                        context)
                                                    .add(const PresentationEvent
                                                        .nextSlideClicked());
                                              }
                                            },
                                          )),
                                        ),
                                      ),
                                    ),
                                ]),
                          ),
                        ),
                      ),
                    )))),
        !widget.isLast
            ? AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: rightOpacity,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: MouseRegion(
                    onHover: _showRight,
                    onExit: _hideRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: FloatingActionButton(
                        heroTag: 'right',
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                        child: const Icon(Icons.arrow_right,
                            color: Colors.black, size: 48),
                        onPressed: () {
                          BlocProvider.of<PresentationBloc>(context)
                              .add(const PresentationEvent.nextSlideClicked());
                        },
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
        !widget.isFirst
            ? AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: leftOpacity,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: MouseRegion(
                      onHover: _showLeft,
                      onExit: _hideLeft,
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
                            BlocProvider.of<PresentationBloc>(context).add(
                                const PresentationEvent.previousSlideClicked());
                          },
                        ),
                      ),
                    )),
              )
            : const SizedBox()
      ]),
    );
  }
}

class _LoadingErrorView extends StatelessWidget {
  const _LoadingErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Не удалось загрузить данные. Проверьте Интернет соединение и попробуйте еще раз',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              CommonElevatedButton(
                text: 'Повторить',
                onPressed: () {
                  BlocProvider.of<PresentationBloc>(context)
                      .add(const PresentationEvent.initialDataRequested());
                },
              )
            ],
          ),
        ),
      ),
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
