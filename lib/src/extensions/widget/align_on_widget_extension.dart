import 'package:flutter/material.dart';

/// Extension methods for aligning a widget within its parent widget.
extension AlignOnWidgetExtension on Widget {
  /// Aligns the widget to the bottom center of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignBottomCenter();
  /// ```
  Widget alignBottomCenter({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  /// Aligns the widget to the bottom left of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignBottomLeft();
  /// ```
  Widget alignBottomLeft({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.bottomLeft,
      child: this,
    );
  }

  /// Aligns the widget to the bottom right of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignBottomRight();
  /// ```
  Widget alignBottomRight({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.bottomRight,
      child: this,
    );
  }

  /// Aligns the widget to the center of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignCenter();
  /// ```
  Widget alignCenter({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.center,
      child: this,
    );
  }

  /// Aligns the widget to the center left of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignCenterLeft();
  /// ```
  Widget alignCenterLeft({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  /// Aligns the widget to the center right of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignCenterRight();
  /// ```
  Widget alignCenterRight({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  /// Aligns the widget to the top center of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignTopCenter();
  /// ```
  Widget alignTopCenter({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  /// Aligns the widget to the top left of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignTopLeft();
  /// ```
  Widget alignTopLeft({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.topLeft,
      child: this,
    );
  }

  /// Aligns the widget to the top right of its parent widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// myWidget.alignTopRight();
  /// ```
  Widget alignTopRight({Key? key}) {
    return Align(
      key: key,
      alignment: Alignment.topRight,
      child: this,
    );
  }
}
