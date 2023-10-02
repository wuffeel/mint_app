// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatNotificationDto _$$ChatNotificationDtoFromJson(Map json) =>
    _$ChatNotificationDto(
      id: json['id'] as String,
      createdAt: const DateTimeConverter().fromJson(json['createdAt']),
      roomId: json['roomId'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      status:
          $enumDecodeNullable(_$AppNotificationStatusEnumMap, json['status']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ChatNotificationDtoToJson(
        _$ChatNotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'roomId': instance.roomId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'photoUrl': instance.photoUrl,
      'status': _$AppNotificationStatusEnumMap[instance.status],
      'type': instance.$type,
    };

const _$AppNotificationStatusEnumMap = {
  AppNotificationStatus.delivered: 'delivered',
  AppNotificationStatus.seen: 'seen',
  AppNotificationStatus.cleared: 'cleared',
};

_$BookingNotificationDto _$$BookingNotificationDtoFromJson(Map json) =>
    _$BookingNotificationDto(
      id: json['id'] as String,
      createdAt: const DateTimeConverter().fromJson(json['createdAt']),
      bookingId: json['bookingId'] as String,
      bookTime: const DateTimeConverter().fromJson(json['bookTime']),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      status:
          $enumDecodeNullable(_$AppNotificationStatusEnumMap, json['status']),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BookingNotificationDtoToJson(
        _$BookingNotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'bookingId': instance.bookingId,
      'bookTime': const DateTimeConverter().toJson(instance.bookTime),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'photoUrl': instance.photoUrl,
      'status': _$AppNotificationStatusEnumMap[instance.status],
      'type': instance.$type,
    };
