import 'package:flutter/material.dart';

/// Extension on List<Widget> with [insertBetween] method only.
extension ExtendedWidgetList on List<Widget> {
  /// Insert [widget] between each member of list
  List<Widget> insertBetween(Widget widget) {
    if (length > 1) {
      for (var i = length - 1; i > 0; i--) {
        insert(i, widget);
      }
    }

    return this;
  }
}
