import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class BaseLocalization {
  late final Locale? _appLocale;

  late final String Function(Locale locale)? _appPathFunction;

  final Map<String, dynamic> _strings = HashMap();

  BaseLocalization({
    required Locale? appLocale,
    required String Function(Locale)? appPathFunction,
  })  : _appPathFunction = appPathFunction,
        _appLocale = appLocale;

  static BaseLocalization of(BuildContext context) =>
      Localizations.of(context, BaseLocalization);

  set appLocale(Locale? value) {
    _appLocale = value;
  }

  void update(BuildContext context) {}

  Future<void> load() async {
    try {
      _print('Loading locale: $_appLocale');
      if (_appPathFunction == null || _appLocale == null) {
        _print('Fail locale ${_strings.keys.length}');
        return;
      }
      final data = await rootBundle.loadString(_appPathFunction!(_appLocale!));
      final Map<String, dynamic> strings = json.decode(data);
      final flattenedStrings = flattenMap(strings);
      _strings.addAll(flattenedStrings);
      _print('Loaded ${_strings.keys.length} keys');

      final localeName = _appLocale?.countryCode?.isEmpty == null
          ? _appLocale?.languageCode
          : _appLocale.toString();
      final canonicalLocaleName = Intl.canonicalizedLocale(localeName);
      Intl.defaultLocale = canonicalLocaleName;
    } catch (exception, stacktrace) {
      _print(exception);
      _print(stacktrace);
    }
  }

  String tr(
    String key, {
    Map<String, String>? values,
    num? pluralCount,
  }) {
    String? message;
    if (pluralCount != null) {
      message = _loadPluralizedMessage(key, pluralCount);
    } else {
      message = _loadMessage(key);
    }

    if (message == null) {
      _print('WARN [LOCALIZATION]: Could not find valid localization '
          'string for key $key, $_appLocale');
      return key;
    }

    if (values != null) {
      return _formatReturnMessage(message, values);
    }

    return message;
  }

  String? _loadMessage(String key) {
    final value = _strings[key];

    if (value == null || (value is! String)) {
      return null;
    }

    return value;
  }

  String _loadPluralizedMessage(String key, num howMany) {
    final other = _loadMessage('$key.other');
    if (other == null) {
      throw Exception(
          '[LOCALIZATION]: When using [pluralCount], `$key.other` is required');
    }
    return Intl.plural(
      howMany,
      zero: _loadMessage('$key.zero'),
      one: _loadMessage('$key.one'),
      two: _loadMessage('$key.two'),
      few: _loadMessage('$key.few'),
      many: _loadMessage('$key.many'),
      other: other,
      locale: _appLocale?.toLanguageTag(),
    );
  }

  String _formatReturnMessage(String value, Map<String, String> arguments) {
    arguments.forEach(
      (formatKey, formatValue) =>
          value = value.replaceAll('{$formatKey}', formatValue),
    );
    return value;
  }

  void _print(Object obj) {
    if (kDebugMode) {
      print(obj);
    }
  }
}

Map<String, dynamic> flattenMap(Map<String, dynamic> nestedMap) {
  Map<String, dynamic> flatMap = {};

  nestedMap.forEach((key, value) {
    if (value is Map<String, dynamic>) {
      Map<String, dynamic> nestedFlatMap = flattenMap(value);
      nestedFlatMap.forEach((nestedKey, nestedValue) {
        flatMap['$key.$nestedKey'] = nestedValue;
      });
    } else {
      flatMap[key] = value;
    }
  });

  return flatMap;
}
