import 'package:flutter/material.dart';

class DedeSafeSpace extends StatelessWidget {
  const DedeSafeSpace({
    super.key,
    this.size = 0,
    this.applyTop = false,
    this.applyBottom = false,
    this.applyLeft = false,
    this.applyRight = false,
  });
  const DedeSafeSpace.none({
    super.key,
    this.size = 0,
  })  : applyTop = false,
        applyBottom = false,
        applyLeft = false,
        applyRight = false;
  const DedeSafeSpace.top({
    super.key,
    this.size = 0,
  })  : applyTop = true,
        applyBottom = false,
        applyLeft = false,
        applyRight = false;
  const DedeSafeSpace.bottom({
    super.key,
    this.size = 0,
  })  : applyTop = false,
        applyBottom = true,
        applyLeft = false,
        applyRight = false;
  const DedeSafeSpace.left({
    super.key,
    this.size = 0,
  })  : applyTop = false,
        applyBottom = false,
        applyLeft = true,
        applyRight = false;
  const DedeSafeSpace.right({
    super.key,
    this.size = 0,
  })  : applyTop = false,
        applyBottom = false,
        applyLeft = false,
        applyRight = true;

  final bool applyBottom;
  final bool applyLeft;
  final bool applyRight;
  final bool applyTop;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: applyTop,
      bottom: applyBottom,
      left: applyLeft,
      right: applyRight,
      child: SizedBox(height: size),
    );
  }
}
