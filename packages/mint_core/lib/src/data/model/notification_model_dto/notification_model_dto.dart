import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../mint_utils.dart';
import '../../../backbone/app_notification_status.dart';

part 'notification_model_dto.freezed.dart';

part 'notification_model_dto.g.dart';

abstract class INotificationModelDto {
  String get id;

  DateTime get createdAt;

  String? get firstName;

  String? get lastName;

  String? get photoUrl;

  AppNotificationStatus? get status;
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
    AppNotificationStatus? status,
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
    AppNotificationStatus? status,
  }) = BookingNotificationDto;

  factory NotificationModelDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelDtoFromJson(json);

  factory NotificationModelDto.fromJsonWithId(
    Map<String, dynamic> json,
    String id,
  ) =>
      _$NotificationModelDtoFromJson(<String, dynamic>{'id': id, ...json});
}
