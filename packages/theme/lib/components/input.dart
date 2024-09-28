import 'package:flutter/material.dart';
import 'package:theme/theme/app_theme.dart';

class CustomInputThemeData extends ThemeExtension<CustomInputThemeData> {
  Color? accent;
  Color? primary;
  Color? secondary;
  Color? alert;
  Color? bckgr;
  Color? secondaryBckgr;
  Color? disabled;
  Color? pressed;
  Color? activeSecondary;

  CustomInputThemeData(
      {this.accent,
      this.activeSecondary,
      this.alert,
      this.bckgr,
      this.disabled,
      this.pressed,
      this.primary,
      this.secondary,
      this.secondaryBckgr});

  CustomInputThemeData.light() {
    accent = AppTheme.blue.shade50!;
    primary = AppTheme.gray.shade50!;
    secondary = AppTheme.gray.shade40!;
    alert = AppTheme.alert.shade40!;
    bckgr = AppTheme.white;
    secondaryBckgr = AppTheme.gray.shade10!;
    disabled = AppTheme.gray.shade30!;
    pressed = AppTheme.gray.shade20!;
    activeSecondary = AppTheme.blue.shade20!;
  }

  CustomInputThemeData.dark() {
    accent = AppTheme.blue.shade50!;
    primary = AppTheme.gray.shade0!;
    secondary = AppTheme.gray.shade20!;
    alert = AppTheme.alert.shade40!;
    bckgr = AppTheme.gray.shade50!;
    secondaryBckgr = AppTheme.gray.shade45!;
    disabled = AppTheme.gray.shade40!;
    pressed = AppTheme.gray.shade30!;
    activeSecondary = AppTheme.blue.shade60!;
  }

  @override
  ThemeExtension<CustomInputThemeData> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomInputThemeData> lerp(
      covariant ThemeExtension<CustomInputThemeData>? other, double t) {
    if (other is! CustomInputThemeData) {
      return this;
    }
    return other;
  }
}
