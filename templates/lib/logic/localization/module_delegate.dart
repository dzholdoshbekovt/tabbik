import 'package:core/localization/localization.dart';
import 'package:core/localization/utils.dart';

import 'module_localization.dart';

final moduleLocalizationDelegate = ModuleLocalizationDelegate(
    supportedLocales: AppLocales.supportedLocales,
    getPathFunction: (locale) =>
        getFilePath(locale: locale, packageName: 'cars'));
