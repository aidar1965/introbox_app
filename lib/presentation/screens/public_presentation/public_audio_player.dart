import 'dart:async';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

enum PlayerStatus { pause, play, stop }

class PublicAudioPlayer extends StatefulWidget {
  const PublicAudioPlayer(
      {super.key,
      this.onEnd,
      required this.audioUrl,
      required this.audioDurationInSeconds,
      this.onClicked,
      required this.isFirstAudio});

  final void Function()? onEnd;
  final String? audioUrl;
  final int? audioDurationInSeconds;
  final void Function()? onClicked;
  final bool isFirstAudio;

  @override
  State<PublicAudioPlayer> createState() => _PublicAudioPlayerState();
}

class _PublicAudioPlayerState extends State<PublicAudioPlayer> {
  String recordDuration = '';
  final AudioPlayer player = AudioPlayer();
  Duration? audioDuration;

  StreamSubscription<AudioEvent>? audioEventSubscription;

  int progress = 0;
  PlayerStatus playerStatus = PlayerStatus.stop;

  /// Строка с текущим временем плеера
  late String passed = '00:00';

  @override
  void initState() {
    super.initState();

    audioEventSubscription = player.eventStream.listen((event) {
      if (event.eventType == AudioEventType.position) {
        onPositionChanged(event.position!);
      } else if (event.eventType == AudioEventType.complete &&
          widget.onEnd != null) {
        playerStatus = PlayerStatus.stop;
        onPositionChanged(const Duration(seconds: 0));
        widget.onEnd!();
      }
    });
    _setAudioDurationString();
    // _startPlay();
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
  Future<void> _setAudioDurationString() async {
    if (widget.audioDurationInSeconds != null) {
      audioDuration = Duration(seconds: widget.audioDurationInSeconds!);

      setState(() {
        recordDuration =
            '${audioDuration!.inMinutes}:${audioDuration!.inSeconds % 60}';
        if (audioDuration!.inSeconds % 60 < 10) {
          recordDuration =
              '${audioDuration!.inMinutes}:0${audioDuration!.inSeconds % 60}';
        }
      });
    }
  }

  Future<void> _startPlay() async {
    if (widget.audioUrl != null) {
      await player.play(UrlSource(widget.audioUrl!), volume: 1);
      setState(() {
        playerStatus = PlayerStatus.play;
      });
    }
  }

  Future<void> stopPlayer() async {
    await player.stop();
  }

  Future<void> reStartPlayer() async {
    await stopPlayer();
    await _startPlay();
  }

  @override
  void dispose() {
    audioEventSubscription?.cancel();
    player.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(PublicAudioPlayer oldWidget) {
    if (oldWidget.audioUrl != widget.audioUrl ||
        (widget.isFirstAudio == false &&
            oldWidget.isFirstAudio != widget.isFirstAudio)) {
      _setAudioDurationString();

      reStartPlayer();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return widget.audioUrl != null
        ? Material(
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
                              if (widget.onClicked != null) {
                                widget.onClicked!();
                              }
                            },
                            icon: const Icon(
                              Icons.play_circle,
                              size: 36,
                            ),
                            color: playerStatus == PlayerStatus.stop ||
                                    playerStatus == PlayerStatus.pause
                                ? Colors.red
                                : Colors.white,
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
                            if (widget.onClicked != null) {
                              widget.onClicked!();
                            }
                          },
                          icon: const Icon(
                            Icons.pause_circle,
                            size: 36,
                          ),
                          color: playerStatus == PlayerStatus.play
                              ? Colors.red
                              : Colors.white,
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
                              if (widget.onClicked != null) {
                                widget.onClicked!();
                              }
                            },
                            icon: const Icon(
                              Icons.stop_circle,
                              size: 36,
                            ),
                            color: playerStatus == PlayerStatus.play
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: // LinearProgressIndicator(value: progress),
                          ProgressBar(
                        timeLabelTextStyle:
                            const TextStyle(color: Colors.white),
                        thumbColor: Colors.white,
                        progress: Duration(seconds: progress),
                        buffered: const Duration(seconds: 5),
                        total: audioDuration ?? Duration.zero,
                        onSeek: (duration) {
                          player.seek(duration);

                          onPositionChanged(duration);
                        },
                        onDragUpdate: (value) {
                          onPositionChanged(value.timeStamp);
                        },
                      ),
                    ),
                  ])),
            ),
          )
        : const SizedBox.shrink();
  }
}
