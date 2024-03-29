import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  static DateTime convertToDateTime(dynamic date) {
    if (date is DateTime) {
      return date;
    } else if (date is Timestamp) {
      return date.toDate();
    } else if (date is String) {
      return DateTime.parse(date);
    }
    throw ArgumentError.value(
      date,
      'date',
      '[convertToDateTime] Invalid argument: $date',
    );
  }

  static DateTime? tryConvertToDateTime(dynamic date) {
    if (date is DateTime) {
      return date;
    } else if (date is Timestamp) {
      return date.toDate();
    } else if (date is String) {
      return DateTime.parse(date);
    }
    return null;
  }

  static List<DateTime> convertToDateTimeList(List<dynamic> dateList) {
    return dateList
        .map(DateTimeUtils.tryConvertToDateTime)
        .whereType<DateTime>()
        .toList();
  }

  /// Returns most recent [weekday].
  ///
  /// [weekday] is a number, where [1] stands for 'Monday'.
  ///
  /// Example use:
  /// ```
  /// final weekday = findMostRecentWeekday(DateTime.sunday);
  /// ```
  static DateTime findMostRecentWeekday([int weekday = 1]) {
    final now = DateTime.now();
    final daysSinceWeekday = (now.weekday + 7 - weekday) % 7;

    final recentWeekday = now.subtract(Duration(days: daysSinceWeekday));
    return recentWeekday;
  }

  /// Returns list of shor weekday names for specified [locale].
  ///
  /// [startWeekday] stands for weekday from which weekday list begins.
  /// See [findMostRecentWeekday].
  ///
  /// [locale] stands for locale in which weekdays should be returned.
  ///
  /// Example use:
  /// ```
  /// final shortWeekdays = getShortWeekdays(); // ['Mon','Tue','Wed','Thu','Fri','Sat','Sun']
  /// ```
  static List<String> getShortWeekdays({
    int startWeekday = 1,
    String locale = 'en_US',
  }) {
    final mostRecentSunday = findMostRecentWeekday(startWeekday);
    final list = List<String>.generate(
      7,
      (index) => DateFormat.E(locale).format(
        mostRecentSunday.add(Duration(days: index)),
      ),
    );
    return list;
  }

  /// Returns weekday names.
  ///
  /// [startWeekday] stands for weekday from which weekday list begins.
  /// See [findMostRecentWeekday].
  ///
  /// [locale] stands for locale in which weekdays should be returned.
  ///
  /// Example use:
  /// ```
  /// // ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']
  /// final weekdays = getWeekdays();
  /// ```
  static List<String> getWeekdays({
    int startWeekday = 1,
    String locale = 'en_US',
  }) {
    final firstWeekday = findMostRecentWeekday(startWeekday);

    final shortWeekdays = List<String>.generate(7, (index) {
      final weekday = firstWeekday.add(Duration(days: index));
      return DateFormat.EEEE(locale).format(weekday);
    });

    return shortWeekdays;
  }

  /// Checks if [date] and [otherDate] are the same day
  static bool isSameDay(DateTime date, DateTime otherDate) =>
      date.year == otherDate.year &&
      date.month == otherDate.month &&
      date.day == otherDate.day;

  /// Converts [date] to date without time
  static DateTime toDateOnly(DateTime date) =>
      DateTime(date.year, date.month, date.day);

  /// Converts [date] to UTC date without time
  static DateTime toUtcDateOnly(DateTime date) =>
      DateTime.utc(date.year, date.month, date.day);
}
