import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../mint_utils.dart';

part 'user_model_dto.freezed.dart';

part 'user_model_dto.g.dart';

abstract class IUserModelDto {
  String get id;

  DateTime? get dateOfBirth;

  String? get email;

  String? get firstName;

  String? get lastName;

  String? get phoneNumber;

  String? get photoUrl;
}

@Freezed(fromJson: true, toJson: true)
class UserModelDto with _$UserModelDto {
  @Implements<IUserModelDto>()
  const factory UserModelDto({
    required String id,
    @DateTimeOrNullConverter() DateTime? dateOfBirth,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? photoUrl,
  }) = _UserModelDto;

  @Implements<IUserModelDto>()
  const factory UserModelDto.patient({
    required String id,
    @DateTimeOrNullConverter() DateTime? dateOfBirth,
    String? email,
    String? firstName,
    String? lastName,
    String? pinCode,
    String? phoneNumber,
    String? photoUrl,
  }) = PatientUserDto;

  const UserModelDto._();

  factory UserModelDto.fromJson(Map<String, dynamic> json) {
    if (json['pinCode'] != null) return PatientUserDto.fromJson(json);
    return _UserModelDto.fromJson(json);
  }

  factory UserModelDto.fromJsonWithId(Map<String, dynamic> json, String id) =>
      UserModelDto.fromJson(<String, dynamic>{'id': id, ...json});

  Map<String, dynamic> toJsonWithoutId() => toJson()..remove('id');
}
