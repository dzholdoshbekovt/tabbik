import 'package:theme/theme/theme_helper.dart';

class AppLineHeights<T> extends AppSwatcher<int, T> {
  AppLineHeights(super.swatch);

  T get h0 => this[0]!;
  T get h1 => this[1]!;
  T get h2 => this[2]!;
  T get h3 => this[3]!;
  T get h4 => this[4]!;
  T get h5 => this[5]!;
}

class AppFontSize<T> extends AppSwatcher<int, T> {
  AppFontSize(super.swatch);

  T get s0 => this[0]!;
  T get s1 => this[1]!;
  T get s2 => this[2]!;
  T get s3 => this[3]!;
  T get s4 => this[4]!;
  T get s5 => this[5]!;
  T get s6 => this[6]!;
}

class AppFontWeights<T> extends AppSwatcher<String, T> {
  AppFontWeights(super.swatch);

  T get bold => this['bold']!;
  T get semiBold => this['semibold']!;
  T get regular => this['regular']!;
  T get extraBold => this['extrabold']!;
}

class AppLetterSpacing<T> extends AppSwatcher<int, T> {
  AppLetterSpacing(super.swatch);

  T get l0 => this[0]!;
  T get l1 => this[1]!;
}

class AppFontSwatcher<T> extends AppSwatcher<String, T> {
  AppFontSwatcher(super.swatch);

  T get lBold => this['lBold']!;
  T get lSemibold => this['lExtrabold']!;
  T get mBold => this['mBold']!;
  T get mSemibold => this['mSemibold']!;
  T get mRegular => this['mRegular']!;
  T get sBold => this['sBold']!;
  T get sSemibold => this['sSemibold']!;
  T get sRegular => this['sRegular']!;
  T get xsBold => this['xsBold']!;
  T get xsSemibold => this['xsSemibold']!;
  T get xsRegular => this['xsRegular']!;
  T get header1 => this['header1']!;
  T get header2 => this['header2']!;
  T get header3 => this['header3']!;
}
