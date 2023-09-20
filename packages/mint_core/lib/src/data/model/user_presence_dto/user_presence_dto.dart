import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../mint_utils.dart';

part 'user_presence_dto.freezed.dart';

part 'user_presence_dto.g.dart';

@freezed
class UserPresenceDto with _$UserPresenceDto {
  const factory UserPresenceDto({
    required bool isOnline,
    @DateTimeOrNullConverter()
    /// Nullable to handle situations when [lastSeen] has not been set yet.
    DateTime? lastSeen,
  }) = _UserPresenceDto;

  factory UserPresenceDto.fromJson(Map<String, dynamic> json) =>
      _$UserPresenceDtoFromJson(json);
}
