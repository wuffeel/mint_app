import 'package:injectable/injectable.dart';

import '../../../../mint_assembly.dart';
import '../../../../mint_core.dart';
import '../../../../mint_module.dart';

@injectable
class FirebaseUserService implements UserService {
  FirebaseUserService(
    this._userRepository,
    this._storageService,
    this._userModelFromDto,
    this._userModelToDto,
  );

  final UserRepository _userRepository;
  final StorageService _storageService;

  final Factory<Future<UserModel>, UserModelDto> _userModelFromDto;
  final Factory<UserModelDto, UserModel> _userModelToDto;

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
  Future<UserModel> updateUserData(
    UserModel userData, {
    FileData? photoData,
  }) async {
    if (photoData == null) return userData;
    final fileData = await _storageService.uploadUserPhoto(
      photoData.bytes,
      photoData.name,
      userData.id,
    );

    final photoUrl = fileData.photoUrl;
    final storageUrl = fileData.storageUrl;

    await _userRepository.updateUserData(
      _userModelToDto
          .create(userData)
          .copyWith(photoUrl: storageUrl),
    );

    return userData.copyWith(photoUrl: photoUrl);
  }
}
