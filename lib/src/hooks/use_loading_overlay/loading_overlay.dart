import 'package:common_mobile/common_mobile.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.themeData.colorScheme;

    return Container(
      color: Colors.black.withOpacity(0.3),
      child: SafeArea(
        child: Center(
          child: CircularProgressIndicator(
            color: colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
