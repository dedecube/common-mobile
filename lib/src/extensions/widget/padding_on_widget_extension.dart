import 'package:flutter/widgets.dart';

/// Extension method on [Widget] to add padding to the widget.
extension PaddingOnWidgetExtension on Widget {
  /// Adds padding to the widget.
  ///
  /// The padding can be customized using the following parameters:
  /// - [top]: The padding value for the top side.
  /// - [bottom]: The padding value for the bottom side.
  /// - [left]: The padding value for the left side.
  /// - [right]: The padding value for the right side.
  /// - [horizontal]: The padding value for the horizontal sides (left and right).
  /// - [vertical]: The padding value for the vertical sides (top and bottom).
  /// - [all]: The padding value for all sides.
  /// - [key]: An optional [Key] to identify the widget.
  ///
  /// Example usage:
  /// ```dart
  /// Widget myWidget = Container();
  /// Widget paddedWidget = myWidget.withPadding(all: 16);
  /// ```
  Widget withPadding({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
    double horizontal = 0,
    double vertical = 0,
    double all = 0,
    Key? key,
  }) {
    return Padding(
      key: key,
      padding: EdgeInsets.fromLTRB(
        all + horizontal + left,
        all + vertical + top,
        all + horizontal + right,
        all + vertical + bottom,
      ),
      child: this,
    );
  }
}
