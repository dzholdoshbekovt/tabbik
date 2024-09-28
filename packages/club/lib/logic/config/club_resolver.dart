import 'package:club/logic/constants/club_constants.dart';
import 'package:club/ui/screens/club_screen.dart';
import 'package:core/feature_resolver.dart';
import 'package:core/icons/custom_icons.dart';
import 'package:core/localization/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../localization/module_delegate.dart';
import '../localization/module_localization.dart';
import '../routers/module_routers.dart';


class ClubResolver implements FeatureResolver {
  @override
  LocalizationsDelegate? get localeDelegate => moduleLocalizationDelegate;

  @override
  BaseLocalization? get localization => ModuleLocalization.instance;

  @override
  List<RouteBase>? get routers => ModuleRouter.routes;

  @override
  NavBarConfigure? get navBarConfigure {
    ClubRoute routers = ClubRoute();
    return NavBarConfigure(
      sortIndex: 4,
      navbarRoute: routers.route,
      navigatorKey: shellNavigator,
      restorationId: 'profileRestoration',
      navigationBarItem: BottomNavBarItem(
        icon: CustomIcons.menu_01,
        label: 'Клубы',
      ),
    );
  }
}
