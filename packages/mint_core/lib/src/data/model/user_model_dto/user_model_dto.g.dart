// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModelDto _$$_UserModelDtoFromJson(Map json) => _$_UserModelDto(
      id: json['id'] as String,
      dateOfBirth:
          const DateTimeOrNullConverter().fromJson(json['dateOfBirth']),
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      photoUrl: json['photoUrl'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserModelDtoToJson(_$_UserModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateOfBirth':
          const DateTimeOrNullConverter().toJson(instance.dateOfBirth),
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'photoUrl': instance.photoUrl,
      'runtimeType': instance.$type,
    };

_$PatientUserDto _$$PatientUserDtoFromJson(Map json) => _$PatientUserDto(
      id: json['id'] as String,
      dateOfBirth:
          const DateTimeOrNullConverter().fromJson(json['dateOfBirth']),
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      pinCode: json['pinCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      photoUrl: json['photoUrl'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PatientUserDtoToJson(_$PatientUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateOfBirth':
          const DateTimeOrNullConverter().toJson(instance.dateOfBirth),
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'pinCode': instance.pinCode,
      'phoneNumber': instance.phoneNumber,
      'photoUrl': instance.photoUrl,
      'runtimeType': instance.$type,
    };
