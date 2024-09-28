import 'package:flutter/foundation.dart';
import 'package:components/widgets/appbar/animated_app_bar.dart';
import 'package:components/widgets/scaffold/custom_scaffold.dart';
import 'package:core/router/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/components/main.dart';

const _kPath = '[path]';

///DOTO Change route, screen, extra name

class SettingsRoute extends ScreenRoute {
  SettingsRoute({SettingsExtra? extra})
      : super(RouteParams<SettingsExtra>(_kPath, extra: extra));

  @override
  Future<T?> push<T extends Object?>(BuildContext context) {
    String location = GoRouter.of(context)
        .routerDelegate
        .currentConfiguration
        .last
        .matchedLocation;
    return GoRouter.of(context)
        .push<T>('$location/$_kPath', extra: params.extra);
  }

  @override
  GoRoute get route => GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: params.path,
        name: params.name,
        pageBuilder: (context, state) {
          SettingsExtra? extra = state.extra as SettingsExtra?;
          switch (defaultTargetPlatform) {
            case TargetPlatform.iOS:
            case TargetPlatform.macOS:
              return CupertinoPage(
                title: '[Screen Name]',
                child: SettingsScreen(extra: extra),
              );
            case TargetPlatform.android:
            case TargetPlatform.fuchsia:
            case TargetPlatform.linux:
            case TargetPlatform.windows:
              return MaterialPage(
                child: SettingsScreen(extra: extra),
              );
          }
        },
      );
}

class SettingsExtra {
  final String example;
  SettingsExtra(this.example);
}

class SettingsScreen extends StatefulWidget {
  final SettingsExtra? extra;
  const SettingsScreen({super.key, this.extra});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  CustomMainThemeData? _theme;

  @override
  void didChangeDependencies() {
    _theme = Theme.of(context).extension<CustomMainThemeData>() ?? _theme;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: _theme?.bckgr,
      body: AnimatedAppBar.medium(
        title: '[Screen title or name]',
        theme: _theme,
        child: const SizedBox(),
      ),
    );
  }
}
