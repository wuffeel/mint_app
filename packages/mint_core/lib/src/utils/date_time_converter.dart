import 'package:freezed_annotation/freezed_annotation.dart';

import 'date_time_utils.dart';

class DateTimeConverter implements JsonConverter<DateTime, dynamic> {
  const DateTimeConverter();

  @override
  DateTime fromJson(dynamic value) => DateTimeUtils.convertToDateTime(value);

  @override
  DateTime toJson(DateTime value) => value;
}
