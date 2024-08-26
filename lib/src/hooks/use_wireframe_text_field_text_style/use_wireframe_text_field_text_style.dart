import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

TextStyle useWireframeTextFieldTextStyle() {
  final context = useContext();

  return useMemoized(
    () => TextStyle(
      fontWeight: FontWeight.w400,
      color: context.theme.surfaceInverse100,
      fontSize: 16,
    ),
  );
}
