import 'package:freezed_annotation/freezed_annotation.dart';

import 'date_time_utils.dart';

class DateTimeOrNullConverter implements JsonConverter<DateTime?, dynamic> {
  const DateTimeOrNullConverter();

  @override
  DateTime? fromJson(dynamic value) =>
      DateTimeUtils.tryConvertToDateTime(value);

  @override
  DateTime? toJson(DateTime? value) => value;
}
