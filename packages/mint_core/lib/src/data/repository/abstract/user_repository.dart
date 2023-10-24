import '../../../../mint_core.dart';
import '../../model/user_presence_dto/user_presence_dto.dart';

abstract class UserRepository {
  Future<UserModelDto?> getCurrentUser();

  Future<void> changePinCode(String userUid, String? pinCode);

  Future<void> logOut();

  Future<UserModelDto?> getUserData(String userId);

  Future<void> updateUserData(UserModelDto userDataDto, {String? photoUrl});

  Future<void> initializeUserPresence(String userId);

  Future<void> cancelUserPresenceSubscription();

  Future<Stream<UserPresenceDto>> getUserPresence(String userId);
}
