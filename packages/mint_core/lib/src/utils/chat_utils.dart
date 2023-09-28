import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:intl/intl.dart';

import 'date_time_utils.dart';

abstract class ChatUtils {
  /// Displays a pop-up menu with specified [items] at the given [tapPosition].
  ///
  /// /// If the overlay size is not available or the context is missing, the
  /// menu won't be shown.
  static void showMessageActionsMenu(
    BuildContext context,
    Message message,
    Offset tapPosition, {
    required List<PopupMenuEntry<dynamic>> items,
  }) {
    final overlaySize =
        Overlay.of(context).context.findRenderObject()?.semanticBounds.size;
    if (overlaySize == null) return;

    showMenu<void>(
      context: context,
      position: RelativeRect.fromRect(
        tapPosition & const Size(40, 40),
        Offset.zero & overlaySize,
      ),
      items: items,
    );
  }

  /// Converts a [lastDate] timestamp into a human-readable date or time string
  /// for a [locale] specified.
  ///
  /// If the [lastDate] is today date, the function returns the time in the
  /// format "HH:mm"
  /// If the [lastDate] is within the past week, it returns the day of the
  /// week (e.g., "Mon").
  /// Otherwise, it returns the full date.
  static String chatRoomLastDateToString(
    int lastDate, {
    String locale = 'en_US',
  }) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final isToday = DateTimeUtils.isSameDay(now, today);

    final updatedDateTime = DateTime.fromMillisecondsSinceEpoch(lastDate);
    final updatedDate = DateTimeUtils.toDateOnly(updatedDateTime);
    final daysDifference = today.difference(updatedDate).inDays;

    if (isToday) {
      return DateFormat.Hm(locale).format(updatedDateTime);
    } else if (daysDifference < 7) {
      return DateFormat.E(locale).format(updatedDateTime);
    } else {
      return DateFormat.yMd(locale).format(updatedDateTime);
    }
  }
}
