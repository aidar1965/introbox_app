import 'dart:async';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../domain/models/pdf_fragment.dart';
import '../../domain/models/subject.dart';

enum PlayerStatus { pause, play, stop }

class PdfPlayerWidget extends StatefulWidget {
  const PdfPlayerWidget({
    Key? key,
    required this.fragment,
    this.onEnd,
    this.isLast,
    this.subject,
  }) : super(key: key);

  final PdfFragment fragment;
  final bool? isLast;
  final Subject? subject;
  final void Function()? onEnd;

  @override
  State<PdfPlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PdfPlayerWidget> {
  late String recordDuration;
  final AudioPlayer player = AudioPlayer();

  late PdfFragment fragment;
  late Subject? subject;
  late StreamSubscription<AudioEvent> audioEventSubscription;

  late int progress = 0;
  PlayerStatus playerStatus = PlayerStatus.stop;

  /// Строка с текущим временем плеера
  late String passed = '00:00';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioEventSubscription = player.eventStream.listen((event) {
      if (event.eventType == AudioEventType.position) {
        onPositionChanged(event.position!);
      } else if (event.eventType == AudioEventType.complete &&
          widget.onEnd != null) {
        widget.onEnd!();
      }
    });

    fragment = widget.fragment;
    subject = widget.subject;
    _setAudioDurationString();
    _startPlay();
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
    Duration d = Duration(seconds: fragment.duration!);
    setState(() {
      recordDuration = '${d.inMinutes}:${d.inSeconds % 60}';
      if (d.inSeconds % 60 < 10) {
        recordDuration = '${d.inMinutes}:0${d.inSeconds % 60}';
      }
    });
  }

  @override
  void dispose() {
    audioEventSubscription.cancel();
    player.dispose();
    super.dispose();
  }

  Future<void> _startPlay() async {
    if (playerStatus == PlayerStatus.stop ||
        playerStatus == PlayerStatus.pause) {
      await player.play(UrlSource(fragment.audioPath!), volume: 1);
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
    if (fragment.audioPath != null) {
      await player.play(UrlSource(fragment.audioPath!), volume: 1);
      setState(() {
        playerStatus = PlayerStatus.play;
      });
    }
  }

  @override
  void didUpdateWidget(PdfPlayerWidget oldWidget) {
    if (oldWidget.fragment.id != widget.fragment.id) {
      fragment = widget.fragment;

      _setAudioDurationString();

      reStartPlayer();
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
                  total: Duration(seconds: fragment.duration ?? 0),
                  onSeek: (duration) {
                    player.seek(duration);

                    onPositionChanged(duration);
                  },
                  onDragUpdate: (value) {
                    onPositionChanged(value.timeStamp);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      passed,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      recordDuration,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
