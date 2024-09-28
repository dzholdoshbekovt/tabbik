import 'package:flutter/material.dart';
import 'package:theme/theme/app_theme.dart';
import 'package:theme/theme/component.dart';

class ButtonSize extends ComponentSizeSwatcher<String> {
  ButtonSize(super.primary, super.swatch);

  Size get L => this['L']!;
  Size get M => this['M']!;
  Size get S => this['S']!;
}

class AppButtonSizes {
  static final overallSize = ButtonSize('L', {
    'L': const Size(500, 52),
    'M': const Size(284, 48),
    'S': const Size(142, 48),
  });
}

class CustomButtonThemeData extends ThemeExtension<CustomButtonThemeData> {
  ButtonTypeStyle? primary;
  ButtonTypeStyle? secondary;
  ButtonTypeStyle? tertiary;
  ButtonTypeStyle? alert;

  CustomButtonThemeData(
      {this.primary, this.secondary, this.tertiary, this.alert});

  ButtonSize size = AppButtonSizes.overallSize;

  CustomButtonThemeData.light() {
    primary = ButtonTypeStyle(
      defaultBckgr: AppTheme.blue.shade50!,
      contentBckgr: AppTheme.white,
      pressedBckgr: AppTheme.blue.shade60!,
      disabledBckgr: AppTheme.gray.shade30!,
      disabledContent: AppTheme.white,
    );
    secondary = ButtonTypeStyle(
      defaultBckgr: AppTheme.blue.shade0!,
      contentBckgr: AppTheme.blue.shade50!,
      pressedBckgr: AppTheme.blue.shade10!,
      disabledBckgr: AppTheme.gray.shade10!,
      disabledContent: AppTheme.gray.shade30!,
    );
    tertiary = ButtonTypeStyle(
      defaultBckgr: AppTheme.gray.shade0!,
      contentBckgr: AppTheme.gray.shade40!,
      pressedBckgr: AppTheme.gray.shade10!,
      disabledBckgr: AppTheme.gray.shade0!.withOpacity(0.6),
      disabledContent: AppTheme.gray.shade30!,
    );
    alert = ButtonTypeStyle(
      defaultBckgr: AppTheme.alert.shade30!,
      contentBckgr: AppTheme.white,
      pressedBckgr: AppTheme.alert.shade40!,
      disabledBckgr: AppTheme.gray.shade10!,
      disabledContent: AppTheme.gray.shade30!,
    );
  }

  CustomButtonThemeData.dark() {
    primary = ButtonTypeStyle(
      defaultBckgr: AppTheme.blue.shade50!,
      contentBckgr: AppTheme.white,
      pressedBckgr: AppTheme.blue.shade40!,
      disabledBckgr: AppTheme.gray.shade40!,
      disabledContent: AppTheme.white,
    );
    secondary = ButtonTypeStyle(
      defaultBckgr: AppTheme.blue.shade90!,
      contentBckgr: AppTheme.blue.shade50!,
      pressedBckgr: AppTheme.blue.shade80!,
      disabledBckgr: AppTheme.gray.shade50!,
      disabledContent: AppTheme.gray.shade40!,
    );
    tertiary = ButtonTypeStyle(
      defaultBckgr: AppTheme.gray.shade45!,
      contentBckgr: AppTheme.gray.shade10!,
      pressedBckgr: AppTheme.gray.shade40!,
      disabledBckgr: AppTheme.gray.shade0!.withOpacity(0.6),
      disabledContent: AppTheme.gray.shade30!,
    );
    alert = ButtonTypeStyle(
      defaultBckgr: AppTheme.alert.shade40!,
      contentBckgr: AppTheme.white,
      pressedBckgr: AppTheme.alert.shade30!,
      disabledBckgr: AppTheme.gray.shade10!,
      disabledContent: AppTheme.gray.shade30!,
    );
  }

  @override
  ThemeExtension<CustomButtonThemeData> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomButtonThemeData> lerp(
      covariant ThemeExtension<CustomButtonThemeData>? other, double t) {
    if (other is! CustomButtonThemeData) {
      return this;
    }
    return other;
  }
}

class ButtonTypeStyle {
  final Color defaultBckgr;
  final Color contentBckgr;
  final Color pressedBckgr;
  final Color disabledBckgr;
  final Color disabledContent;

  ButtonTypeStyle({
    required this.contentBckgr,
    required this.defaultBckgr,
    required this.disabledBckgr,
    required this.pressedBckgr,
    required this.disabledContent,
  });
}
