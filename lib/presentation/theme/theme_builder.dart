import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../values/dynamic_palette.dart';
import 'theme_type.dart';
import '../values/values.dart';

// https://docs.google.com/spreadsheets/u/0/d/1vraGWxcY_7xS5vpxlzuF5G0M6Vyj8gLhEVf7K1ynx5o/htmlview#gid=0

class ThemeBuilder {
  static const TextStyle _globalTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Manrope',
      fontFamilyFallback: ['sans-serif']);

  // ---------------------------------------------------------------------------
  static DynamicPalette getPalette(ThemeTypes type) {
    switch (type) {
      case ThemeTypes.light:
        return DynamicPalette.light();
      case ThemeTypes.dark:
        return DynamicPalette.dark();
    }
  }

  // ---------------------------------------------------------------------------
  static ThemeData getTheme(ThemeTypes type, DynamicPalette palette) {
    switch (type) {
      case ThemeTypes.light:
        return _getLightTheme(palette);
      case ThemeTypes.dark:
        return _getDarkTheme(palette);
    }
  }

  // ---------------------------------------------------------------------------
  static ThemeData _getLightTheme(DynamicPalette palette) => ThemeData(
        primarySwatch: palette.primarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        popupMenuTheme: PopupMenuThemeData(
          color: palette.background1,
        ),

        primaryColor: palette.accent,
        useMaterial3: Platform.isAndroid,

        scaffoldBackgroundColor: palette.background1,
        navigationRailTheme: NavigationRailThemeData(
            unselectedIconTheme: IconThemeData(color: palette.text1),
            unselectedLabelTextStyle: TextStyle(
              color: palette.text1,
            ),
            selectedIconTheme: IconThemeData(color: palette.accent),
            selectedLabelTextStyle: TextStyle(
                color: palette.accent,
                fontWeight: FontWeight.w600,
                fontSize: 18)),

        listTileTheme: ListTileThemeData(
            subtitleTextStyle: TextStyle(color: palette.text2)),

        iconTheme: IconThemeData(color: palette.text1),

        appBarTheme: AppBarTheme(
            color: palette.accent,
            surfaceTintColor: Colors.transparent,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent, // !!
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light, //!!
              systemNavigationBarIconBrightness: Brightness.dark,
            )),

        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: palette.primarySwatch,
          accentColor: palette.accent,
          cardColor: palette.background2,
          backgroundColor: palette.background1,
          errorColor: palette.negative,
          brightness: Brightness.dark,
        ).copyWith(surfaceVariant: Colors.transparent),

        splashColor: palette.accent.withOpacity(0.06),
        highlightColor: palette.accent.withOpacity(0.06),
        splashFactory: InkRipple.splashFactory,

        timePickerTheme: TimePickerThemeData(
            backgroundColor: palette.background1,
            dialBackgroundColor: palette.background2,
            // dayPeriodColor: Colors.accentAccent,
            // dayPeriodTextColor: Colors.brown,
            dialHandColor: palette.accent,
            dialTextColor: palette.text3,
            entryModeIconColor: palette.text3,
            hourMinuteColor: palette.background2,
            hourMinuteTextColor: palette.text3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Values.dialogRadius),
            )),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: palette.clean60,
          backgroundColor: palette.alwaysWhite,
          elevation: 0,
          selectedIconTheme: IconThemeData(color: palette.text1),
          unselectedIconTheme: IconThemeData(color: palette.text2),
          selectedItemColor: palette.text1,
          unselectedItemColor: palette.text2,
          selectedLabelStyle: _globalTextStyle.copyWith(
            fontSize: 12,
            color: palette.text3,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: _globalTextStyle.copyWith(
            fontSize: 12,
            color: palette.text3,
            fontWeight: FontWeight.w400,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
        ),

        //
        //
        checkboxTheme: CheckboxThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        //
        //
        dialogTheme: DialogTheme(
          backgroundColor: palette.alwaysWhite,
          // elevation,
          actionsPadding: const EdgeInsets.only(bottom: 24),
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Values.dialogRadius),
          ),
          titleTextStyle: _globalTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: palette.text1,
          ),
        ),

        bottomSheetTheme: BottomSheetThemeData(
            modalBarrierColor: palette.barrier,
            modalBackgroundColor: Colors.transparent,
            modalElevation: 0,
            backgroundColor: palette.alwaysWhite,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(Values.bottomSheetRadius)),
            )),

        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Values.buttonRadius),
          ),
          buttonColor: palette.accent,
          disabledColor: palette.primarySwatch.shade300,
          height: 54,
        ),

        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll<Color>(
                palette.accent.withOpacity(0.06)),
          ),
        ),

        cardTheme: CardTheme(
            color: palette.alwaysWhite,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Values.dialogRadius))),

        textTheme: TextTheme(
          // TODO(Vadim): Поправить цвета, когда появится палитра:
          /// Заголовок 1
          headlineMedium: TextStyle(
            fontSize: 22,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Заголовок 2
          headlineSmall: TextStyle(
            fontSize: 18,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Заголовок 3
          titleLarge: TextStyle(
            fontSize: 16,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Заголовок 4
          titleMedium: TextStyle(
            fontSize: 14,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Текст 1
          bodyLarge: _globalTextStyle.copyWith(
            fontSize: 16,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text1,
          ),

          /// Текст 2
          bodyMedium: _globalTextStyle.copyWith(
            fontSize: 14,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text1,
          ),

          /// Текст 3
          bodySmall: _globalTextStyle.copyWith(
            fontSize: 12,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text3,
          ),

          /// Кнопка 1
          labelMedium: _globalTextStyle.copyWith(
            fontSize: 12,
            letterSpacing: 1,
            height: 1.4,
            fontWeight: FontWeight.w700,
            color: palette.text3,
          ),

          /// Кнопка 2
          labelSmall: _globalTextStyle.copyWith(
            fontSize: 14,
            height: 1.4,
            fontWeight: FontWeight.w700,
            color: palette.text1,
          ),

          /// Hint
          displayMedium: _globalTextStyle.copyWith(
            fontSize: 16,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text2,
          ),
          displaySmall: _globalTextStyle.copyWith(
            fontSize: 12,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text2,
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: palette.text3,
          unselectedLabelColor: palette.text3,
        ),
      );

  // ---------------------------------------------------------------------------
  static ThemeData _getDarkTheme(DynamicPalette palette) => ThemeData(
        primarySwatch: palette.primarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        popupMenuTheme: PopupMenuThemeData(
          color: palette.background1,
        ),

        primaryColor: palette.accent,
        useMaterial3: Platform.isAndroid,

        scaffoldBackgroundColor: palette.background1,
        navigationRailTheme: NavigationRailThemeData(
            unselectedIconTheme: IconThemeData(color: palette.text1),
            unselectedLabelTextStyle: TextStyle(color: palette.text1),
            selectedIconTheme: IconThemeData(color: palette.alwaysWhite),
            selectedLabelTextStyle: TextStyle(
                color: palette.alwaysWhite,
                fontWeight: FontWeight.w600,
                fontSize: 18)),

        listTileTheme: ListTileThemeData(
            subtitleTextStyle: TextStyle(color: palette.text2)),

        appBarTheme: AppBarTheme(
            color: palette.accent,
            surfaceTintColor: Colors.transparent,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent, // !!
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light, //!!
              systemNavigationBarIconBrightness: Brightness.dark,
            )),

        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: palette.primarySwatch,
          accentColor: palette.accent,
          cardColor: palette.background2,
          backgroundColor: palette.background1,
          errorColor: palette.negative,
          brightness: Brightness.dark,
        ).copyWith(surfaceVariant: Colors.transparent),

        splashColor: palette.accent.withOpacity(0.06),
        highlightColor: palette.accent.withOpacity(0.06),
        splashFactory: InkRipple.splashFactory,

        timePickerTheme: TimePickerThemeData(
            backgroundColor: palette.background1,
            dialBackgroundColor: palette.background2,
            // dayPeriodColor: Colors.accentAccent,
            // dayPeriodTextColor: Colors.brown,
            dialHandColor: palette.accent,
            dialTextColor: palette.text3,
            entryModeIconColor: palette.text3,
            hourMinuteColor: palette.background2,
            hourMinuteTextColor: palette.text3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Values.dialogRadius),
            )),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: palette.clean60,
          backgroundColor: palette.background2,
          elevation: 0,
          selectedIconTheme: IconThemeData(color: palette.text1),
          unselectedIconTheme: IconThemeData(color: palette.text2),
          selectedItemColor: palette.text1,
          unselectedItemColor: palette.text2,
          selectedLabelStyle: _globalTextStyle.copyWith(
            fontSize: 12,
            color: palette.text3,
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelStyle: _globalTextStyle.copyWith(
            fontSize: 12,
            color: palette.text3,
            fontWeight: FontWeight.w400,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          enableFeedback: false,
        ),

        //
        //
        checkboxTheme: CheckboxThemeData(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        //
        //
        dialogTheme: DialogTheme(
          backgroundColor: palette.accent,
          // elevation,
          actionsPadding: const EdgeInsets.only(bottom: 24),
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Values.dialogRadius),
          ),
          titleTextStyle: _globalTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: palette.text1,
          ),
        ),

        bottomSheetTheme: BottomSheetThemeData(
            modalBarrierColor: palette.barrier,
            modalBackgroundColor: Colors.transparent,
            modalElevation: 0,
            backgroundColor: palette.accent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(Values.bottomSheetRadius)),
            )),

        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Values.buttonRadius),
          ),
          buttonColor: palette.accent,
          disabledColor: palette.primarySwatch.shade300,
          height: 54,
        ),

        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll<Color>(
                  palette.accent.withOpacity(0.06)),
              foregroundColor:
                  MaterialStatePropertyAll<Color>(palette.alwaysWhite)),
        ),

        iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(backgroundColor: Colors.transparent)),

        cardTheme: CardTheme(
            color: palette.background2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Values.dialogRadius),
              //set border radius more than 50% of height and width to make circle
            )),

        textTheme: TextTheme(
          // TODO(Vadim): Поправить цвета, когда появится палитра:
          /// Заголовок 1
          headlineMedium: TextStyle(
            fontSize: 22,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Заголовок 2
          headlineSmall: TextStyle(
            fontSize: 18,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Заголовок 3
          titleLarge: TextStyle(
            fontSize: 16,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Заголовок 4
          titleMedium: TextStyle(
            fontSize: 14,
            height: 1.4,
            fontWeight: FontWeight.w600,
            color: palette.text1,
          ),

          /// Текст 1
          bodyLarge: _globalTextStyle.copyWith(
            fontSize: 16,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text1,
          ),

          /// Текст 2
          bodyMedium: _globalTextStyle.copyWith(
            fontSize: 14,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text1,
          ),

          /// Текст 3
          bodySmall: _globalTextStyle.copyWith(
            fontSize: 12,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text3,
          ),

          /// Кнопка 1
          labelMedium: _globalTextStyle.copyWith(
            fontSize: 12,
            letterSpacing: 1,
            height: 1.4,
            fontWeight: FontWeight.w700,
            color: palette.text3,
          ),

          /// Кнопка 2
          labelSmall: _globalTextStyle.copyWith(
            fontSize: 14,
            height: 1.4,
            fontWeight: FontWeight.w700,
            color: palette.text1,
          ),

          /// Hint
          displayMedium: _globalTextStyle.copyWith(
            fontSize: 16,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text2,
          ),
          displaySmall: _globalTextStyle.copyWith(
            fontSize: 12,
            height: 1.4,
            fontWeight: FontWeight.w400,
            color: palette.text2,
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: palette.text3,
          unselectedLabelColor: palette.text3,
        ),
      );
}
