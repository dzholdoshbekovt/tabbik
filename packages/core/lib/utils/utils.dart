import 'package:core/constants/settings.dart';
import 'package:core/utils/decimal/decimal.dart';
import 'package:core/utils/decimal/intl.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class CoreUtils {
  static String balanceFormat(Decimal? balance,
      {bool isInteger = false, bool sign = false}) {
    if (balance == null) {
      return '';
    }

    String locale = 'ru_RU';
    intl.NumberFormat integerFormat =
        intl.NumberFormat(sign ? '+#,###;-#,###' : '#,###', locale);
    intl.NumberFormat doubleFormat =
        intl.NumberFormat(sign ? '+#,###.##;-#,###.##' : '#,###.##', locale);

    if (isInteger && (balance % Decimal.one) == Decimal.zero) {
      return integerFormat.format(DecimalIntl(balance));
    }
    return doubleFormat.format(DecimalIntl(balance)).replaceAll(',', '.');
  }

  static String? getEncryptedNumber(String? value,
      {String symbol = '•', int count = 4}) {
    if (value != null && value.length >= 6) {
      return '${symbol * count}${value.substring(value.length - 4, value.length)}';
    }
    return value;
  }

  static double getTextHeight(
      {required String text,
      required TextStyle style,
      double textScaleFactor = 1,
      required double maxWidth}) {
    final textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        textDirection: TextDirection.ltr,
        textScaler: TextScaler.linear(textScaleFactor))
      ..layout(maxWidth: maxWidth);

    return textPainter.height;
  }

  static double getAvailableWidth({required BuildContext context}) {
    double mediaWidth = MediaQuery.of(context).size.width;
    return mediaWidth > BreakPoints.lowWidth
        ? BreakPoints.lowWidth
        : mediaWidth;
  }
}
