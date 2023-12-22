import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/models/pdf_fragment.dart';
import '../../../../domain/models/subject.dart';
import '../../../player/pdf_player_widget.dart';

import 'bloc/pdf_subject_player_bloc.dart';

@RoutePage()
class PdfSubjectPlayerScreen extends StatelessWidget {
  const PdfSubjectPlayerScreen({super.key, required this.subject});

  final Subject subject;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PdfSubjectPlayerBloc(subject),
      child: BlocBuilder<PdfSubjectPlayerBloc, PdfSubjectPlayerState>(
        builder: (context, state) => state.map(
            pending: (_) => const PendingView(),
            screenState: (state) =>
                PdfSubjectPlayerView(fragments: state.fragments),
            loadingError: (_) => const LoadingErrorView()),
      ),
    );
  }
}

class PendingView extends StatelessWidget {
  const PendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class LoadingErrorView extends StatelessWidget {
  const LoadingErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class PdfSubjectPlayerView extends StatefulWidget {
  const PdfSubjectPlayerView({super.key, required this.fragments});

  final List<PdfFragment> fragments;

  @override
  State<PdfSubjectPlayerView> createState() => _PdfSubjectPlayerViewState();
}

class _PdfSubjectPlayerViewState extends State<PdfSubjectPlayerView> {
  double opacityLevel = 0.0;
  double leftOpacity = 0.0;
  double rightOpacity = 0.0;

  late PdfFragment fragment;
  late bool isLast;

  late int numberOfFragments;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    numberOfFragments = widget.fragments.length;
    fragment = widget.fragments.first;
    isLast = currentIndex == numberOfFragments - 1;
    if (fragment.audioPath == null) {
      _playNextFragment();
    }
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

  void _playNextFragment() {
    if (currentIndex < numberOfFragments - 1) {
      setState(() {
        currentIndex++;
        fragment = widget.fragments.elementAt(currentIndex);
        isLast = currentIndex == numberOfFragments - 1;
        if (fragment.audioPath == null) {
          _playNextFragment();
        }
      });
    } else {
      setState(() {
        currentIndex = 0;
        fragment = widget.fragments.first;
        isLast = currentIndex == numberOfFragments - 1;
      });
    }
  }

  void _playPreviousFragment() {
    setState(() {
      currentIndex--;
      fragment = widget.fragments.elementAt(currentIndex);
      isLast = currentIndex == numberOfFragments - 1;
      if (fragment.audioPath == null) {
        _playPreviousFragment();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(
          height: height,
          width: width,
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                  height: height - 40,
                  width: width - 40,
                  child: Center(
                      child: fragment.imagePath != ''
                          ? CachedNetworkImage(imageUrl: fragment.imagePath!)
                          : const SizedBox()))
            ],
          )),
      if (fragment.audioPath != null)
        AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: opacityLevel,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: MouseRegion(
                onHover: _showPlayer,
                onExit: _hidePlayer,
                child: Container(
                  color: Colors.black,
                  height: 200,
                  width: 1000,
                  child: Center(
                    child: SizedBox(
                      width: 320,
                      height: 240,
                      child: Center(
                          child: PdfPlayerWidget(
                              fragment: fragment,
                              isLast: isLast,
                              onEnd: () {
                                _playNextFragment();
                              })),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      !isLast
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
                          _playNextFragment();
                        },
                      ),
                    ),
                  )),
            )
          : const SizedBox(),
      currentIndex != 0
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
                          _playPreviousFragment();
                        },
                      ),
                    ),
                  )),
            )
          : const SizedBox(),
      Positioned(
          right: 10,
          top: 10,
          child: FloatingActionButton(
            heroTag: 'close',
            backgroundColor: Colors.black54,
            foregroundColor: Colors.white10,
            onPressed: () async {
              context.router.pop();
            },
            tooltip: 'Закрыть',
            child: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          )),
    ]);
  }
}
