import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

abstract class INotificationModel {
  String get id;

  DateTime get createdAt;

  String? get firstName;

  String? get lastName;

  String? get photoUrl;
}

@freezed
sealed class NotificationModel with _$NotificationModel {
  @Implements<INotificationModel>()
  const factory NotificationModel.chat({
    required String id,
    required DateTime createdAt,
    required String roomId,
    String? firstName,
    String? lastName,
    String? photoUrl,
  }) = ChatNotification;

  @Implements<INotificationModel>()
  const factory NotificationModel.booking({
    required String id,
    required DateTime createdAt,
    required String bookingId,
    required DateTime bookTime,
    String? firstName,
    String? lastName,
    String? photoUrl,
  }) = BookingNotification;
}
