import 'package:flutter/material.dart';
import 'package:theme/fonts/swatchers.dart';

abstract class AppFontsStyles {
  AppFontSwatcher get fonts;

  static String fontFamily = 'Manrope';

  static AppLineHeights androidLineHeights =
      AppLineHeights<double>({0: 1.16, 1: 1.18, 2: 1.20, 3: 1.36, 4: 1.40});

  static AppLineHeights iosLineHeights =
      AppLineHeights<double>({0: 1.16, 1: 1.18, 2: 1.20, 3: 1.36, 4: 1.40});

  static AppFontSize androidFontSizes =
      AppFontSize<double>({0: 12, 1: 14, 2: 16, 3: 18, 4: 20, 5: 24, 6: 28});

  static AppFontSize iosFontSizes =
      AppFontSize<double>({0: 13, 1: 15, 2: 17, 3: 19, 4: 22, 5: 26, 6: 32});

  static AppLetterSpacing letterSpacing =
      AppLetterSpacing<double>({0: -0.02, 1: 0});

  static AppFontWeights fontWeights = AppFontWeights<FontWeight>({
    'regular': FontWeight.w400,
    'semibold': FontWeight.w600,
    'bold': FontWeight.w700,
    'extrabold': FontWeight.w800
  });
}
