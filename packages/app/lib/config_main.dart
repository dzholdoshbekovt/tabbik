import 'dart:async';

import 'package:app/logic/config/injections.dart';
import 'package:app/ui/navigation_screen.dart';
import 'package:app/ui/splash_screen.dart';
import 'package:core/constants/routes.dart';
import 'package:core/feature_resolver.dart';
import 'package:core/localization/app_locale.dart';
import 'package:core/router/route.dart';
import 'package:core/settings/app_state.dart';
import 'package:core/utils/storage/app_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ConfigMain {
  final List<FeatureResolver> resolvers;
  final String env;
  GetIt getIt = GetIt.instance;

  ConfigMain({required this.resolvers, required this.env});

  Future<void> setupDependecies() async {
    getIt = await configureAppDependencies(getIt, env: env);
  }

  Future<void> setupStorage() async {
    await AppStorage.instance.initialize();
  }

  Future<void> setupFirebase() async {
    // await Firebase.initializeApp();
    // await FirebasePerformance.instance.setPerformanceCollectionEnabled(true);
  }

  void setupSystemSettings() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  List<LocalizationsDelegate<dynamic>> setupLocalizationDelegates() {
    final delegates = <LocalizationsDelegate>[
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];

    for (var element in resolvers) {
      if (element.localeDelegate != null) {
        delegates.add(element.localeDelegate!);
      }
    }
    return delegates;
  }

  List<BaseLocalization?> getLocalizations() {
    return resolvers.map((e) => e.localization).toList();
  }

  GoRouter setupGoRoute() {
    List<RouteBase> routers = [];
    List<NavBarConfigure> navbarConfiguries = [];

    for (var element in resolvers) {
      if (element.routers != null) {
        routers.addAll(element.routers!);
      }

      if (element.navBarConfigure != null) {
        navbarConfiguries.add(element.navBarConfigure!);
      }
    }

    StatefulShellRoute? shellRoute;

    if (navbarConfiguries.isNotEmpty) {
      navbarConfiguries.sort((a, b) => a.sortIndex.compareTo(b.sortIndex));

      shellRoute = StatefulShellRoute.indexedStack(
        restorationScopeId: 'shell',
        pageBuilder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          var result = ScaffoldWithNavBar(
            navigationShell: navigationShell,
            tabs: navbarConfiguries.map((e) => e.navigationBarItem).toList(),
          );
          switch (defaultTargetPlatform) {
            case TargetPlatform.macOS:
            case TargetPlatform.iOS:
              return CupertinoPage(
                restorationId: 'shellWidget',
                child: result,
              );
            case TargetPlatform.android:
            case TargetPlatform.fuchsia:
            case TargetPlatform.linux:
            case TargetPlatform.windows:
              return MaterialPage(
                restorationId: 'shellWidget',
                child: result,
              );
          }
        },
        branches: navbarConfiguries.map(
          (e) {
            return StatefulShellBranch(
              navigatorKey: e.navigatorKey,
              restorationScopeId: e.restorationId,
              routes: [e.navbarRoute],
            );
          },
        ).toList(),
      );
    }

    GoRouter appRouter = GoRouter(
      navigatorKey: rootNavigatorKey,
      debugLogDiagnostics: kDebugMode,
      restorationScopeId: 'router',
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const SplashScreen();
          },
        ),
        GoRoute(
          path: '/${RouteNames.redirect}',
          name: RouteNames.redirect,
          redirect: (context, state) {
            switch (AppState.of(context)?.state) {
              case AuthState.auth:
                return '/${RouteNames.auth}';
              case AuthState.pin:
                return '/';
              case AuthState.principal:
                return '/';
              case AuthState.ok:
              default:
                return '/';
            }
          },
        ),
        if (shellRoute != null) shellRoute,
        ...routers,
      ],
    );
    return appRouter;
  }
}
