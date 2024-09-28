import 'package:core/localization/app_locale.dart';
import 'package:flutter/material.dart';

class CoreLocalization extends BaseLocalization {
  CoreLocalization({super.appLocale, super.appPathFunction});

  static CoreLocalization of(BuildContext context) =>
      Localizations.of(context, CoreLocalization);

  static CoreLocalization? _instance;
  static CoreLocalization get instance =>
      _instance ?? (_instance = CoreLocalization());

  @override
  void update(BuildContext context) {
    _instance = Localizations.of<CoreLocalization>(context, CoreLocalization);
    super.update(context);
  }
}

class CoreLocalizationDelegate extends LocalizationsDelegate<CoreLocalization> {
  CoreLocalizationDelegate(
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
  Future<CoreLocalization> load(Locale locale) async {
    this.locale = locale;
    final localization = CoreLocalization(
      appLocale: locale,
      appPathFunction: getPathFunction,
    );
    await localization.load();

    return localization;
  }

  @override
  bool shouldReload(CoreLocalizationDelegate old) => old.locale != locale;
}
