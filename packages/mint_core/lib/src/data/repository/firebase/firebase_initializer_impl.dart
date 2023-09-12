import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:injectable/injectable.dart';

import '../../../backbone/environment_type.dart';
import '../../../firebase/web/firebase_options_dev.dart' as dev;
import '../../../firebase/web/firebase_options_prod.dart' as prod;
import '../../../firebase/web/firebase_options_stg.dart' as stg;
import '../../../injector/injector.dart';
import '../../../utils/environment_util.dart';
import '../abstract/firebase_initializer.dart';

@native
@LazySingleton(as: FirebaseInitializer)
class FirebaseInitializerNative extends FirebaseInitializer {
  FirebaseInitializerNative() {
    init();
  }

  final _firebaseCompleter = Completer<FirebaseApp>();

  @override
  Future<FirebaseAuth> get firebaseAuth async {
    await _firebaseCompleter.future;
    return FirebaseAuth.instance;
  }

  @override
  Future<FirebaseFirestore> get firestore async {
    await _firebaseCompleter.future;
    return FirebaseFirestore.instance;
  }

  @override
  Future<FirebaseStorage> get storage async {
    await _firebaseCompleter.future;
    return FirebaseStorage.instance;
  }

  @override
  Future<FirebaseFunctions> get functions async {
    await _firebaseCompleter.future;
    return FirebaseFunctions.instance;
  }

  @override
  Future<FirebaseChatCore> get chat async {
    await _firebaseCompleter.future;
    return FirebaseChatCore.instance;
  }

  @override
  Future<void> init() async {
    try {
      final app = await Firebase.initializeApp();
      FirebaseChatCore.instance.setConfig(
        const FirebaseChatCoreConfig(null, 'chat_rooms', 'chat_users'),
      );
      _firebaseCompleter.complete(app);
    } catch (e, s) {
      debugPrint('Firebase initialization error: $e');
      _firebaseCompleter.completeError(e, s);
    }
  }
}

@web
@LazySingleton(as: FirebaseInitializer)
class FirebaseInitializerWeb implements FirebaseInitializer {
  FirebaseInitializerWeb() {
    init();
  }

  final _firebaseCompleter = Completer<FirebaseApp>();

  @override
  Future<FirebaseAuth> get firebaseAuth async {
    await _firebaseCompleter.future;
    return FirebaseAuth.instance;
  }

  @override
  Future<FirebaseFirestore> get firestore async {
    await _firebaseCompleter.future;
    return FirebaseFirestore.instance;
  }

  @override
  Future<FirebaseStorage> get storage async {
    await _firebaseCompleter.future;
    return FirebaseStorage.instance;
  }

  @override
  Future<FirebaseFunctions> get functions async {
    await _firebaseCompleter.future;
    return FirebaseFunctions.instance;
  }

  @override
  Future<FirebaseChatCore> get chat async {
    await _firebaseCompleter.future;
    return FirebaseChatCore.instance;
  }

  @override
  Future<void> init() async {
    try {
      final app = await Firebase.initializeApp(options: _getFirebaseOptions());
      FirebaseChatCore.instance.setConfig(
        const FirebaseChatCoreConfig(null, 'chat_rooms', 'chat_users'),
      );
      _firebaseCompleter.complete(app);
    } catch (e, s) {
      debugPrint('Firebase initialization error: $e');
      _firebaseCompleter.completeError(e, s);
    }
  }

  /// Retrieves the appropriate Firebase configuration options based on the
  /// application environment.
  ///
  /// This method checks the current application environment using
  /// [EnvironmentUtil.getApplicationEnvironment] and returns the corresponding
  /// Firebase configuration options.
  ///
  /// If the environment is not recognized, it falls back to using the default
  /// options for the 'dev' environment.
  ///
  /// Returns the [FirebaseOptions] instance for the selected environment.
  FirebaseOptions _getFirebaseOptions() {
    final environment = EnvironmentUtil.getApplicationEnvironment();
    if (environment == null) return dev.DefaultFirebaseOptions.currentPlatform;

    switch (environment) {
      case EnvironmentType.dev:
        return dev.DefaultFirebaseOptions.currentPlatform;
      case EnvironmentType.prod:
        return prod.DefaultFirebaseOptions.currentPlatform;
      case EnvironmentType.stg:
        return stg.DefaultFirebaseOptions.currentPlatform;
    }
  }
}
