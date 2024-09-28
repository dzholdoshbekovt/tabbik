import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:theme/fonts/app_fonts_styles.dart';
import 'package:theme/fonts/swatchers.dart';

@lazySingleton
class IosFonts implements AppFontsStyles {
  @override
  AppFontSwatcher<TextStyle> get fonts => _iosFonts;

  final AppFontSwatcher<TextStyle> _iosFonts = AppFontSwatcher<TextStyle>({
    'lExtrabold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.extraBold,
      height: AppFontsStyles.iosLineHeights.h2,
      fontSize: AppFontsStyles.iosFontSizes.s3,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'lBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.iosLineHeights.h2,
      fontSize: AppFontsStyles.iosFontSizes.s3,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'mBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.iosLineHeights.h3,
      fontSize: AppFontsStyles.iosFontSizes.s2,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'mSemibold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.iosLineHeights.h3,
      fontSize: AppFontsStyles.iosFontSizes.s2,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'mRegular': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.regular,
      height: AppFontsStyles.iosLineHeights.h3,
      fontSize: AppFontsStyles.iosFontSizes.s2,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'sBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.iosLineHeights.h4,
      fontSize: AppFontsStyles.iosFontSizes.s1,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'sSemibold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.iosLineHeights.h4,
      fontSize: AppFontsStyles.iosFontSizes.s1,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'sRegular': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.regular,
      height: AppFontsStyles.iosLineHeights.h4,
      fontSize: AppFontsStyles.iosFontSizes.s1,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'xsRegular': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.regular,
      height: AppFontsStyles.iosLineHeights.h3,
      fontSize: AppFontsStyles.iosFontSizes.s0,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'xsBold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.iosLineHeights.h3,
      fontSize: AppFontsStyles.iosFontSizes.s0,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'xsSemibold': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.iosLineHeights.h3,
      fontSize: AppFontsStyles.iosFontSizes.s0,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'header1': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.iosLineHeights.h0,
      fontSize: AppFontsStyles.iosFontSizes.s6,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
    'header2': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.bold,
      height: AppFontsStyles.iosLineHeights.h0,
      fontSize: AppFontsStyles.iosFontSizes.s5,
      letterSpacing: AppFontsStyles.letterSpacing.l1,
    ),
    'header3': TextStyle(
      fontFamily: AppFontsStyles.fontFamily,
      fontWeight: AppFontsStyles.fontWeights.semiBold,
      height: AppFontsStyles.iosLineHeights.h1,
      fontSize: AppFontsStyles.iosFontSizes.s4,
      letterSpacing: AppFontsStyles.letterSpacing.l0,
    ),
  });
}
