import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class ScreenRoute {
  RouteParams params;
  ScreenRoute(this.params);

  String getPath(BuildContext context) => '';

  Future<T?> push<T extends Object?>(BuildContext context) =>
      throw UnimplementedError();

  Future<T?> replace<T>(BuildContext context, {Object? extra}) =>
      throw UnimplementedError();

  void go(BuildContext context, {Object? extra}) => throw UnimplementedError();

  GoRoute get route => throw UnimplementedError();
}

class RouteParams<T> {
  T? extra;
  String? name;
  String path;

  RouteParams(this.path, {this.extra, this.name});
}
