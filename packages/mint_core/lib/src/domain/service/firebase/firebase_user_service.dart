import 'package:injectable/injectable.dart';

import '../../../../mint_assembly.dart';
import '../../../../mint_core.dart';
import '../../../data/repository/abstract/user_repository.dart';
import '../abstract/user_service.dart';

@injectable
class FirebaseUserService implements UserService {
  FirebaseUserService(
    this._userRepository,
    this._userModelFromDto,
    this._userModelToDto,
  );

  final Factory<Future<UserModel>, UserModelDto> _userModelFromDto;
  final Factory<Future<UserModelDto>, UserModel> _userModelToDto;

  final UserRepository _userRepository;

  @override
  Future<UserModel?> getCurrentUser() async {
    final user = await _userRepository.getCurrentUser();
    if (user == null) return null;
    return _userModelFromDto.create(user);
  }

  @override
  Future<void> changePinCode(String userUid, String? pinCode) {
    return _userRepository.changePinCode(userUid, pinCode);
  }

  @override
  Future<void> logOut() async {
    await _userRepository.logOut();
  }

  @override
  Future<UserModel?> getUserData(String userId) async {
    final user = await _userRepository.getUserData(userId);
    if (user == null) return null;
    return _userModelFromDto.create(user);
  }

  @override
  Future<UserModel> updateUserData(UserModel userData) async {
    final userDataDto = await _userModelToDto.create(userData);
    await _userRepository.updateUserData(userDataDto);
    final photoUrl = userData.photoUrl;
    final user = photoUrl == null || photoUrl.startsWith('http')
        ? userData
        : await _userModelFromDto.create(userDataDto);
    return user;
  }
}
