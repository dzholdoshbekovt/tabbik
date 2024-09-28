import 'package:core/localization/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class FeatureResolver {
  LocalizationsDelegate? get localeDelegate => null;

  BaseLocalization? get localization => null;

  List<RouteBase>? get routers => null;

  NavBarConfigure? get navBarConfigure => null;
}

class NavBarConfigure {
  final int sortIndex;
  final RouteBase navbarRoute;
  final GlobalKey<NavigatorState> navigatorKey;
  final BottomNavBarItem navigationBarItem;
  final String restorationId;

  NavBarConfigure({
    required this.sortIndex,
    required this.navbarRoute,
    required this.navigatorKey,
    required this.navigationBarItem,
    required this.restorationId,
  });
}

enum BottomNavBarItemType {
  standart,
  qr,
}

class BottomNavBarItem {
  final IconData icon;
  final String label;
  final BottomNavBarItemType type;

  BottomNavBarItem({required this.icon, required this.label})
      : type = BottomNavBarItemType.standart;

  BottomNavBarItem.qr({required this.icon})
      : type = BottomNavBarItemType.qr,
        label = '';
}
