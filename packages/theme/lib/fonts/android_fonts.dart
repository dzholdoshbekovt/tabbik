import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:theme/fonts/app_fonts_styles.dart';
import 'package:theme/fonts/swatchers.dart';

@lazySingleton
class AndroidFonts implements AppFontsStyles {
  @override
  AppFontSwatcher<TextStyle> get fonts => _androidfonts;

  final AppFontSwatcher<TextStyle> _androidfonts = AppFontSwatcher<TextStyle>({
    'lExtrabold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.extraBold,
      height: AppFontsStyles.androidLineHeights.h2,
      fontSize: AppFontsStyles.androidFontSizes.s3,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'lBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.androidLineHeights.h2,
      fontSize: AppFontsStyles.androidFontSizes.s3,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'mBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.androidLineHeights.h3,
      fontSize: AppFontsStyles.androidFontSizes.s2,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'mSemibold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.androidLineHeights.h3,
      fontSize: AppFontsStyles.androidFontSizes.s2,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'mRegular': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.regular,
      height: AppFontsStyles.androidLineHeights.h3,
      fontSize: AppFontsStyles.androidFontSizes.s2,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'sBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.androidLineHeights.h4,
      fontSize: AppFontsStyles.androidFontSizes.s1,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'sSemibold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.androidLineHeights.h4,
      fontSize: AppFontsStyles.androidFontSizes.s1,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'sRegular': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.regular,
      height: AppFontsStyles.androidLineHeights.h4,
      fontSize: AppFontsStyles.androidFontSizes.s1,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'xsRegular': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.regular,
      height: AppFontsStyles.androidLineHeights.h3,
      fontSize: AppFontsStyles.androidFontSizes.s0,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'xsBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.androidLineHeights.h3,
      fontSize: AppFontsStyles.androidFontSizes.s0,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'xsSemibold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.androidLineHeights.h3,
      fontSize: AppFontsStyles.androidFontSizes.s0,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'header1': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.androidLineHeights.h0,
      fontSize: AppFontsStyles.androidFontSizes.s6,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'header2': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.androidLineHeights.h0,
      fontSize: AppFontsStyles.androidFontSizes.s5,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'header3': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.androidLineHeights.h1,
      fontSize: AppFontsStyles.androidFontSizes.s4,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
  });
}
