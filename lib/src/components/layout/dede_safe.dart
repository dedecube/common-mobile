import 'package:flutter/material.dart';

class DedeSafe extends StatelessWidget {
  const DedeSafe({
    super.key,
    required this.child,
    this.applyTop = false,
    this.applyBottom = false,
    this.applyLeft = false,
    this.applyRight = false,
  });
  const DedeSafe.none({
    super.key,
    required this.child,
  })  : applyTop = false,
        applyBottom = false,
        applyLeft = false,
        applyRight = false;
  const DedeSafe.top({
    super.key,
    required this.child,
  })  : applyTop = true,
        applyBottom = false,
        applyLeft = false,
        applyRight = false;
  const DedeSafe.bottom({
    super.key,
    required this.child,
  })  : applyTop = false,
        applyBottom = true,
        applyLeft = false,
        applyRight = false;
  const DedeSafe.left({
    super.key,
    required this.child,
  })  : applyTop = false,
        applyBottom = false,
        applyLeft = true,
        applyRight = false;
  const DedeSafe.right({
    super.key,
    required this.child,
  })  : applyTop = false,
        applyBottom = false,
        applyLeft = false,
        applyRight = true;
  const DedeSafe.vertical({
    super.key,
    required this.child,
  })  : applyTop = true,
        applyBottom = true,
        applyLeft = false,
        applyRight = false;
  const DedeSafe.horizontal({
    super.key,
    required this.child,
  })  : applyTop = false,
        applyBottom = false,
        applyLeft = true,
        applyRight = true;
  const DedeSafe.all({
    super.key,
    required this.child,
  })  : applyTop = true,
        applyBottom = true,
        applyLeft = true,
        applyRight = true;

  final bool applyBottom;
  final bool applyLeft;
  final bool applyRight;
  final bool applyTop;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: applyTop,
      bottom: applyBottom,
      left: applyLeft,
      right: applyRight,
      child: child,
    );
  }
}
