import 'package:core/localization/localization.dart';
import 'package:core/settings/app_settings_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppSettings extends InheritedWidget {
  final AppSettingsNotifier settings;

  const AppSettings({super.key, required this.settings, required super.child});

  static AppSettings? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppSettings>();

  void setLocale(Locale locale) {
    settings.setLocale(locale);
  }

  void setThemeMode(ThemeMode mode) => settings.setThemeMode(mode);

  void switchThemeMode() => settings.themeMode == ThemeMode.light
      ? settings.setThemeMode(ThemeMode.dark)
      : settings.setThemeMode(ThemeMode.light);

  Locale get locale => settings.locale ?? AppLocales.ru;
  ThemeMode? get themeMode => settings.themeMode;

  ThemeMode get themeModeBySystem =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light;

  Brightness get brightness =>
      themeMode == ThemeMode.dark ? Brightness.light : Brightness.dark;

  @override
  bool updateShouldNotify(AppSettings oldWidget) =>
      oldWidget.settings != settings;
}
