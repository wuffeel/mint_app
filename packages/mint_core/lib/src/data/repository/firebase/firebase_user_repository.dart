import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../mint_assembly.dart';
import '../../../../mint_core.dart';
import '../../../../mint_module.dart';
import '../../model/user_presence_dto/user_presence_dto.dart';

class FirebaseUserRepository implements UserRepository {
  FirebaseUserRepository(
    this._firebaseInitializer,
    this._modifiedUserDtoToMap,
  );

  final FirebaseInitializer _firebaseInitializer;

  final Factory<Map<String, dynamic>, UserModelDto> _modifiedUserDtoToMap;

  StreamSubscription<DatabaseEvent>? _userPresenceSubscription;

  static const _userCollection = 'users';
  static const _presenceCollection = 'presence';
  static const _chatUserCollection = 'chat_users';
  static const _specialistCollection = 'specialists';

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

    if (userData == null || userData.isEmpty) {
      return _createUser(user, userCollection);
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

    final userId = auth.currentUser?.uid;
    if (userId != null) await _setOfflineUserStatus(userId);

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
  Future<void> updateUserData(
    UserModelDto userDataDto, {
    String? photoUrl,
  }) async {
    final firestore = await _firebaseInitializer.firestore;
    final userCollection = firestore.collection(_userCollection);
    final chatUserCollection = firestore.collection(_chatUserCollection);

    /// Data to be updated for user in [_userCollection].
    final userDataMap = _modifiedUserDtoToMap.create(userDataDto);

    /// Data to be updated for user in [_chatUserCollection]
    final chatUserMap =
        _userModelDtoToChatUser(userDataDto, photoUrl: photoUrl);
    await Future.wait([
      chatUserCollection.doc(userDataDto.id).update(chatUserMap),
      userCollection.doc(userDataDto.id).update(userDataMap),
    ]);
  }

  /// https://firebase.google.com/docs/firestore/solutions/presence?hl=en
  @override
  Future<void> initializeUserPresence(String userId) async {
    final database = await _firebaseInitializer.database;

    final presenceDatabaseRef = await _presenceDatabaseRef(userId);
    final presenceFirestoreRef = await _presenceFirestoreRef(userId);
    final specialistRef = await _specialistRef(userId);
    final specialistExists = await _specialistEntryExists(userId);

    final offline = {'isOnline': false};
    final online = {'isOnline': true};

    Future<void> setFirestoreOfflineStatus() async {
      final futures = [presenceFirestoreRef.set(_firestoreStatusMap(offline))];
      if (specialistExists) futures.add(specialistRef.update(offline));

      await Future.wait(futures);
    }

    void setOnlineStatus() {
      presenceDatabaseRef.set(_databaseStatusMap(online));
      presenceFirestoreRef.set(_firestoreStatusMap(online));
      if (specialistExists) specialistRef.update(online);
    }

    _userPresenceSubscription =
        database.ref('.info/connected').onValue.listen((event) async {
      if (event.snapshot.value == null) {
        await setFirestoreOfflineStatus();
        return;
      }
      await presenceDatabaseRef
          .onDisconnect()
          .set(_databaseStatusMap(offline))
          .then((_) => setOnlineStatus());
    });
  }

  @override
  Future<void> cancelUserPresenceSubscription() async {
    await _userPresenceSubscription?.cancel();
  }

  @override
  Future<Stream<UserPresenceDto>> getUserPresence(String userId) async {
    final firestore = await _firebaseInitializer.firestore;
    return firestore
        .collection(_presenceCollection)
        .doc(userId)
        .snapshots()
        .asyncMap((doc) {
      final data = doc.data();
      if (data == null) return null;
      return UserPresenceDto.fromJson(data);
    }).whereType<UserPresenceDto>();
  }

  /// Creates chat user map from [param] for fields update of database doc.
  ///
  /// Used as method because [Factory<Map<String, dynamic>, UserModelDto>] is
  /// already defined
  Map<String, dynamic> _userModelDtoToChatUser(
    UserModelDto param, {
    String? photoUrl,
  }) {
    final chatUserMap = <String, dynamic>{
      'firstName': param.firstName,
      'lastName': param.lastName,
      'updatedAt': FieldValue.serverTimestamp(),
    };
    if (photoUrl != null) chatUserMap['imageUrl'] = photoUrl;
    return chatUserMap;
  }

  Future<UserModelDto> _createUser(
    User user,
    CollectionReference userCollection,
  ) {
    throw UnimplementedError('[_createUser] has not been implemented');
  }

  Future<void> _setOfflineUserStatus(String userId) async {
    final offline = {'isOnline': false};
    final futures = [
      (await _presenceDatabaseRef(userId)).set(_databaseStatusMap(offline)),
      (await _presenceFirestoreRef(userId)).set(_firestoreStatusMap(offline)),
    ];
    final specialistExists = await _specialistEntryExists(userId);
    if (specialistExists) {
      futures.add((await _specialistRef(userId)).update(offline));
    }

    await Future.wait(futures);
  }

  Future<DatabaseReference> _presenceDatabaseRef(String userId) async {
    final database = await _firebaseInitializer.database;
    return database.ref().child(_presenceCollection).child(userId);
  }

  Future<DocumentReference<Map<String, dynamic>>> _presenceFirestoreRef(
    String userId,
  ) async {
    final firestore = await _firebaseInitializer.firestore;
    return firestore.collection(_presenceCollection).doc(userId);
  }

  Future<DocumentReference<Map<String, dynamic>>> _specialistRef(
    String userId,
  ) async {
    final firestore = await _firebaseInitializer.firestore;
    return firestore.collection(_specialistCollection).doc(userId);
  }

  Future<bool> _specialistEntryExists(String specialistId) async {
    final specialistRef = await _specialistRef(specialistId);
    final specialistDoc = await specialistRef.get();
    return specialistDoc.exists;
  }

  Map<String, dynamic> _databaseStatusMap(Map<String, dynamic> status) =>
      {...status, 'lastSeen': ServerValue.timestamp};

  Map<String, dynamic> _firestoreStatusMap(Map<String, dynamic> status) =>
      {...status, 'lastSeen': FieldValue.serverTimestamp()};
}

@web
@LazySingleton(as: FirebaseUserRepository)
class FirebaseWebUserRepository extends FirebaseUserRepository {
  FirebaseWebUserRepository(
    super.firebaseInitializer,
    super.modifiedUserDtoToMap,
  );

  @override
  Future<void> updateUserData(
    UserModelDto userDataDto, {
    String? photoUrl,
  }) async {
    await super.updateUserData(userDataDto);

    final firestore = await _firebaseInitializer.firestore;
    final specialistCollection =
        firestore.collection(FirebaseUserRepository._specialistCollection);

    final storageUrl = userDataDto.photoUrl;
    if (storageUrl == null || storageUrl.startsWith('http')) return;
    return specialistCollection
        .doc(userDataDto.id)
        .update({'photoUrl': storageUrl});
  }

  @override
  Future<UserModelDto> _createUser(
    User user,
    CollectionReference userCollection,
  ) async {
    String? firstName;
    String? lastName;

    final userNameSplit = user.displayName?.split(' ');
    if (userNameSplit != null && userNameSplit.isNotEmpty) {
      firstName = userNameSplit.first;
      lastName = userNameSplit.last;
    }
    final userModelDto = UserModelDto(
      id: user.uid,
      email: user.email,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: user.phoneNumber,
    );
    final userModelDtoMap = userModelDto.toJsonWithoutId();
    await userCollection.doc(user.uid).set(userModelDtoMap);

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
    User user,
    CollectionReference userCollection,
  ) async {
    String? firstName;
    String? lastName;

    final userNameSplit = user.displayName?.split(' ');
    if (userNameSplit != null && userNameSplit.isNotEmpty) {
      firstName = userNameSplit.first;
      lastName = userNameSplit.last;
    }
    final userModelDto = PatientUserDto(
      id: user.uid,
      email: user.email,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: user.phoneNumber,
    );
    final userModelDtoMap = userModelDto.toJsonWithoutId();
    await userCollection.doc(user.uid).set(userModelDtoMap);

    return userModelDto;
  }
}
