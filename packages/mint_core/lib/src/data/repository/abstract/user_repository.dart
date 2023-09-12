import '../../../../mint_core.dart';

abstract class UserRepository {
  Future<UserModelDto?> getCurrentUser();

  Future<void> changePinCode(String userUid, String? pinCode);

  Future<void> logOut();

  Future<UserModelDto?> getUserData(String userId);

  Future<void> updateUserData(UserModelDto userDataDto);
}
