import 'package:flutter/material.dart';

extension ShortcutsOnBuildContextExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  EdgeInsets get safe => MediaQuery.paddingOf(this);
  ScaffoldState get scaffold => Scaffold.of(this);
}
