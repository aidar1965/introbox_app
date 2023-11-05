import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';

// по какой причине показывается сообщение
// влияет на фон сообщения
enum Reason {
  error, // ошибка
  neutral, // нейтральное ообщение
}

class CommonFunctions {
  // показываем стилизованный SnackBar
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showMessage(
    BuildContext context,
    String message,
    Reason reason, {
    VoidCallback? onTap,
  }) {
    // подбор цвета для фона
    final Color backgroundColor;
    final Color textColor;
    String mess = message;
    switch (reason) {
      case Reason.error:
        backgroundColor = Colors.red;
        textColor = Colors.white;
        break;
      case Reason.neutral:
        backgroundColor = Colors.grey;
        textColor = Colors.black87;
    }

    if (mess.startsWith('.')) {
      mess = mess.substring(1);
    }

    if (mess.endsWith('.')) {
      mess = mess.substring(0, mess.length - 1);
    }

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(Values.horizontalPadding, 0,
            Values.horizontalPadding, Values.horizontalPadding),
        padding: EdgeInsets.zero,
        backgroundColor: backgroundColor,
        content: InkWell(
          onTap: (onTap != null)
              ? () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  onTap();
                }
              : null,
          borderRadius: BorderRadius.circular(Values.borderRadius),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(mess,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w400, color: textColor)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  static String dateToString(DateTime? value, Locale? locale) {
    if (value == null) {
      return '';
    } else {
      return DateFormat('dd.MM.y', locale?.languageCode).format(value);

      // String ret = '${value.day < 10 ? '0' : ''}${value.day}.${value.month < 10 ? '0' : ''}${value.month}.${value.year}';
    }
  }

  // ---------------------------------------------------------------------------
  static String separateThousands(double src, int precision) {
    // (1, 2) => '1.00'
    // (1.9999999, 4) => '1.9999'
    // (1.99, 4) => '1.9900'
    // (9999.999, 3) => '9 999.999'
    // (1000, 1) => '1 000.0'
    // (-1000000, 0) => '-1 000 000'
    // (0, 0) => '0'

    final Iterable<String> parts = src.toString().split('.');

    // левая часть
    final String inverse = parts.elementAt(0).split('').reversed.join('');
    final RegExp r = RegExp(r'(\d){3}|(\d+)');
    final String separatedLeft = r
        .allMatches(inverse)
        .map((match) => match.group(0))
        .map((p) => (p ?? '').split('').reversed.join())
        .toList()
        .reversed
        .join(' ');
    String result = (src < 0 ? '-' : '') + separatedLeft + '.';

    // правая часть
    if (parts.length > 1) {
      final String rightOrigin = parts.elementAt(1);
      if (rightOrigin.length < precision) {
        result += rightOrigin;
        result = result.padRight(
            result.length + precision - rightOrigin.length, '0');
      } else if (rightOrigin.length > precision) {
        result += rightOrigin.substring(0, precision);
      } else {
        result += rightOrigin;
      }
    }

    if (result.endsWith('.')) {
      return result.substring(0, result.length - 1);
    } else {
      return result;
    }
  }

  // ---------------------------------------------------------------------------
  static Future<void> showStyledDialog({
    required BuildContext context,
    String? title,
    required String message,
    required String positiveButtonText,
    String? negativeButtonText,
    Function()? onPositiveTap,
    Function()? onNegativeTap,
    bool reverse = false,
    double? actionButtonsWidth,
  }) {
    return showDialog<Object?>(
        context: context,
        builder: (context) {
          final Widget button = ElevatedButton(
              child: Text(negativeButtonText ?? ''),
              onPressed: () {
                Navigator.of(context).pop();
                if (onNegativeTap != null) {
                  onNegativeTap();
                }
              });
          return AlertDialog(
            surfaceTintColor: Colors.transparent,
            actionsPadding: Theme.of(context).dialogTheme.actionsPadding,
            title: (title?.isNotEmpty ?? false)
                ? Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).dialogTheme.titleTextStyle,
                  )
                : null,
            content: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(message,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black87,
                      )),
            ),
            contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 16),

            actions: <Widget>[
              ...(negativeButtonText != null && !reverse)
                  ? [
                      button,
                    ]
                  : [],
              ElevatedButton(
                  child: Text(positiveButtonText),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (onPositiveTap != null) {
                      onPositiveTap();
                    }
                  }),
              ...(negativeButtonText != null && reverse) ? [button] : [],
            ],
            // actionsPadding: const EdgeInsets.only(left: 24.0),
            actionsAlignment: MainAxisAlignment.center,
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            scrollable: false,
          );
        });
  }

  // static IconData getIconData(Currency currency) {
  //   switch (currency.currencyType) {
  //     case CurrencyType.USD:
  //       return TouchWalletIcons.dollarOutlined;
  //     case CurrencyType.BTC:
  //       return TouchWalletIcons.bitcoinOutlined;
  //     case CurrencyType.ETH:
  //       return TouchWalletIcons.etherium;
  //     case CurrencyType.USDT:
  //       return TouchWalletIcons.usdt;
  //     case CurrencyType.LTC:
  //       return TouchWalletIcons.ltc;
  //     case CurrencyType.BNB:
  //       return TouchWalletIcons.bnb;
  //     case CurrencyType.XMR:
  //       return TouchWalletIcons.xmr;
  //     case CurrencyType.DOGE:
  //       return TouchWalletIcons.doge;
  //   }
  // }

  static String monthsToString(int duration) {
    switch (duration) {
      case 6:
        return 'monthsPlurals'.plural(6);
      case 12:
        return 'yearsPlurals'.plural(1);
      case 18:
        return 'yearsPlurals'.plural(1) + ' ' + 'monthsPlurals'.plural(6);
      case 24:
        return 'yearsPlurals'.plural(2);
      case 30:
        return 'yearsPlurals'.plural(2) + ' ' + 'monthsPlurals'.plural(6);
      case 36:
        return 'yearsPlurals'.plural(3);
      default:
        return 'Такая продолжительность не поддерживается';
    }
  }

  static Locale parseStringToLocale(String? localeString) {
    if (localeString == null) {
      return const Locale('en', 'US');
    }
    if (localeString.contains('ar')) {
      return const Locale('ar');
    } else if (localeString.contains('az')) {
      return const Locale('az', 'AZ');
    } else if (localeString.contains('bn')) {
      return const Locale('bn', 'IN');
    } else if (localeString.contains('cs')) {
      return const Locale('cs', 'CZ');
    } else if (localeString.contains('de')) {
      return const Locale('de', 'DE');
    } else if (localeString.contains('el')) {
      return const Locale('el', 'GR');
    } else if (localeString.contains('en')) {
      return const Locale('en', 'US');
    } else if (localeString.contains('fa')) {
      return const Locale('fa', 'IR');
    } else if (localeString.contains('fr')) {
      return const Locale('fr', 'FR');
    } else if (localeString.contains('hi')) {
      return const Locale('hi', 'IN');
    } else if (localeString.contains('hu')) {
      return const Locale('hu', 'HU');
    } else if (localeString.contains('id')) {
      return const Locale('id', 'ID');
    } else if (localeString.contains('it')) {
      return const Locale('it', 'IT');
    } else if (localeString.contains('ja')) {
      return const Locale('ja', 'JP');
    } else if (localeString.contains('ko')) {
      return const Locale('ko', 'KR');
    } else if (localeString.contains('ms')) {
      return const Locale('ms', 'MY');
    } else if (localeString.contains('nl')) {
      return const Locale('nl', 'NL');
    } else if (localeString.contains('pl')) {
      return const Locale('pl', 'PL');
    } else if (localeString.contains('pt')) {
      return const Locale('pt', 'PT');
    } else if (localeString.contains('ro')) {
      return const Locale('ro', 'RO');
    } else if (localeString.contains('ru')) {
      return const Locale('ru', 'RU');
    } else if (localeString.contains('th')) {
      return const Locale('th', 'TH');
    } else if (localeString.contains('tr')) {
      return const Locale('tr', 'TR');
    } else if (localeString.contains('uk')) {
      return const Locale('uk', 'UA');
    } else if (localeString.contains('uz')) {
      return const Locale('uz', 'UZ');
    } else if (localeString.contains('vi')) {
      return const Locale('vi', 'VN');
    } else if (localeString.contains('zh')) {
      return const Locale('zh');
    } else {
      return const Locale('en', 'US');
    }
  }

  // ---------------------------------------------------------------------------
  // парсит 'en_US' -> 'en', 'en-US' -> 'en',  'EN' -> 'en'
  // разбирает только ru и en
  static String? parseLocale(String? src) {
    final inLowerCase = src?.toLowerCase();
    if (inLowerCase == null) {
      return null;
    }
    if (inLowerCase.contains('ar')) {
      return 'ar';
    } else if (inLowerCase.contains('az')) {
      return 'az';
    } else if (inLowerCase.contains('bn')) {
      return 'bn';
    } else if (inLowerCase.contains('cs')) {
      return 'cs';
    } else if (inLowerCase.contains('de')) {
      return 'de';
    } else if (inLowerCase.contains('el')) {
      return 'el';
    } else if (inLowerCase.contains('en')) {
      return 'en';
    } else if (inLowerCase.contains('fa')) {
      return 'fa';
    } else if (inLowerCase.contains('fr')) {
      return 'fr';
    } else if (inLowerCase.contains('hi')) {
      return 'hi';
    } else if (inLowerCase.contains('hu')) {
      return 'hu';
    } else if (inLowerCase.contains('id')) {
      return 'id';
    } else if (inLowerCase.contains('it')) {
      return 'it';
    } else if (inLowerCase.contains('ja')) {
      return 'ja';
    } else if (inLowerCase.contains('ko')) {
      return 'ko';
    } else if (inLowerCase.contains('ms')) {
      return 'ms';
    } else if (inLowerCase.contains('nl')) {
      return 'nl';
    } else if (inLowerCase.contains('pl')) {
      return 'pl';
    } else if (inLowerCase.contains('pt')) {
      return 'pt';
    } else if (inLowerCase.contains('ro')) {
      return 'ro';
    } else if (inLowerCase.contains('ru')) {
      return 'ru';
    } else if (inLowerCase.contains('th')) {
      return 'th';
    } else if (inLowerCase.contains('tr')) {
      return 'tr';
    } else if (inLowerCase.contains('uk')) {
      return 'uk';
    } else if (inLowerCase.contains('uz')) {
      return 'uz';
    } else if (inLowerCase.contains('vi')) {
      return 'vi';
    } else if (inLowerCase.contains('zh')) {
      return 'zh';
    }

    return null;
  }
}
