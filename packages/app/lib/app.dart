import 'package:app/flavor_wrapper.dart';
import 'package:app/ui/localization_wrapper.dart';
import 'package:core/constants/storage.dart';
import 'package:core/localization/app_locale.dart';
import 'package:core/localization/localization.dart';
import 'package:core/settings/app_settings.dart';
import 'package:core/settings/app_settings_builder.dart';
import 'package:core/settings/app_state.dart';
import 'package:core/utils/keyboard_dismisser.dart';
import 'package:core/utils/screen_utils.dart';
import 'package:core/utils/storage/app_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/theme/app_theme.dart';

import 'flavors.dart';

class App extends StatefulWidget {
  final GoRouter router;
  final List<LocalizationsDelegate> localeDelegates;
  final List<BaseLocalization?> localizations;
  const App({
    super.key,
    required this.router,
    required this.localeDelegates,
    required this.localizations,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late Locale systemLocale;
  late ThemeMode systemThemeMode;

  @override
  void initState() {
    String? locale = AppStorage.instance
        .getValue<String>(key: kStorageLocaleKey, boxName: BoxNames.storage);
    String? themeMode = AppStorage.instance
        .getValue<String>(key: kStorageThemeModeKey, boxName: BoxNames.storage);
    if (locale != null) {
      systemLocale = Locale.fromSubtags(languageCode: locale);
    } else {
      if (kIsWeb) {
        systemLocale = AppLocales.ru;
      } else {
        systemLocale = AppLocales.getSystemLocale();
      }
    }
    if (themeMode != null) {
      if (themeMode == ThemeMode.dark.name) {
        systemThemeMode = ThemeMode.dark;
      } else if (themeMode == ThemeMode.light.name) {
        systemThemeMode = ThemeMode.light;
      } else {
        systemThemeMode = ThemeMode.system;
      }
    } else {
      systemThemeMode = ThemeMode.system;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: AppSettingsBuilder(
        init: AppSettingsModel(systemLocale, systemThemeMode),
        builder: (context, notifier) {
          return AppSettings(
            settings: notifier,
            child: AppState(
              child: ScreenUtilInit(
                designSize: const Size(360, 780),
                builder: (context, child) => MaterialApp.router(
                  title: F.title,
                  localizationsDelegates: widget.localeDelegates,
                  supportedLocales: AppLocales.supportedLocales,
                  locale: notifier.locale,
                  themeMode: notifier.themeMode,
                  theme: AppTheme.light,
                  darkTheme: AppTheme.dark,
                  routerDelegate: widget.router.routerDelegate,
                  routeInformationParser:
                      widget.router.routeInformationParser,
                  routeInformationProvider:
                      widget.router.routeInformationProvider,
                  backButtonDispatcher: widget.router.backButtonDispatcher,
                  builder: (context, child) {
                    return LocalizationWrapper(
                      localizations: widget.localizations,
                      child: FlavorWrapper(
                        show: F.appFlavor == Flavor.prod,
                        child: child!,
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
