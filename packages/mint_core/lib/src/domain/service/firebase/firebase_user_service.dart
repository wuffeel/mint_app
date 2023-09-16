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
    final fileData = photoData == null
        ? null
        : await _storageService.uploadUserPhoto(
            photoData.bytes,
            photoData.name,
            userData.id,
          );
    if (fileData == null) {
      await _userRepository.updateUserData(_userModelToDto.create(userData));
      return userData;
    } else {
      final userDto = _userModelToDto.create(
        userData.copyWith(photoUrl: fileData.storageUrl ?? fileData.photoUrl),
      );
      await _userRepository.updateUserData(userDto);
      return userData.copyWith(photoUrl: fileData.photoUrl);
    }
  }

  @override
  Future<void> initializeUserPresence(String userId) {
    return _userRepository.initializeUserPresence(userId);
  }

  @override
  Future<Stream<UserModel>> getUserPresence(String userId) async {
    final stream = await _userRepository.getUserPresence(userId);
    return stream.asyncMap(_userModelFromDto.create);
  }
}
