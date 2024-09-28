import 'package:core/controllers/validator_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef SelectorStatusListener = void Function(InputStatus status);

mixin InputStatusListenersMixin {
  final ObserverList<SelectorStatusListener> _statusListeners =
      ObserverList<SelectorStatusListener>();

  /// Called immediately before a status listener is added via [addStatusListener].
  ///
  /// At the time this method is called the registered listener is not yet
  /// notified by [notifyStatusListeners].
  @protected
  void didRegisterListener();

  /// Called immediately after a status listener is removed via [removeStatusListener].
  ///
  /// At the time this method is called the removed listener is no longer
  /// notified by [notifyStatusListeners].
  @protected
  void didUnregisterListener();

  /// Calls listener every time the status of the animation changes.
  ///
  /// Listeners can be removed with [removeStatusListener].
  void addStatusListener(SelectorStatusListener listener) {
    didRegisterListener();
    _statusListeners.add(listener);
  }

  /// Stops calling the listener every time the status of the animation changes.
  ///
  /// Listeners can be added with [addStatusListener].
  void removeStatusListener(SelectorStatusListener listener) {
    final bool removed = _statusListeners.remove(listener);
    if (removed) {
      didUnregisterListener();
    }
  }

  /// Removes all listeners added with [addStatusListener].
  ///
  /// This method is typically called from the `dispose` method of the class
  /// using this mixin if the class also uses the [AnimationEagerListenerMixin].
  ///
  /// Calling this method will not trigger [didUnregisterListener].
  @protected
  void clearStatusListeners() {
    _statusListeners.clear();
  }

  /// Calls all the status listeners.
  ///
  /// If listeners are added or removed during this function, the modifications
  /// will not change which listeners are called during this iteration.
  @protected
  @pragma('vm:notify-debugger-on-exception')
  void notifyStatusListeners(InputStatus status) {
    final List<SelectorStatusListener> localListeners =
        _statusListeners.toList(growable: false);
    for (final SelectorStatusListener listener in localListeners) {
      try {
        if (_statusListeners.contains(listener)) {
          listener(status);
        }
      } catch (exception, stack) {
        InformationCollector? collector;
        assert(() {
          collector = () => <DiagnosticsNode>[
                DiagnosticsProperty<InputStatusListenersMixin>(
                  'The $runtimeType notifying status listeners was',
                  this,
                  style: DiagnosticsTreeStyle.errorProperty,
                ),
              ];
          return true;
        }());
        FlutterError.reportError(FlutterErrorDetails(
          exception: exception,
          stack: stack,
          library: 'animation library',
          context: ErrorDescription(
              'while notifying status listeners for $runtimeType'),
          informationCollector: collector,
        ));
      }
    }
  }
}
