// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_presence_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPresenceDto _$$_UserPresenceDtoFromJson(Map json) => _$_UserPresenceDto(
      isOnline: json['isOnline'] as bool,
      lastSeen: const DateTimeOrNullConverter().fromJson(json['lastSeen']),
    );

Map<String, dynamic> _$$_UserPresenceDtoToJson(_$_UserPresenceDto instance) =>
    <String, dynamic>{
      'isOnline': instance.isOnline,
      'lastSeen': const DateTimeOrNullConverter().toJson(instance.lastSeen),
    };
