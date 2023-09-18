import '../../../../mint_core.dart';

abstract class UserService {
  Future<UserModel?> getCurrentUser();

  Future<void> changePinCode(String userUid, String? pinCode);

  Future<void> logOut();

  Future<UserModel?> getUserData(String userId);

  Future<UserModel> updateUserData(UserModel userData, {FileData? photoData});

  Future<void> initializeUserPresence(String userId);

  Future<Stream<UserPresence>> getUserPresence(String userId);
}
