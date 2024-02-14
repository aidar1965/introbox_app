import 'dart:async';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../domain/models/pdf_fragment.dart';

enum PlayerStatus { pause, play, stop }

class PdfPlayerWidget extends StatefulWidget {
  const PdfPlayerWidget({
    Key? key,
    this.fragment,
    this.onEnd,
    this.isLast,
    this.fragmentData,
  }) : super(key: key);

  final PdfFragment? fragment;
  final ({String? audioPath, int? duration})? fragmentData;
  final bool? isLast;

  final void Function()? onEnd;

  @override
  State<PdfPlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PdfPlayerWidget> {
  String? recordDuration;
  final AudioPlayer player = AudioPlayer();

  PdfFragment? fragment;

  StreamSubscription<AudioEvent>? audioEventSubscription;

  int progress = 0;
  PlayerStatus playerStatus = PlayerStatus.stop;

  /// Строка с текущим временем плеера
  late String passed = '00:00';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fragment = widget.fragment;

    if (fragment != null ||
        (widget.fragmentData != null ||
            widget.fragmentData?.audioPath != null)) {
      audioEventSubscription = player.eventStream.listen((event) {
        if (event.eventType == AudioEventType.position) {
          onPositionChanged(event.position!);
        } else if (event.eventType == AudioEventType.complete &&
            widget.onEnd != null) {
          widget.onEnd!();
        }
      });

      fragment = widget.fragment;
      _setAudioDurationString();
      _startPlay();
    }
  }

  void onPositionChanged(Duration d) {
    setState(() {
      passed = '${d.inMinutes}:${d.inSeconds % 60}';
      progress = d.inSeconds;
      if (d.inSeconds % 60 < 10) {
        passed = '${d.inMinutes}:0${d.inSeconds % 60}';
      }
    });
  }

  /// Строка с длительностью аудио
  void _setAudioDurationString() {
    if (fragment != null ||
        (widget.fragmentData != null &&
            widget.fragmentData!.audioPath != null)) {
      Duration d = Duration(
          seconds: fragment != null
              ? fragment!.duration!
              : widget.fragmentData!.duration!);

      setState(() {
        recordDuration = '${d.inMinutes}:${d.inSeconds % 60}';
        if (d.inSeconds % 60 < 10) {
          recordDuration = '${d.inMinutes}:0${d.inSeconds % 60}';
        }
      });
    }
  }

  @override
  void dispose() {
    audioEventSubscription?.cancel();
    player.dispose();
    super.dispose();
  }

  Future<void> _startPlay() async {
    print('109');
    print(fragment?.audioPath);
    if (playerStatus == PlayerStatus.stop ||
        playerStatus == PlayerStatus.pause) {
      await player.play(
          UrlSource(fragment != null
              ? fragment!.audioPath!
              : widget.fragmentData!.audioPath!),
          volume: 1);
      setState(() {
        playerStatus = PlayerStatus.play;
      });
    }
  }

  Future<void> stopPlayer() async {
    await player.stop();
  }

  Future<void> reStartPlayer() async {
    await player.stop();
    if (fragment != null && fragment!.audioPath != null ||
        (widget.fragmentData != null &&
            widget.fragmentData!.audioPath != null)) {
      print('134');
      await player.play(
          UrlSource(fragment != null
              ? fragment!.audioPath!
              : widget.fragmentData!.audioPath!),
          volume: 1);
      setState(() {
        playerStatus = PlayerStatus.play;
      });
    }
  }

  @override
  void didUpdateWidget(PdfPlayerWidget oldWidget) {
    if (fragment != null) {
      if (oldWidget.fragment!.id != widget.fragment!.id) {
        fragment = widget.fragment;

        _setAudioDurationString();

        reStartPlayer();
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
            width: 260,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: IconButton(
                      onPressed: () async {
                        _startPlay();
                      },
                      icon: const Icon(
                        Icons.play_circle,
                        size: 36,
                      ),
                      color: playerStatus == PlayerStatus.stop ||
                              playerStatus == PlayerStatus.pause
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      if (playerStatus == PlayerStatus.play) {
                        setState(() {
                          playerStatus = PlayerStatus.pause;
                        });

                        await player.pause();
                      }
                    },
                    icon: const Icon(
                      Icons.pause_circle,
                      size: 36,
                    ),
                    color: playerStatus == PlayerStatus.play
                        ? Colors.red
                        : Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () async {
                        if (playerStatus == PlayerStatus.play) {
                          setState(() {
                            playerStatus = PlayerStatus.stop;
                            stopPlayer();
                          });

                          await player.stop();
                        }
                      },
                      icon: const Icon(
                        Icons.stop_circle,
                        size: 36,
                      ),
                      color: playerStatus == PlayerStatus.play
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: // LinearProgressIndicator(value: progress),
                    ProgressBar(
                  progress: Duration(seconds: progress),
                  buffered: const Duration(seconds: 5),
                  total: Duration(
                      seconds: fragment != null
                          ? fragment!.duration ?? 0
                          : widget.fragmentData != null
                              ? widget.fragmentData?.duration ?? 0
                              : 0),
                  onSeek: (duration) {
                    player.seek(duration);

                    onPositionChanged(duration);
                  },
                  onDragUpdate: (value) {
                    onPositionChanged(value.timeStamp);
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         passed,
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       Text(
              //         recordDuration ?? '',
              //         style: TextStyle(color: Colors.white),
              //       )
              //     ],
              //   ),
              // )
            ])),
      ),
    );
  }
}
