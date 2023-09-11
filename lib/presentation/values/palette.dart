import 'package:flutter/material.dart';

class Palette {
  static const int _palettePrimaryValue = 0xFF0C7F85;
  //Primary
  static Color primaryColor = const Color(0xFF0C7F85);
  static Color primaryOnTapColor = const Color(0xFF0B929C);
  static Color primaryDisabledColor = const Color(0xFFD5ECED);

  //Secondary
  static Color secondaryColor = const Color(0xFFEAFAF9);
  static Color secondaryOnTapColor = const Color(0xFFCEF2F2);
  static Color secondaryDisabledColor = const Color(0xFFEEF8F8);
  static Color badgeLightColor = const Color(0xFFF8E7E9);

  static const MaterialColor primarySwatch =
      MaterialColor(_palettePrimaryValue, <int, Color>{
    50: Color(0xFFE2F0F0),
    100: Color(0xFFB6D9DA),
    200: Color(0xFF86BFC2),
    300: Color(0xFF55A5AA),
    400: Color(0xFF309297),
    500: Color(_palettePrimaryValue),
    600: Color(0xFF0A777D),
    700: Color(0xFF086C72),
    800: Color(0xFF066268),
    900: Color(0xFF034F55),
  });

  static const MaterialColor primaryAccent =
      MaterialColor(_paletteAccentValue, <int, Color>{
    100: Color(0xFF87F5FF),
    200: Color(_paletteAccentValue),
    400: Color(0xFF21ECFF),
    700: Color(0xFF08E9FF),
  });
  static const int _paletteAccentValue = 0xFF54F0FF;

  static const accent = Color(_palettePrimaryValue);
  static const background = Color(0xffFFFFFF);
  static const buttonLightBackground = Color(0xffEAFAF9);
  static const iconGreenGrey = Color(0xff6A9491);
  static const outline = Color(0xffD2DEE0);
  static const textLight = Color(0xff8A919C);
  static const backgroundLight = Color(0xffEEF0F4);
  static const buttonLight = Color(0xffD5ECED);
  static const switchUnselected = Color(0xffB5BCC7);
  static const hint = Color(0xffB5BCC7);
  static Color overlay = const Color(0xff000000).withOpacity(0.5);
  static const textFieldBorder = Color(0xffEAECF0);
  static const textFieldRedBorder = Color(0xffBF3121);
  static const iconLight = Color(0xffC4C4C4);
  static const appBarBackground = Color(0xF5FFFFFF);
  static const smallCardText = Color(0xff83B6B2);
  static const background80 = Color(0xccffffff);

  static const font = Color(0xFF041A1C);
  static const fontLight = Color(0xFF8A919C);
  static const fontLightest = Color(0xFFB5BCC7);

  static const chartGrey = Color(0xFFF9F9F9);
  static const chartLightGreen = Color(0xffEAFAF9);

  static const shimmer = Color(0xFFEEF0F4);
  static const inputBackground = Color(0xFFEEF0F4);

  static const checkboxShadow = Color(0x1010403D);
  static const red = Color(0xFFBF3121);
}
