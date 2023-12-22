import 'package:flutter/material.dart';

import '../theme/dynamic_theme.dart';
import '../values/palette.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton(
      {super.key,
      required this.text,
      this.isPending = false,
      required this.onPressed})
      : _buttonColor = null;

  const CommonElevatedButton.red(
      {super.key,
      required this.text,
      this.isPending = false,
      required this.onPressed})
      : _buttonColor = Palette.red;

  final String text;
  final bool isPending;
  final Function() onPressed;

  final Color? _buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => isPending == false ? onPressed() : null,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor:
              _buttonColor ?? DynamicTheme.paletteOf(context).accent,
          foregroundColor: DynamicTheme.paletteOf(context).alwaysWhite),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isPending) ...[
            const SizedBox(
                height: 12,
                width: 12,
                child: CircularProgressIndicator(
                  color: Colors.white,
                )),
            const SizedBox(
              width: 12,
            )
          ],
          Text(text),
        ],
      ),
    );
  }
}
