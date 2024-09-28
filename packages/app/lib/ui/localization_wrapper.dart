import 'package:core/localization/app_locale.dart';
import 'package:core/settings/app_settings.dart';
import 'package:flutter/material.dart';

class LocalizationWrapper extends StatefulWidget {
  final Widget child;
  final List<BaseLocalization?> localizations;
  const LocalizationWrapper(
      {super.key, required this.child, required this.localizations});

  @override
  State<LocalizationWrapper> createState() => _LocalizationWrapperState();
}

class _LocalizationWrapperState extends State<LocalizationWrapper> {
  Locale? current;

  @override
  void didChangeDependencies() {
    Locale? current = AppSettings.of(context)?.locale;
    if (this.current != current) {
      for (var element in widget.localizations) {
        element?.update(context);
      }
      this.current = current;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
