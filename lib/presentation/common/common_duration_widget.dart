import 'package:flutter/material.dart';

class CommonDurationWidget extends StatelessWidget {
  const CommonDurationWidget({super.key, required this.seconds});

  final int seconds;

  @override
  Widget build(BuildContext context) {
    String minutesPart = _formatNumber(seconds ~/ 60);
    String secondsPart = _formatNumber(seconds % 60);
    return Text(
      '$minutesPart : $secondsPart',
      style: const TextStyle(color: Colors.red),
    );
  }

  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0$numberStr';
    }

    return numberStr;
  }
}
