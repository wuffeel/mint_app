import '../../../../mint_core.dart';

abstract class UserService {
  Future<UserModel?> getCurrentUser();

  Future<void> changePinCode(String userUid, String? pinCode);

  Future<void> logOut();

  Future<UserModel?> getUserData(String userId);

  /// If user photo changed, user with new photo should be returned.
  ///
  /// Otherwise, unchanged [userData] should be returned.
  Future<UserModel> updateUserData(UserModel userData, {FileData? photoData});

  Future<void> initializeUserPresence(String userId);

  Future<Stream<UserPresence>> getUserPresence(String userId);
}
