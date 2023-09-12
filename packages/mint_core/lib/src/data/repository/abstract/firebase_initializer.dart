import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';

abstract class FirebaseInitializer {
  Future<void> init();

  Future<FirebaseAuth> get firebaseAuth;

  Future<FirebaseFirestore> get firestore;

  Future<FirebaseStorage> get storage;

  Future<FirebaseFunctions> get functions;

  Future<FirebaseChatCore> get chat;
}
