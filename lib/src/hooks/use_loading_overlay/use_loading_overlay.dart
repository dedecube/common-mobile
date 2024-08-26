import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

import 'loading_overlay.dart';

void useLoadingOverlay(ValueNotifier<bool> shouldShow) {
  final context = useContext();

  OverlayEntry? overlayEntry;

  void hide() {
    overlayEntry?.remove();
    overlayEntry?.dispose();
    overlayEntry = null;
  }

  void listener() {
    if (!context.mounted) {
      hide();

      return;
    }

    if (shouldShow.value) {
      hide(); // no duplicate overlays!
      overlayEntry =
          OverlayEntry(builder: (BuildContext _) => const LoadingOverlay());
      Overlay.of(context).insert(overlayEntry!);
    } else {
      hide();
    }
  }

  useEffect(
    () {
      shouldShow.addListener(listener);

      return () {
        shouldShow.removeListener(listener);
        hide();
      };
    },
    [],
  );
}
