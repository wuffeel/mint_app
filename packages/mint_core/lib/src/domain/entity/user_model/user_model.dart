import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

abstract class IUserModel {
  String get id;

  DateTime? get dateOfBirth;

  String? get email;

  String? get firstName;

  String? get lastName;

  String? get phoneNumber;

  String? get photoUrl;
}

@freezed
sealed class UserModel with _$UserModel {
  @Implements<IUserModel>()
  const factory UserModel({
    required String id,
    DateTime? dateOfBirth,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? photoUrl,
  }) = _UserModel;

  @Implements<IUserModel>()
  const factory UserModel.patient({
    required String id,
    DateTime? dateOfBirth,
    String? email,
    String? firstName,
    String? lastName,
    String? pinCode,
    String? phoneNumber,
    String? photoUrl,
  }) = PatientUser;

  const UserModel._();

  /// Returns:
  /// - 'null', if either [firstName] or [lastName] is missing;
  /// - '[firstName] [lastName]'.
  String? get fullName =>
      firstName != null && lastName != null ? '$firstName $lastName' : null;
}
