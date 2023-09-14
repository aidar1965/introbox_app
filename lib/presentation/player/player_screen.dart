import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moki_tutor/presentation/player/player_widget.dart';

import '../../domain/models/fragment.dart';
import '../screens/home_screen/bloc/home_bloc.dart';

@RoutePage()
class PlayerScreen extends StatefulWidget {
  const PlayerScreen({Key? key, required this.record, this.remote = false})
      : super(key: key);

  final Fragment record;
  final bool? remote;

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  double opacityLevel = 0.0;
  late List<int>? imageSeconds = widget.record.images?.values.toList();
  late List<String>? images = widget.record.images?.keys.toList();
  int secondsPassed = 0;
  late double width;
  late double height;
  late String? imagePath;

  @override
  void initState() {
    if (imageSeconds != null) {
      if (imageSeconds!.first == 0) {
        imagePath = widget.record.images!.keys.first;
      }
    } else {
      imagePath = null;
    }

    super.initState();
  }

  void _showPlayer(PointerEvent details) {
    setState(() => opacityLevel = 0.5);
  }

  void _hidePlayer(PointerEvent details) {
    setState(() => opacityLevel = 0.0);
  }

  void _defineImage() {
    for (int i = 0; i < imageSeconds!.length; i++) {
      if (i != imageSeconds!.length - 1) {
        if (secondsPassed >= imageSeconds![i] &&
            secondsPassed < imageSeconds![i + 1]) {
          imagePath = images![i];
          break;
        }
      } else {
        imagePath = images!.last;
      }
    }
  }

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
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
                      child: imagePath != null
                          ? widget.remote != null
                              ? Image.file(File(imagePath!))
                              : Image.network(imagePath!)
                          : const SizedBox()))
            ],
          )),
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
              child: Material(
                child: Container(
                  color: Colors.black,
                  width: 1000,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.record.title,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        widget.record.description != null
                            ? Text(widget.record.description!,
                                style: const TextStyle(color: Colors.white))
                            : const SizedBox(),
                        Center(
                          child: SizedBox(
                            width: 320,
                            height: 240,
                            child: Center(
                              child: PlayerWidget(
                                onSecondPassed: (second) {
                                  setState(() {
                                    secondsPassed = second;
                                    _defineImage();
                                  });
                                },
                                record: widget.record,
                                remote: false,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
          right: 10,
          top: 10,
          child: FloatingActionButton(
            backgroundColor: Colors.black54,
            onPressed: () async {
              BlocProvider.of<HomeBloc>(context)
                  .add(const HomeEvent.closePlayer());
            },
            tooltip: 'Закрыть',
            child: const Icon(
              Icons.close,
            ),
          )),
    ]);
  }
}
