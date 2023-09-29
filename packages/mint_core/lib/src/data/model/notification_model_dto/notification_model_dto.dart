import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../mint_utils.dart';

part 'notification_model_dto.freezed.dart';

part 'notification_model_dto.g.dart';

abstract class INotificationModelDto {
  String get id;

  DateTime get createdAt;

  String? get firstName;

  String? get lastName;

  String? get photoUrl;
}

@Freezed(fromJson: true, toJson: true, unionKey: 'type')
sealed class NotificationModelDto with _$NotificationModelDto {
  @Implements<INotificationModelDto>()
  const factory NotificationModelDto.chat({
    required String id,
    @DateTimeConverter() required DateTime createdAt,
    required String roomId,
    String? firstName,
    String? lastName,
    String? photoUrl,
  }) = ChatNotificationDto;

  @Implements<INotificationModelDto>()
  const factory NotificationModelDto.booking({
    required String id,
    @DateTimeConverter() required DateTime createdAt,
    required String bookingId,
    @DateTimeConverter() required DateTime bookTime,
    String? firstName,
    String? lastName,
    String? photoUrl,
  }) = BookingNotificationDto;

  factory NotificationModelDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelDtoFromJson(json);

  factory NotificationModelDto.fromJsonWithId(
    Map<String, dynamic> json,
    String id,
  ) =>
      _$NotificationModelDtoFromJson(<String, dynamic>{'id': id, ...json});
}
