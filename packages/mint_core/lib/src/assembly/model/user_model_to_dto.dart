import 'package:injectable/injectable.dart';

import '../../data/model/user_model_dto/user_model_dto.dart';
import '../../domain/entity/user_model/user_model.dart';
import '../../injector/injector.dart';
import '../../utils/date_time_utils.dart';
import '../factory.dart';

@web
@Injectable(as: Factory<UserModelDto, UserModel>)
class UserModelToDto implements Factory<UserModelDto, UserModel> {
  @override
  UserModelDto create(UserModel param) {
    final dateOfBirth = param.dateOfBirth;
    return UserModelDto(
      id: param.id,
      email: param.email,
      firstName: param.firstName,
      lastName: param.lastName,
      dateOfBirth: dateOfBirth != null
          ? DateTimeUtils.toUtcDateOnly(dateOfBirth)
          : dateOfBirth,
      photoUrl: param.photoUrl,
      phoneNumber: param.phoneNumber,
    );
  }
}

@native
@Injectable(as: Factory<UserModelDto, UserModel>)
class PatientUserToDto implements Factory<UserModelDto, UserModel> {
  @override
  UserModelDto create(UserModel param) {
    final dateOfBirth = param.dateOfBirth;
    if (param is PatientUser) {
      return PatientUserDto(
        id: param.id,
        email: param.email,
        firstName: param.firstName,
        lastName: param.lastName,
        dateOfBirth: dateOfBirth != null
            ? DateTimeUtils.toUtcDateOnly(dateOfBirth)
            : dateOfBirth,
        pinCode: param.pinCode,
        photoUrl: param.photoUrl,
        phoneNumber: param.phoneNumber,
      );
    }
    return UserModelDto(
      id: param.id,
      email: param.email,
      firstName: param.firstName,
      lastName: param.lastName,
      dateOfBirth: dateOfBirth != null
          ? DateTimeUtils.toUtcDateOnly(dateOfBirth)
          : dateOfBirth,
      photoUrl: param.photoUrl,
      phoneNumber: param.phoneNumber,
    );
  }
}
