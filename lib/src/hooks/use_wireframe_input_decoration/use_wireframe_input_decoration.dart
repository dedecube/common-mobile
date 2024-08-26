import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

InputDecoration useWireframeInputDecoration(
  String translationKey,
  String? error,
) {
  final context = useContext();

  final hintTranslationKey = '$translationKey.hint';
  final labelTranslationKey = '$translationKey.label';

  return useMemoized(
    () => InputDecoration(
      errorText: error,
      hintText: context.translate(hintTranslationKey),
      alignLabelWithHint: true,
      hintStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: context.theme.surfaceInverse100,
        fontSize: 16,
      ),
      labelText: context.translate(labelTranslationKey),
      labelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: context.theme.surfaceInverse100,
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: context.theme.surfaceInverse100,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: context.theme.surfaceInverse100,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: context.theme.surfaceInverse100,
        ),
      ),
    ),
  );
}
