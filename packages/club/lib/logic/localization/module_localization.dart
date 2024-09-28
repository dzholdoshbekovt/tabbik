import 'package:core/localization/app_locale.dart';
import 'package:flutter/material.dart';

class ModuleLocalization extends BaseLocalization {
  ModuleLocalization({super.appLocale, super.appPathFunction});

  static ModuleLocalization of(BuildContext context) =>
      Localizations.of(context, ModuleLocalization);

  static ModuleLocalization? _instance;
  static ModuleLocalization get instance =>
      _instance ?? (_instance = ModuleLocalization());

  @override
  void update(BuildContext context) {
    _instance =
        Localizations.of<ModuleLocalization>(context, ModuleLocalization);
    super.update(context);
  }
}

class ModuleLocalizationDelegate
    extends LocalizationsDelegate<ModuleLocalization> {
  ModuleLocalizationDelegate(
      {required this.supportedLocales, required this.getPathFunction});

  final List<Locale> supportedLocales;

  final String Function(Locale locale) getPathFunction;

  late Locale locale;

  @override
  bool isSupported(Locale locale) {
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<ModuleLocalization> load(Locale locale) async {
    this.locale = locale;
    final localization = ModuleLocalization(
      appLocale: locale,
      appPathFunction: getPathFunction,
    );
    await localization.load();

    return localization;
  }

  @override
  bool shouldReload(ModuleLocalizationDelegate old) => old.locale != locale;
}
