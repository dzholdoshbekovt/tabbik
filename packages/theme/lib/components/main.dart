import 'package:flutter/material.dart';
import 'package:theme/theme/app_theme.dart';

class CustomMainThemeData extends ThemeExtension<CustomMainThemeData> {
  Color? accent;
  Color? primary;
  Color? secondary;
  Color? extra;
  Color? darkExtra;
  Color? bckgr;
  Color? darkAccent;
  Color? white;

  Color? success;
  Color? darkSuccess;
  Color? whitePressed;
  Color? alert;

  Color? onActive;
  Color? disabled;

  Color? alertBackground;

  BoxShadow? grayShadow;
  BoxShadow? blueShadow;

  Color? shimmerBase;
  Color? shimmerHighlight;

  CustomMainThemeData(
      {this.accent,
      this.bckgr,
      this.darkAccent,
      this.extra,
      this.primary,
      this.secondary,
      this.white,
      this.success,
      this.whitePressed,
      this.grayShadow,
      this.alert,
      this.alertBackground,
      this.darkSuccess,
      this.disabled,
      this.onActive});

  CustomMainThemeData.light() {
    accent = AppTheme.blue.shade50!;
    primary = AppTheme.gray.shade50!;
    secondary = AppTheme.gray.shade40!;
    extra = AppTheme.yellow.shade40!;
    darkExtra = AppTheme.yellow.shade50!;
    bckgr = AppTheme.gray.shade0!;
    darkAccent = AppTheme.blue.shade60!;
    white = AppTheme.white;

    success = AppTheme.green.shade40!;
    whitePressed = AppTheme.gray.shade10!;
    alert = AppTheme.alert.shade30!;

    onActive = AppTheme.blue.shade10!;
    disabled = AppTheme.gray.shade20!;

    darkSuccess = AppTheme.green.shade50!;

    alertBackground = AppTheme.alert.shade10!;

    grayShadow = BoxShadow(
      color: AppTheme.grayShadow.color!,
      offset: Offset(AppTheme.grayShadow.x!, AppTheme.grayShadow.y!),
      blurRadius: AppTheme.grayShadow.blur!,
      spreadRadius: AppTheme.grayShadow.spread!,
    );

    shimmerBase = const Color(0xFFF4F6F8);
    shimmerHighlight = const Color(0xFFE0E6ED);
    blueShadow = BoxShadow(
      color: AppTheme.blueShadow.color!,
      offset: Offset(AppTheme.blueShadow.x!, AppTheme.blueShadow.y!),
      blurRadius: AppTheme.blueShadow.blur!,
      spreadRadius: AppTheme.blueShadow.spread!,
    );
  }

  CustomMainThemeData.dark() {
    accent = AppTheme.blue.shade50!;
    primary = AppTheme.gray.shade0!;
    secondary = AppTheme.gray.shade20!;
    extra = AppTheme.yellow.shade50!;
    darkExtra = AppTheme.yellow.shade40!;
    bckgr = AppTheme.gray.shade60!;
    darkAccent = AppTheme.blue.shade40!;
    white = AppTheme.gray.shade50!;

    success = AppTheme.green.shade50!;
    whitePressed = AppTheme.gray.shade45!;
    alert = AppTheme.alert.shade40!;

    onActive = AppTheme.blue.shade80!;
    disabled = AppTheme.gray.shade40!;

    darkSuccess = AppTheme.green.shade40!;

    alertBackground = AppTheme.alert.shade80!;

    grayShadow = BoxShadow(
      color: AppTheme.grayShadow.color!,
      offset: Offset(AppTheme.grayShadow.x!, AppTheme.grayShadow.y!),
      blurRadius: AppTheme.grayShadow.blur!,
      spreadRadius: AppTheme.grayShadow.spread!,
    );

    shimmerBase = const Color(0xFF293036);
    shimmerHighlight = const Color(0xFF4D5761);
    blueShadow = BoxShadow(
      color: AppTheme.blueShadow.color!,
      offset: Offset(AppTheme.blueShadow.x!, AppTheme.blueShadow.y!),
      blurRadius: AppTheme.blueShadow.blur!,
      spreadRadius: AppTheme.blueShadow.spread!,
    );
  }

  @override
  ThemeExtension<CustomMainThemeData> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomMainThemeData> lerp(
      covariant ThemeExtension<CustomMainThemeData>? other, double t) {
    if (other is! CustomMainThemeData) {
      return this;
    }
    return other;
  }
}
