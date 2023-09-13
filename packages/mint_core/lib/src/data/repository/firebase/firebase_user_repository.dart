import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../mint_assembly.dart';
import '../../../../mint_core.dart';
import '../../../../mint_module.dart';

class FirebaseUserRepository implements UserRepository {
  FirebaseUserRepository(
    this._firebaseInitializer,
    this._modifiedUserDtoToMap,
  );

  final FirebaseInitializer _firebaseInitializer;

  final Factory<Map<String, dynamic>, UserModelDto> _modifiedUserDtoToMap;

  static const _userCollection = 'users';
  static const _chatUserCollection = 'chat_users';

  @override
  Future<UserModelDto?> getCurrentUser() async {
    final auth = await _firebaseInitializer.firebaseAuth;
    final firestore = await _firebaseInitializer.firestore;

    final user = auth.currentUser;

    if (user == null) return null;

    final userCollection =
        firestore.collection(FirebaseUserRepository._userCollection);
    final userDoc = await userCollection.doc(user.uid).get();
    final userData = userDoc.data();

    if (userData == null) {
      return _createUser(user.uid, user.phoneNumber, userCollection);
    }

    return UserModelDto.fromJsonWithId(userData, user.uid);
  }

  @override
  Future<void> changePinCode(String userUid, String? pinCode) async {
    final firestore = await _firebaseInitializer.firestore;
    final userCollection = firestore.collection(_userCollection);
    return userCollection.doc(userUid).update({'pinCode': pinCode});
  }

  @override
  Future<void> logOut() async {
    final auth = await _firebaseInitializer.firebaseAuth;

    await auth.signOut();
  }

  @override
  Future<UserModelDto?> getUserData(String userId) async {
    final firestore = await _firebaseInitializer.firestore;
    final userCollection = firestore.collection(_userCollection);
    final userSnapshot = await userCollection.doc(userId).get();
    final user = userSnapshot.data();
    if (user == null) return null;
    return UserModelDto.fromJsonWithId(user, userSnapshot.id);
  }

  @override
  Future<void> updateUserData(UserModelDto userDataDto) async {
    final firestore = await _firebaseInitializer.firestore;
    final userCollection = firestore.collection(_userCollection);
    final chatUserCollection = firestore.collection(_chatUserCollection);

    final userDataMap = _modifiedUserDtoToMap.create(userDataDto);
    final chatUserMap = _userModelDtoToChatUser(userDataDto);
    await Future.wait([
      chatUserCollection.doc(userDataDto.id).update(chatUserMap),
      userCollection.doc(userDataDto.id).update(userDataMap),
    ]);
  }

  /// Creates chat user map from [param] for fields update of database doc.
  ///
  /// Used as method because [Factory<Map<String, dynamic>, UserModelDto>] is
  /// already defined
  Map<String, dynamic> _userModelDtoToChatUser(UserModelDto param) {
    return <String, dynamic>{
      'firstName': param.firstName,
      'lastName': param.lastName,
      'imageUrl': param.photoUrl,
      'updatedAt': DateTime.now().toUtc(),
    };
  }

  Future<UserModelDto> _createUser(
    String uid,
    String? phoneNumber,
    CollectionReference userCollection,
  ) {
    throw UnimplementedError('[_createUser] has not been implemented');
  }
}

@web
@LazySingleton(as: FirebaseUserRepository)
class FirebaseWebUserRepository extends FirebaseUserRepository {
  FirebaseWebUserRepository(
    super.firebaseInitializer,
    super.modifiedUserDtoToMap,
  );

  @override
  Future<UserModelDto> _createUser(
    String uid,
    String? phoneNumber,
    CollectionReference userCollection,
  ) async {
    final userModelDto = UserModelDto(id: uid, phoneNumber: phoneNumber);
    final userModelDtoMap = userModelDto.toJsonWithoutId();
    await userCollection.doc(uid).set(userModelDtoMap);

    return userModelDto;
  }
}

@native
@LazySingleton(as: FirebaseUserRepository)
class FirebaseNativeUserRepository extends FirebaseUserRepository {
  FirebaseNativeUserRepository(
    super.firebaseInitializer,
    super.modifiedUserDtoToMap,
  );

  @override
  Future<PatientUserDto> _createUser(
    String uid,
    String? phoneNumber,
    CollectionReference userCollection,
  ) async {
    final userModelDto = PatientUserDto(id: uid, phoneNumber: phoneNumber);
    final userModelDtoMap = userModelDto.toJsonWithoutId();
    await userCollection.doc(uid).set(userModelDtoMap);

    return userModelDto;
  }
}
