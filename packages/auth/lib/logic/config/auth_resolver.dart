import 'package:auth/logic/localization/module_delegate.dart';
import 'package:auth/logic/localization/module_localization.dart';
import 'package:auth/logic/routers/module_routers.dart';
import 'package:core/feature_resolver.dart';
import 'package:core/localization/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthResolver implements FeatureResolver {
  @override
  LocalizationsDelegate? get localeDelegate => moduleLocalizationDelegate;

  @override
  BaseLocalization? get localization => ModuleLocalization.instance;

  @override
  List<RouteBase>? get routers => ModuleRouter.routes;

  @override
  NavBarConfigure? get navBarConfigure => null;
}
