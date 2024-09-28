import 'package:auth/logic/localization/module_localization.dart';
import 'package:core/localization/localization.dart';
import 'package:core/localization/utils.dart';

final moduleLocalizationDelegate = ModuleLocalizationDelegate(
    supportedLocales: AppLocales.supportedLocales,
    getPathFunction: (locale) =>
        getFilePath(locale: locale, packageName: 'auth'));
