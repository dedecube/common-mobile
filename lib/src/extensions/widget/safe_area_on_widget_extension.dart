import 'package:flutter/widgets.dart';

/// Extension on the [Widget] class to provide convenient methods for applying [SafeArea] to a widget.
extension SafeAreaOnWidgetExtension on Widget {
  /// Wraps the widget with [SafeArea] and applies safe area padding to all sides.
  ///
  /// By default, no padding is applied to any side.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeArea();
  /// ```
  Widget withSafeArea({
    bool applyTop = false,
    bool applyBottom = false,
    bool applyLeft = false,
    bool applyRight = false,
  }) {
    return SafeArea(
      top: applyTop,
      bottom: applyBottom,
      left: applyLeft,
      right: applyRight,
      child: this,
    );
  }

  /// Wraps the widget with [SafeArea] and applies safe area padding to all sides.
  ///
  /// This is an alias for [withSafeArea].
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaNone();
  /// ```
  Widget withSafeAreaNone() => withSafeArea();

  /// Wraps the widget with [SafeArea] and applies safe area padding to the top side.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaTop();
  /// ```
  Widget withSafeAreaTop() => withSafeArea(applyTop: true);

  /// Wraps the widget with [SafeArea] and applies safe area padding to the bottom side.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaBottom();
  /// ```
  Widget withSafeAreaBottom() => withSafeArea(applyBottom: true);

  /// Wraps the widget with [SafeArea] and applies safe area padding to the left side.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaLeft();
  /// ```
  Widget withSafeAreaLeft() => withSafeArea(applyLeft: true);

  /// Wraps the widget with [SafeArea] and applies safe area padding to the right side.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaRight();
  /// ```
  Widget withSafeAreaRight() => withSafeArea(applyRight: true);

  /// Wraps the widget with [SafeArea] and applies safe area padding to the top and bottom sides.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaVertical();
  /// ```
  Widget withSafeAreaVertical() =>
      withSafeArea(applyTop: true, applyBottom: true);

  /// Wraps the widget with [SafeArea] and applies safe area padding to the left and right sides.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaHorizontal();
  /// ```
  Widget withSafeAreaHorizontal() =>
      withSafeArea(applyLeft: true, applyRight: true);

  /// Wraps the widget with [SafeArea] and applies safe area padding to all sides.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget widgetWithSafeArea = myWidget.withSafeAreaAll();
  /// ```
  Widget withSafeAreaAll() => withSafeArea(
        applyTop: true,
        applyBottom: true,
        applyLeft: true,
        applyRight: true,
      );
}
