import 'package:flutter/material.dart';

class DedeSpace extends StatelessWidget {
  const DedeSpace.horizontal(this.width, {super.key}) : height = 0;

  const DedeSpace.vertical(this.height, {super.key}) : width = 0;

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
