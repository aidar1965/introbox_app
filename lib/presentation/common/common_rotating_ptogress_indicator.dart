import 'package:flutter/material.dart';

class CommonRotatingProgressIndicator extends StatefulWidget {
  const CommonRotatingProgressIndicator({super.key, this.progress});

  final double? progress;

  @override
  State<CommonRotatingProgressIndicator> createState() =>
      _CommonRotatingProgressIndicatorState();
}

class _CommonRotatingProgressIndicatorState
    extends State<CommonRotatingProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Длительность анимации
    )..repeat(); // Повторять анимацию бесконечно
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: _controller,
        child: CircularProgressIndicator(
            color: Colors.white, value: widget.progress));
  }
}
