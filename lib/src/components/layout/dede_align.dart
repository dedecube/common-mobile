import 'package:flutter/material.dart';

class DedeAlign extends StatelessWidget {
  const DedeAlign({
    super.key,
    required this.alignment,
    required this.child,
  });

  const DedeAlign.bottomCenter({
    required this.child,
    super.key,
  }) : alignment = Alignment.bottomCenter;

  const DedeAlign.bottomLeft({
    required this.child,
    super.key,
  }) : alignment = Alignment.bottomLeft;

  const DedeAlign.bottomRight({
    required this.child,
    super.key,
  }) : alignment = Alignment.bottomRight;

  const DedeAlign.center({
    required this.child,
    super.key,
  }) : alignment = Alignment.center;

  const DedeAlign.centerLeft({
    required this.child,
    super.key,
  }) : alignment = Alignment.centerLeft;

  const DedeAlign.centerRight({
    required this.child,
    super.key,
  }) : alignment = Alignment.centerRight;

  const DedeAlign.topCenter({
    required this.child,
    super.key,
  }) : alignment = Alignment.topCenter;

  const DedeAlign.topLeft({
    required this.child,
    super.key,
  }) : alignment = Alignment.topLeft;

  const DedeAlign.topRight({
    required this.child,
    super.key,
  }) : alignment = Alignment.topRight;

  final Alignment alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: child,
    );
  }
}
