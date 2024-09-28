import 'package:flutter/material.dart';
import 'package:theme/theme/app_theme.dart';

class CustomControllersThemeData
    extends ThemeExtension<CustomControllersThemeData> {
  Color? accent;
  Color? bckgr;
  Color? label;
  Color? lightBckgr;
  Color? pressed;
  // Color? primary;

  Color? text;

  CustomControllersThemeData({
    this.accent,
    this.bckgr,
    // this.primary,
    this.label,
    this.lightBckgr,
    this.pressed,
    this.text,
  });

  CustomControllersThemeData.light() {
    // primary = AppTheme.gray.shade50!;
    accent = AppTheme.blue.shade50!;
    bckgr = AppTheme.gray.shade40!;
    label = AppTheme.white;
    lightBckgr = AppTheme.gray.shade20!;
    pressed = AppTheme.gray.shade10!;
    text = AppTheme.gray.shade50!;
  }

  CustomControllersThemeData.dark() {
    // primary = AppTheme.gray.shade50!;
    accent = AppTheme.blue.shade50!;
    bckgr = AppTheme.gray.shade40!;
    label = AppTheme.white;
    lightBckgr = AppTheme.gray.shade45!;
    pressed = AppTheme.gray.shade40!;
    text = AppTheme.gray.shade0!;
  }

  @override
  ThemeExtension<CustomControllersThemeData> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomControllersThemeData> lerp(
      covariant ThemeExtension<CustomControllersThemeData>? other, double t) {
    if (other is! CustomControllersThemeData) {
      return this;
    }
    return other;
  }
}
