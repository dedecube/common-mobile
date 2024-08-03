import 'package:flutter/widgets.dart';

/// Extension on the [Widget] class to add circular border radius to a widget.
extension BorderRadiusExtension on Widget {
  /// Wraps the widget with a [Container] that has a circular border radius.
  ///
  /// The [radius] parameter specifies the radius of the circular border.
  /// The [key] parameter is an optional key to identify the container.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Text('Hello, World!');
  /// Widget widgetWithBorderRadius = myWidget.withCircularBorderRadius(10.0);
  /// ```
  Widget withCircularBorderRadius(
    double radius, {
    Key? key,
    BoxDecoration? decoration,
  }) {
    decoration ??= const BoxDecoration();

    decoration = decoration.copyWith(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
    );

    return Container(
      key: key,
      decoration: decoration,
      child: this,
    );
  }
}
