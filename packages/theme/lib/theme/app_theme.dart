import 'package:flutter/material.dart';
import 'package:theme/components/button.dart';
import 'package:theme/components/controllers.dart';
import 'package:theme/components/input.dart';
import 'package:theme/components/main.dart';
import 'package:theme/fonts/app_fonts.dart';
import 'package:theme/theme/swatchers.dart';
import 'package:theme/theme/theme_helper.dart';

class AppTheme {
  static const AppColorSwatch blue = AppColorSwatch(0xFF006ae2, {
    0: Color(0xFFe9f3ff),
    10: Color(0xFFafd4ff),
    20: Color(0xFF79b6fc),
    40: Color(0xFF3b93f6),
    50: Color(0xFF006ae2),
    60: Color(0xFF065cbd),
    80: Color(0xFF143F75),
    90: Color(0xFF082345),
  });

  static const AppColorSwatch gray = AppColorSwatch(0xFF2a2f34, {
    0: Color(0xFFf4f6f8),
    10: Color(0xFFe3e8ec),
    20: Color(0xFFc5cdd4),
    30: Color(0xFF8a949e),
    40: Color(0xFF59636d),
    45: Color(0xFF394047),
    50: Color(0xFF1F2328),
    60: Color(0xFF16181a),
  });

  static const Color white = Color(0xFFFFFFFF);

  static const AppColorSwatch yellow = AppColorSwatch(0xFFfebf24, {
    10: Color(0xFFfff9ea),
    20: Color(0xFFfff0cd),
    30: Color(0xFFffe097),
    40: Color(0xFFfed063),
    50: Color(0xFFf4bb34),
  });

  static const AppColorSwatch alert = AppColorSwatch(0xFF009361, {
    10: Color(0xFFfdeced),
    30: Color(0xFFF44B57),
    40: Color(0xFFe73a46),
    80: Color(0xFF60070D),
  });

  static const AppColorSwatch green = AppColorSwatch(0xFF5CE091, {
    10: Color(0xFFE3F9EC),
    30: Color(0xFF5CE091),
    40: Color(0xFF26CA67),
    50: Color(0xFF0EAA4C),
  });

  static const AppShadow grayShadow = AppShadow(
    color: Color(0x0F384a5e),
    x: 0,
    y: 12,
    blur: 16,
    spread: 0,
  );

  static const AppShadow blueShadow = AppShadow(
    color: Color(0x30044084),
    x: 0,
    y: 12,
    blur: 16,
    spread: 0,
  );

  static LinearGradient blueGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      blue.shade40!,
      blue.shade50!,
    ],
  );
  static LinearGradient darkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      gray.shade40!,
      gray.shade60!,
    ],
  );

  static final ThemeData light = ThemeData(
    primaryColor: AppTheme.gray.shade0,
    colorScheme: const ColorScheme.light(primary: blue),
    splashFactory: InkSparkle.splashFactory,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(
          allowEnterRouteSnapshotting: false,
        ),
      },
    ),
    textTheme: TextTheme(
      bodyLarge: AppFonts.font.lBold,
      bodyMedium: AppFonts.font.mBold,
      bodySmall: AppFonts.font.sBold,
      titleLarge: AppFonts.font.header3,
      headlineSmall: AppFonts.font.header2,
      headlineMedium: AppFonts.font.header2,
    ).apply(
      bodyColor: AppTheme.gray.shade50!,
      displayColor: AppTheme.gray.shade50!,
      decorationColor: AppTheme.gray.shade50!,
    ),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: AppTheme.gray.shade0!,
      surfaceTintColor: AppTheme.gray.shade0!,
      shadowColor: Colors.transparent,
      dividerColor: AppTheme.gray.shade10!,
      dayStyle: AppFonts.font.mRegular,
      weekdayStyle: AppFonts.font.mRegular,
      yearStyle: AppFonts.font.mRegular,
      dayBackgroundColor: MaterialStateProperty.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? AppTheme.blue.shade50!
              : Colors.transparent),
      dayForegroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppTheme.gray.shade0;
        } else if (states.contains(MaterialState.disabled)) {
          return AppTheme.gray.shade40;
        } else {
          return AppTheme.gray.shade50!;
        }
      }),
      dayOverlayColor:
          MaterialStateProperty.all(AppTheme.blue.shade50!.withOpacity(0.12)),
      yearBackgroundColor: MaterialStateProperty.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? AppTheme.blue.shade50!
              : Colors.transparent),
      yearForegroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppTheme.gray.shade0;
        } else if (states.contains(MaterialState.disabled)) {
          return AppTheme.gray.shade40;
        } else {
          return AppTheme.gray.shade50!;
        }
      }),
      yearOverlayColor:
          MaterialStateProperty.all(AppTheme.blue.shade50!.withOpacity(0.12)),
      headerHelpStyle: AppFonts.font.header3,
      headerHeadlineStyle: AppFonts.font.header1,
      cancelButtonStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return AppTheme.blue.shade40;
            } else if (states.contains(MaterialState.disabled)) {
              return AppTheme.gray.shade40;
            } else {
              return AppTheme.gray.shade50!;
            }
          },
        ),
      ),
    ),
    extensions: [
      CustomInputThemeData.light(),
      CustomControllersThemeData.light(),
      CustomMainThemeData.light(),
      CustomButtonThemeData.light(),
    ],
  );

  static final ThemeData dark = ThemeData(
    primaryColor: AppTheme.gray.shade0,
    colorScheme: const ColorScheme.dark(primary: blue),
    splashFactory: InkSparkle.splashFactory,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(
          allowEnterRouteSnapshotting: false,
        ),
      },
    ),
    textTheme: TextTheme(
      bodyLarge: AppFonts.font.lBold,
      bodyMedium: AppFonts.font.mBold,
      bodySmall: AppFonts.font.sBold,
      titleLarge: AppFonts.font.header3,
      headlineSmall: AppFonts.font.header2,
      headlineMedium: AppFonts.font.header2,
    ).apply(
      bodyColor: AppTheme.gray.shade0!,
      displayColor: AppTheme.gray.shade0!,
      decorationColor: AppTheme.gray.shade0!,
    ),
    datePickerTheme: DatePickerThemeData(
        backgroundColor: AppTheme.gray.shade60!,
        surfaceTintColor: AppTheme.gray.shade60!,
        shadowColor: Colors.transparent,
        dividerColor: AppTheme.gray.shade45!,
        dayStyle: AppFonts.font.mRegular,
        weekdayStyle: AppFonts.font.mRegular,
        yearStyle: AppFonts.font.mRegular,
        dayBackgroundColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? AppTheme.blue.shade50!
                : Colors.transparent),
        dayForegroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppTheme.white;
          } else if (states.contains(MaterialState.disabled)) {
            return AppTheme.gray.shade20!;
          } else if (states.contains(MaterialState.pressed)) {
            return AppTheme.blue.shade50!;
          } else {
            return AppTheme.gray.shade0!;
          }
        }),
        dayOverlayColor:
            MaterialStateProperty.all(AppTheme.blue.shade50!.withOpacity(0.12)),
        yearBackgroundColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? AppTheme.blue.shade50!
                : Colors.transparent),
        yearForegroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppTheme.white;
          } else if (states.contains(MaterialState.disabled)) {
            return AppTheme.gray.shade20!;
          } else if (states.contains(MaterialState.pressed)) {
            return AppTheme.blue.shade50!;
          } else {
            return AppTheme.gray.shade0!;
          }
        }),
        yearOverlayColor:
            MaterialStateProperty.all(AppTheme.blue.shade50!.withOpacity(0.12)),
        headerHelpStyle: AppFonts.font.header3,
        headerHeadlineStyle: AppFonts.font.header1,
        cancelButtonStyle: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.pressed)) {
                return AppTheme.blue.shade20;
              } else if (states.contains(MaterialState.disabled)) {
                return AppTheme.gray.shade20;
              } else {
                return AppTheme.gray.shade0!;
              }
            },
          ),
        )),
    extensions: [
      CustomInputThemeData.dark(),
      CustomControllersThemeData.dark(),
      CustomMainThemeData.dark(),
      CustomButtonThemeData.dark(),
    ],
  );
}
