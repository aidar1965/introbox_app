import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../values/palette.dart';
import '../values/values.dart';

// https://docs.google.com/spreadsheets/u/0/d/1vraGWxcY_7xS5vpxlzuF5G0M6Vyj8gLhEVf7K1ynx5o/htmlview#gid=0

class AppTheme {
  static const TextStyle _globalTextStyle =
      TextStyle(fontFamily: 'Inter', fontFamilyFallback: ['sans-serif']);

  static ThemeData getTheme({double fontCoefficient = 1.0}) => ThemeData(
      primarySwatch: Palette.primarySwatch,
      backgroundColor: Palette.background,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      popupMenuTheme: const PopupMenuThemeData(
        color: Palette.background,
      ),

      // This is the background color of major parts of the app like toolbars,
      // tab bars, appbar, and many more.
      primaryColor: Palette.accent,

      // This is the brightness of the primary color. It is used to determine
      // the color of text and icons placed on the top of the primary color.

      // primaryColorBrightness: Brightness.light,

      // This is a lighter version of primaryColor.

      brightness: Brightness.light,

      // This is default color of MaterialType.canvas (Rectangle using default
      // theme canvas color)
      // canvasColor: palette.background,

      // Radio Button unselected Color
      unselectedWidgetColor: Palette.hint,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Palette.primarySwatch,
        accentColor: Palette.accent,
        cardColor: Palette.background,
        backgroundColor: Palette.background,
        errorColor: Palette.primarySwatch.shade500,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: Palette.background,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Palette.accent),
        toolbarHeight: 42,
        centerTitle: true,
        elevation: 4.0,
        backgroundColor: Palette.appBarBackground,
        titleTextStyle: _globalTextStyle.copyWith(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          // 500
          color: Palette.font,
        ),
        // systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        //     statusBarColor: Palette.background,
        //     statusBarIconBrightness: Brightness.dark)
      ),
      splashColor: Palette.accent.withOpacity(0.1),
      splashFactory: InkRipple.splashFactory,

      /// The color of ink splashes. See [InkWell].
      highlightColor: Palette.accent.withOpacity(0.05),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Palette.appBarBackground,
        elevation: 0.0,
        selectedIconTheme: const IconThemeData(color: Palette.font),
        unselectedIconTheme: const IconThemeData(color: Palette.iconGreenGrey),
        selectedItemColor: Palette.font,
        unselectedItemColor: Palette.iconGreenGrey,
        selectedLabelStyle: _globalTextStyle.copyWith(
          fontSize: 11,
          color: Palette.font,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: _globalTextStyle.copyWith(
          fontSize: 11,
          color: Palette.iconGreenGrey,
          fontWeight: FontWeight.w400,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
      ),
      chipTheme: ChipThemeData(backgroundColor: Palette.secondaryColor),

      //
      //
      checkboxTheme: CheckboxThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      //
      //
      dialogTheme: DialogTheme(
        backgroundColor: Palette.background,
        // elevation,
        actionsPadding: const EdgeInsets.only(bottom: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Values.dialogRadius),
        ),
        titleTextStyle: _globalTextStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Palette.font,
        ),
        contentTextStyle: _globalTextStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Palette.font,
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Values.borderRadius),
        ),
        buttonColor: Palette.accent,
        disabledColor: Palette.primarySwatch.shade300,
        height: 54,
      ),
      textTheme: TextTheme(
        // большие заголовки
        headline1: TextStyle(
            fontFamily: 'Fira Sans Condensed',
            fontSize: 28 * fontCoefficient,
            fontWeight: FontWeight.w400, // regular
            color: Palette.font),

        // средние заголовки
        headline2: TextStyle(
            fontFamily: 'Inter',
            fontSize: 17 * fontCoefficient,
            fontWeight: FontWeight.w500, // 500
            color: Palette.font),

        // малые заголовки
        headline3: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16 * fontCoefficient,
            fontWeight: FontWeight.w500, // 500
            color: Palette.font),

        // Цена товара
        headline4: TextStyle(
            fontFamily: 'Inter',
            fontSize: 12 * fontCoefficient,
            fontWeight: FontWeight.w400, // 500
            color: Palette.fontLight),

        subtitle1: TextStyle(
            fontFamily: 'Inter',
            fontSize: 15 * fontCoefficient,
            fontWeight: FontWeight.w400, // 500
            color: Palette.font),

        subtitle2: TextStyle(
            fontFamily: 'Inter',
            fontSize: 11 * fontCoefficient,
            fontWeight: FontWeight.w400, // 500
            color: Palette.font),

        // кнопки
        button: TextStyle(
            fontSize: 16 * fontCoefficient,
            color: Palette.font,
            decoration: TextDecoration.none),

        // основной текст
        bodyText1: TextStyle(
            fontFamily: 'Inter',
            fontSize: 16 * fontCoefficient,
            fontWeight: FontWeight.w400,
            color: Palette.font),

        // подсказки
        bodyText2: TextStyle(
          fontFamily: 'Inter',
          fontSize: 13 * fontCoefficient,
          color: Palette.fontLight,
          fontWeight: FontWeight.w400,
        ),

        // переключатели сортировки, фильтров
        overline: TextStyle(
          fontSize: 12 * fontCoefficient,
          color: Palette.font,
          fontWeight: FontWeight.w400,
        ),
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Palette.font,
        unselectedLabelColor: Palette.hint,
      ),
      cardTheme: CardTheme(
        elevation: 0,
        color: Palette.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Values.cardRadius),
        ),
      ),
      listTileTheme: const ListTileThemeData());
}
