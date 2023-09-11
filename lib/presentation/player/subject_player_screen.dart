import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moki_tutor/presentation/player/player_widget.dart';

import '../../domain/models/record.dart';
import '../../domain/models/subject.dart';
import '../screens/home_screen/bloc/home_bloc.dart';

@RoutePage()
class SubjectPlayerScreen extends StatefulWidget {
  const SubjectPlayerScreen({Key? key, required this.subject})
      : super(key: key);

  final Subject subject;

  @override
  State<SubjectPlayerScreen> createState() => _SubjectPlayerScreenState();
}

class _SubjectPlayerScreenState extends State<SubjectPlayerScreen> {
  double opacityLevel = 0.0;
  double leftOpacity = 0.0;
  double rightOpacity = 0.0;

  late Record record;
  late bool isLast;

  late int numberOfRecords;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    numberOfRecords = widget.subject.records.length;
    record = widget.subject.records.first;
    isLast = currentIndex == numberOfRecords - 1;
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

  void _playNextRecord(Record oldRecord) {
    if (currentIndex < numberOfRecords - 1) {
      setState(() {
        currentIndex++;
        record = widget.subject.records.elementAt(currentIndex);
        isLast = currentIndex == numberOfRecords - 1;
      });
    } else {
      setState(() {
        currentIndex = 0;
        record = widget.subject.records.first;
        isLast = currentIndex == numberOfRecords - 1;
      });
    }
  }

  void _playPreviousRecord(Record oldRecord) {
    setState(() {
      currentIndex--;
      record = widget.subject.records.elementAt(currentIndex);
      isLast = currentIndex == numberOfRecords - 1;
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
                      child: record.imagePath != ''
                          ? Image.file(File(record.imagePath))
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
              child: Container(
                color: Colors.black,
                height: 200,
                width: 1000,
                child: Center(
                  child: SizedBox(
                    width: 320,
                    height: 240,
                    child: Center(
                      child: PlayerWidget(
                          record: record,
                          remote: false,
                          isLast: isLast,
                          onEnd: () {
                            _playNextRecord(record);
                          }),
                    ),
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
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                        child: const Icon(Icons.arrow_right,
                            color: Colors.black, size: 48),
                        onPressed: () {
                          _playNextRecord(record);
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
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                        child: const Icon(
                          Icons.arrow_left,
                          color: Colors.black,
                          size: 48,
                        ),
                        onPressed: () {
                          _playPreviousRecord(record);
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
