import 'package:flutter/material.dart';
import 'package:moki_tutor/presentation/values/dynamic_palette.dart';

import '../theme/dynamic_theme.dart';

/// расширение для сокращенного доступа к стилям текста и цветам
extension ContextExtension on BuildContext {
  // ---------------------------------------------------------------------------
  // ---------------------------------------------------------------------------
  // ---------------------------------------------------------------------------
  // TODO(Vadim): Поправить цвета, когда появится палитра:
  /// Заголовок 1:
  ///
  /// fontSize: 22,
  ///
  /// fontWeight: FontWeight.w600,
  ///
  /// color: ,
  TextStyle? get style22w600$title1 =>
      DynamicTheme.themeOf(this)?.textTheme.headlineMedium;

  /// Заголовок 2:
  ///
  /// fontSize: 18,
  ///
  /// fontWeight: FontWeight.w600,
  ///
  /// color: ,
  TextStyle? get style18w600$title2 =>
      DynamicTheme.themeOf(this)?.textTheme.headlineSmall;

  /// Заголовок 3:
  ///
  /// fontSize: 16,
  ///
  /// fontWeight: FontWeight.w600,
  ///
  /// color: ,
  TextStyle? get style16w600$title3 =>
      DynamicTheme.themeOf(this)?.textTheme.titleLarge;

  /// Заголовок 4:
  ///
  /// fontSize: 14,
  ///
  /// fontWeight: FontWeight.w600,
  ///
  /// color: ,
  TextStyle? get style14w600$title4 =>
      DynamicTheme.themeOf(this)?.textTheme.titleMedium;

  /// Текст 1:
  ///
  /// fontSize: 16,
  ///
  /// fontWeight: FontWeight.w400,
  ///
  /// color: ,
  TextStyle? get style16w400$text1 =>
      DynamicTheme.themeOf(this)?.textTheme.bodyLarge;

  /// Текст 2:
  ///
  /// fontSize: 14,
  ///
  /// fontWeight: FontWeight.w400,
  ///
  /// color: ,
  TextStyle? get style14w400$text2 =>
      DynamicTheme.themeOf(this)?.textTheme.bodyMedium;

  /// Текст 3:
  ///
  /// fontSize: 12,
  ///
  /// fontWeight: FontWeight.w400,
  ///
  /// color: ,
  TextStyle? get style12w400$text3 =>
      DynamicTheme.themeOf(this)?.textTheme.bodySmall;

  /// Кнопка 2 (разряженный текст):
  ///
  /// fontSize: 12,
  ///
  /// fontWeight: FontWeight.w700,
  ///
  /// letterSpacing: 1,
  ///
  /// color: ,
  TextStyle? get style12w700$button1 =>
      DynamicTheme.themeOf(this)?.textTheme.labelMedium;

  /// Кнопка 2:
  ///
  /// fontSize: 14,
  ///
  /// fontWeight: FontWeight.w700,
  ///
  /// color: ,
  TextStyle? get style14w700$button2 =>
      DynamicTheme.themeOf(this)?.textTheme.labelSmall;

  /// Hint большой:
  ///
  /// fontSize: 16,
  ///
  /// fontWeight: FontWeight.w400,
  ///
  /// color: ,
  TextStyle? get style16w400$$text1Grey =>
      DynamicTheme.themeOf(this)?.textTheme.displayMedium;

  /// Hint большой:
  ///
  /// fontSize: 12,
  ///
  /// fontWeight: FontWeight.w400,
  ///
  /// color: ,
  TextStyle? get style12w400$text3Grey =>
      DynamicTheme.themeOf(this)?.textTheme.displaySmall;

  // ---------------------------------------------------------------------------
  // ---------------------------------------------------------------------------
  // ---------------------------------------------------------------------------
  /// Предоставляет динамическую палитру цветов
  DynamicPalette? get palette => DynamicTheme.paletteOf(this);
}
