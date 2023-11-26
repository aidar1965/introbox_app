import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/player/player_widget.dart';

import '../../domain/models/course.dart';
import '../../domain/models/fragment.dart';
import '../../domain/models/subject.dart';
import '../screens/home_screen/bloc/home_bloc.dart';

@RoutePage()
class CoursePlayerScreen extends StatefulWidget {
  const CoursePlayerScreen({Key? key, required this.course, this.remote})
      : super(key: key);

  final Course course;
  final bool? remote;

  @override
  State<CoursePlayerScreen> createState() => _CoursePlayerScreenState();
}

class _CoursePlayerScreenState extends State<CoursePlayerScreen> {
  double opacityLevel = 0.0;
  double leftOpacity = 0.0;
  double rightOpacity = 0.0;

  late Fragment? record;
  late bool isLast;
  late Subject subject;
  late bool isLastSubject;

  late int numberOfFragments;
  late int numberOfSubjects;
  int currentIndex = 0;
  int currentSubjectIndex = 0;
  bool remote = false;
  late double height;
  late double width;

  @override
  void initState() {
    super.initState();

    subject = widget.course.subjects.first;
    record = subject.records?.first;
    numberOfFragments = subject.records?.length ?? 0;
    numberOfSubjects = widget.course.subjects.length;
    isLast = currentIndex == numberOfFragments - 1;
    isLastSubject = currentSubjectIndex == numberOfSubjects - 1;
    if (widget.remote != null) {
      remote = widget.remote!;
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
        record = subject.records?.elementAt(currentIndex);
        isLast = currentIndex == numberOfFragments - 1;
      });
    } else {
      if (currentSubjectIndex < numberOfSubjects - 1) {
        _playNextSubject();
      }
    }
  }

  void _playPreviousFragment() {
    setState(() {
      currentIndex--;
      record = subject.records?.elementAt(currentIndex);
      isLast = currentIndex == numberOfFragments - 1;
    });
  }

  void _playNextSubject() {
    setState(() {
      currentSubjectIndex++;
      subject = widget.course.subjects.elementAt(currentSubjectIndex);
      numberOfFragments = subject.records?.length ?? 0;
      currentIndex = 0;
      isLast = currentIndex == numberOfFragments - 1;
      isLastSubject = currentSubjectIndex == numberOfSubjects - 1;
      record = subject.records?.first;
    });
  }

  void _playPreviousSubject() {
    setState(() {
      currentSubjectIndex--;
      subject = widget.course.subjects.elementAt(currentSubjectIndex);
      numberOfFragments = subject.records?.length ?? 0;
      currentIndex = 0;
      isLast = currentIndex == numberOfFragments - 1;
      isLastSubject = currentSubjectIndex == numberOfSubjects - 1;
      record = subject.records?.first;
    });
  }

  void _playSubject(Subject theSubject, int indx) {
    setState(() {
      currentSubjectIndex = indx;
      subject = theSubject;
      numberOfFragments = subject.records?.length ?? 0;
      currentIndex = 0;
      isLast = currentIndex == numberOfFragments - 1;
      isLastSubject = currentSubjectIndex == numberOfSubjects - 1;
      record = subject.records?.first;
    });
  }

  void _playFragment(Subject theSubject, int theSubjectIndex,
      Fragment theFragment, int theFragmentIndex) {
    setState(() {
      currentSubjectIndex = theSubjectIndex;
      subject = theSubject;
      numberOfFragments = subject.records?.length ?? 0;
      currentIndex = theFragmentIndex;
      isLast = currentIndex == numberOfFragments - 1;
      isLastSubject = currentSubjectIndex == numberOfSubjects - 1;
      record = theFragment;
    });
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
                      child:
                          record?.imagePath != '' && record?.imagePath != null
                              ? remote == false
                                  ? Image.file(File(record!.imagePath!))
                                  : Image.network(record!.imagePath!)
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
                width: 1000,
                child: Material(
                  color: Colors.black,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        subject.title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        record?.title ?? '',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      record?.description != null
                          ? Text(
                              record!.description!,
                              style: const TextStyle(color: Colors.white),
                            )
                          : const SizedBox(),
                      SizedBox(
                        height: record?.description != null ? 40 : 0,
                      ),
                      Center(
                        child: SizedBox(
                          width: 320,
                          height: 240,
                          child: Center(
                            child: record != null
                                ? PlayerWidget(
                                    record: record!,
                                    remote: remote,
                                    subject: subject,
                                    isLast: isLast,
                                    onEnd: () {
                                      _playNextFragment();
                                    })
                                : const SizedBox(),
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
      AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: rightOpacity,
        child: Align(
            alignment: Alignment.centerRight,
            child: MouseRegion(
              onHover: _showRight,
              onExit: _hideRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    !isLast
                        ? FloatingActionButton(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey,
                            child: const Icon(Icons.keyboard_arrow_right,
                                color: Colors.black, size: 48),
                            onPressed: () {
                              _playNextFragment();
                            },
                          )
                        : const SizedBox(),
                    const SizedBox(
                      width: 20,
                    ),
                    !isLastSubject
                        ? FloatingActionButton(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey,
                            child: const Icon(Icons.keyboard_double_arrow_right,
                                color: Colors.black, size: 48),
                            onPressed: () {
                              _playNextSubject();
                            },
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            )),
      ),
      AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: leftOpacity,
        child: Align(
            alignment: Alignment.centerLeft,
            child: MouseRegion(
              onHover: _showLeft,
              onExit: _hideLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    currentSubjectIndex != 0
                        ? FloatingActionButton(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey,
                            child: const Icon(
                              Icons.keyboard_double_arrow_left,
                              color: Colors.black,
                              size: 48,
                            ),
                            onPressed: () {
                              _playPreviousSubject();
                            },
                          )
                        : const SizedBox(),
                    const SizedBox(
                      width: 20,
                    ),
                    currentIndex != 0
                        ? FloatingActionButton(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey,
                            child: const Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.black,
                              size: 48,
                            ),
                            onPressed: () {
                              _playPreviousFragment();
                            },
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            )),
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
      Positioned(
          right: 10,
          bottom: 10,
          child: FloatingActionButton(
            backgroundColor: Colors.black54,
            onPressed: () => _showAllSubjects(context, widget.course),
            tooltip: 'Курс',
            child: const Icon(
              Icons.info,
            ),
          )),
    ]);
  }

  void _showAllSubjects(BuildContext context, Course course) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Expanded(
              child: ListView.builder(
                  itemCount: course.subjects.length,
                  itemBuilder: ((context, index) {
                    var thesubject = course.subjects.elementAt(index);
                    var description =
                        thesubject.description ?? 'Описание отутствует';
                    return ListTile(
                      title: GestureDetector(
                          onTap: () => _playSubject(thesubject, index),
                          child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text('${subject.title}: $description'))),
                      subtitle: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: thesubject.records?.length,
                        itemBuilder: (BuildContext context, int ind) {
                          var therecord = thesubject.records?.elementAt(ind);
                          if (therecord != null) {
                            return GestureDetector(
                                onTap: () => _playFragment(
                                    thesubject, index, therecord, ind),
                                child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Text(therecord.title)));
                          }
                          return null;
                        },
                      ),
                    );
                  })));
        });
  }
}
