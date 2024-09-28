import 'package:core/constants/storage.dart';
import 'package:core/utils/storage/app_storage.dart';
import 'package:flutter/material.dart';

class AppSettingsModel {
  Locale? locale;
  ThemeMode? themeMode;
  AppSettingsModel(this.locale, this.themeMode);
}

class AppSettingsBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, AppSettingsNotifier notifier)
      builder;
  final AppSettingsModel init;
  const AppSettingsBuilder(
      {super.key, required this.builder, required this.init});

  @override
  State<AppSettingsBuilder> createState() => _AppSettingsBuilderState();
}

class _AppSettingsBuilderState extends State<AppSettingsBuilder> {
  late AppSettingsNotifier notifier;
  late Locale? locale;

  @override
  void initState() {
    notifier = AppSettingsNotifier(widget.init.locale, widget.init.themeMode);
    locale = notifier.locale;
    notifier.addListener(listener);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppSettingsBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    notifier.removeListener(listener);
    notifier.dispose();
    super.dispose();
  }

  void listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, notifier);
  }
}

class AppSettingsNotifier extends ChangeNotifier {
  Locale? _locale;
  ThemeMode? _themeMode;

  AppSettingsNotifier(this._locale, this._themeMode);

  Locale? get locale => _locale;
  ThemeMode? get themeMode => _themeMode;

  void setLocale(Locale locale) {
    _locale = locale;
    AppStorage.instance.setValue<String>(
        key: kStorageLocaleKey,
        boxName: BoxNames.storage,
        value: locale.toLanguageTag());
    notifyListeners();
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    AppStorage.instance.setValue(
        key: kStorageThemeModeKey, value: mode.name, boxName: BoxNames.storage);
    notifyListeners();
  }
}
