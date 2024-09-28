import 'package:core/feature_resolver.dart';
import 'package:core/localization/app_locale.dart';
import 'package:core/localization/core_delegate.dart';
import 'package:core/localization/core_localization.dart';
import 'package:core/router/core_routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoreResolver implements FeatureResolver {
  @override
  LocalizationsDelegate? get localeDelegate => coreLocalizationDelegate;

  @override
  BaseLocalization? get localization => CoreLocalization.instance;

  @override
  List<RouteBase>? get routers => CoreRouter.routes;

  @override
  NavBarConfigure? get navBarConfigure => null;
}
