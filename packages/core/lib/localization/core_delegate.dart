import 'package:core/localization/core_localization.dart';
import 'package:core/localization/localization.dart';
import 'package:core/localization/utils.dart';

final coreLocalizationDelegate = CoreLocalizationDelegate(
    supportedLocales: AppLocales.supportedLocales,
    getPathFunction: (locale) =>
        getFilePath(locale: locale, packageName: 'core'));
