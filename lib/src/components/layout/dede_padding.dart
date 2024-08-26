import 'package:flutter/material.dart';

class DedePadding extends StatelessWidget {
  const DedePadding({
    this.top = 0,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    this.horizontal = 0,
    this.vertical = 0,
    this.all = 0,
    this.child,
    super.key,
  });

  final double all;
  final double bottom;
  final Widget? child;
  final double horizontal;
  final double left;
  final double right;
  final double top;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        all + horizontal + left,
        all + vertical + top,
        all + horizontal + right,
        all + vertical + bottom,
      ),
      child: child,
    );
  }
}
