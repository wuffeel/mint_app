import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../../mint_module.dart';
import '../../../backbone/user_type.dart';
import '../../../exceptions/auth_user_type_exception.dart';
import '../abstract/google_auth_repository.dart';

class FirebaseGoogleAuthRepository extends GoogleAuthRepository {
  FirebaseGoogleAuthRepository(this._firebaseInitializer);

  final FirebaseInitializer _firebaseInitializer;

  static const _usersCollection = 'users';

  Future<CollectionReference<Map<String, dynamic>>>
      get _usersCollectionRef async =>
          (await _firebaseInitializer.firestore).collection(_usersCollection);

  @override
  Future<void> signInWithGoogle() {
    throw UnimplementedError('[signInWithGoogle] has not been implemented');
  }

  /// Checks if the user with [userId] has correct user type in Firestore.
  /// If there is no user associated, does nothing.
  ///
  /// For example, in web application the correct user type is __'specialist'__.
  ///
  /// Throws an [AuthUserTypeException] if the user type is incorrect.
  Future<bool?> checkForValidUserType(String userId, UserType validType) async {
    final userCollection = await _usersCollectionRef;
    final userDoc = await userCollection.doc(userId).get();
    if (!userDoc.exists) return null;
    final userData = userDoc.data();
    final type = userData?['type'] as String?;
    if (type == null) return null;
    if (type != validType.name) return false;
    return true;
  }

  /// Checks if user type of [userId] is [validType].
  ///
  /// If user type is not valid, signs out user with [onSignOut] callback and
  /// [AuthUserTypeException] is thrown.
  Future<void> signOutOnInvalidUser(
    String userId,
    UserType validType, {
    required void Function() onSignOut,
  }) async {
    final isValidUser = await checkForValidUserType(userId, validType);
    if (isValidUser != null && !isValidUser) {
      onSignOut();
      throw AuthUserTypeException();
    }
  }
}

@LazySingleton(as: GoogleAuthRepository, env: ['native'])
class FirebaseGoogleAuthRepositoryNative extends FirebaseGoogleAuthRepository {
  FirebaseGoogleAuthRepositoryNative(super.firebaseInitializer);

  final _googleSignIn = GoogleSignIn();

  @override
  Future<void> signInWithGoogle() async {
    final auth = await _firebaseInitializer.firebaseAuth;

    await _googleSignIn.signOut().catchError((_) => null);
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser?.authentication;

    if (googleAuth == null) return;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential = await auth.signInWithCredential(credential);

    final user = userCredential.user;
    if (user == null) return;

    await signOutOnInvalidUser(
      user.uid,
      UserType.patient,
      onSignOut: () async {
        await Future.wait([auth.signOut(), _googleSignIn.signOut()]);
      },
    );
  }
}

@LazySingleton(as: GoogleAuthRepository, env: ['web'])
class FirebaseGoogleAuthRepositoryWeb extends FirebaseGoogleAuthRepository {
  FirebaseGoogleAuthRepositoryWeb(super.firebaseInitializer);

  final _googleProvider = GoogleAuthProvider().setCustomParameters({
    'prompt': 'select_account',
  });

  @override
  Future<void> signInWithGoogle() async {
    final auth = await _firebaseInitializer.firebaseAuth;

    final userCredential = await auth.signInWithPopup(_googleProvider);

    final user = userCredential.user;
    if (user == null) return;

    await signOutOnInvalidUser(
      user.uid,
      UserType.specialist,
      onSignOut: auth.signOut,
    );
  }
}
