import 'package:common_mobile/src/utils/color/hex_to_color.dart';
import 'package:flutter/material.dart';

extension ToColorOnStringExtension on String {
  Color? toColorOrNull({
    alphaChannel = 'FF',
  }) {
    try {
      return hexToColor(this, alphaChannel: 'FF');
    } catch (e) {
      return null;
    }
  }
}
