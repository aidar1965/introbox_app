import 'package:flutter/material.dart';

// http://mcg.mbitson.com/#!?mcgpalette0=%23044188 - generating primaryswatch
// https://gist.github.com/lopspower/03fb1cc0ac9f32ef38f4 - opacity to color table

class DynamicPalette {
  DynamicPalette.dark()
      : palettePrimaryValue = 0xFF005192,
        primarySwatch = const MaterialColor(0xFFF005191, <int, Color>{
          50: Color(0xFF9CD3FF),
          100: Color(0xFF50B1FF),
          200: Color(0xFF1898FF),
          300: Color(0xFF0073CF),
          400: Color(0xFF0062B1),
          500: Color(0xFF005192),
          600: Color(0xFF004073),
          700: Color(0xFF002F55),
          800: Color(0xFF001E36),
          900: Color(0xFF000D18),
        }),

        // Палитра макета (dark)
        accent = const Color(0xFF005192),
        accentDark = const Color(0xFF024275),
        background1 = const Color(0xFF002D52),
        background2 = const Color(0xFF013865),
        line1 = const Color(0xFF1C4D74),
        line2 = const Color(0xFF23679D),
        text1 = const Color(0xFFFFFFFF),
        text2 = const Color(0xFF7D97AD),
        text2Dark = const Color(0xFF5C83A5),
        text3 = const Color(0xFF0E395E),
        question = const Color(0xFFFFEC8A),
        answer = const Color(0xFFC8FFA6),
        answerDark = const Color(0xFFA8E582),
        negative = const Color(0xFFF78383),
        negativeDark = const Color(0xFFEF7C7C),
        boxShadow1 = const BoxShadow(
          color: Color(0x19000000),
          blurRadius: 10,
          offset: Offset.zero,
          spreadRadius: 0,
        ),
        boxShadow2 = const BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10,
          offset: Offset.zero,
          spreadRadius: 0,
        ),
        buttonForeground = const Color(0xFF024275),
        alwaysWhite = const Color(0xFFFFFFFF),
        buttonSplash = const Color(0xFF014174),
        barrier = const Color(0x4D000000);

  DynamicPalette.light()
      : palettePrimaryValue = 0xFF64B5F6,
        primarySwatch = const MaterialColor(0xFF64B5F6, <int, Color>{
          50: Color(0xFFFFFFFF),
          100: Color(0xFFFFFFFF),
          200: Color(0xFFE1F1FD),
          300: Color(0xFF9ED1F9),
          400: Color(0xFF81C3F8),
          500: Color(0xFF64B5F6),
          600: Color(0xFF47A7F4),
          700: Color(0xFF2A99F3),
          800: Color(0xFF0E8BF0),
          900: Color(0xFF0C7BD3),
        }),

        // Палитра макета (light)
        accent = const Color(0xFF64B5F6),
        accentDark = const Color(0xFF519CD9),
        background1 = const Color(0xFFFAFAFA),
        background2 = const Color(0xFFEDF4FF),
        line1 = const Color(0xFFEDEDED),
        line2 = const Color(0xFFD9E1EE),
        text1 = const Color(0xFF3A3A3A),
        text2 = const Color(0xFF8C8C8C),
        text2Dark = const Color(0xFF717171),
        text3 = const Color(0xFFC7C7C7),
        question = const Color(0xFFFFEC8A),
        answer = const Color(0xFFC8FFA6),
        answerDark = const Color(0xFFA8E582),
        negative = const Color(0xFFF88383),
        negativeDark = const Color(0xFFEF7C7C),
        boxShadow1 = const BoxShadow(
          color: Color(0x0C000000),
          blurRadius: 10,
          offset: Offset.zero,
          spreadRadius: 0,
        ),
        boxShadow2 = const BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10,
          offset: Offset.zero,
          spreadRadius: 0,
        ),
        buttonForeground = const Color(0x1A000000),
        alwaysWhite = const Color(0xFFFFFFFF),
        buttonSplash = const Color(0x1A000000),
        barrier = const Color(0x4D000000);

  final int palettePrimaryValue;

  final MaterialColor primarySwatch;

  // Палитра макета;
  final Color accent;
  final Color accentDark;
  final Color background1;
  final Color background2;
  final Color line1;
  final Color line2;
  final Color text1;
  final Color text2;
  final Color text2Dark;
  final Color text3;
  final Color question;
  final Color answer;
  final Color answerDark;
  final Color negative;
  final Color negativeDark;

  final BoxShadow boxShadow1;
  final BoxShadow boxShadow2;
  final Color buttonForeground;
  final Color alwaysWhite;
  final Color buttonSplash;
  final Color barrier;
}
