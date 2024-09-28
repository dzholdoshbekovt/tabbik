import 'package:flutter/widgets.dart';

class AppState extends InheritedWidget {
  AppState({super.key, required super.child}) : state = AuthState.auth;

  static AppState? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppState>();

  AuthState? state;

  void setAuthState(AuthState newState) {
    state = newState;
  }

  @override
  bool updateShouldNotify(covariant AppState oldWidget) {
    return oldWidget.state != state;
  }
}

enum AuthState { ok, auth, pin, principal }
