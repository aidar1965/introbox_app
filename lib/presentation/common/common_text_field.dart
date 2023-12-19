import 'package:flutter/material.dart';

import '../theme/dynamic_theme.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.obscureText = false});

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: DynamicTheme.paletteOf(context).text2),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: DynamicTheme.paletteOf(context).accent),
            //<-- SEE HERE
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: DynamicTheme.paletteOf(context).accent),
            //<-- SEE HERE
          ),
        ));
  }
}
