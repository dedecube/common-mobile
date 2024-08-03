import 'package:flutter/material.dart';

extension UnfocusOnBuildContextExtension on BuildContext {
  /// Unfocus the current focus node.
  ///
  /// Example usage:
  /// ```dart
  /// context.unfocus();
  /// ```
  ///
  /// This will unfocus the current focus node.
  /// If the current focus node is not focused, this method will do nothing.
  void unfocus() {
    final FocusScopeNode currentScope = FocusScope.of(this);

    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
      currentScope.unfocus();
    }
  }
}
