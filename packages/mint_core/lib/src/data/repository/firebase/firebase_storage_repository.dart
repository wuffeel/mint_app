import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

import '../abstract/firebase_initializer.dart';
import '../abstract/storage_repository.dart';

@lazySingleton
class FirebaseStorageRepository implements StorageRepository {
  FirebaseStorageRepository(this._firebaseInitializer);

  final FirebaseInitializer _firebaseInitializer;

  @override
  Future<String?> getLinkByStorageUrl(String? storageUrl) async {
    final storage = await _firebaseInitializer.storage;

    if (storageUrl != null) {
      if (storageUrl.startsWith('http')) return null;
      return storage.ref().child(storageUrl).getDownloadURL();
    }

    return null;
  }

  @override
  Future<({String photoUrl, String? storageUrl})> uploadUserPhoto(
    Uint8List bytes,
    String fileName,
    String userId,
  ) async {
    final storage = await _firebaseInitializer.storage;

    final storagePath = 'users/$userId${extension(fileName)}';
    final file = await storage.ref().child(storagePath).putData(
          bytes,
          SettableMetadata(contentType: lookupMimeType(fileName)),
        );
    final photoUrl = await file.ref.getDownloadURL();
    return (photoUrl: photoUrl, storageUrl: storagePath);
  }

  @override
  Future<String> uploadChatFile(
    Uint8List bytes,
    String fileName,
    String roomId,
  ) async {
    final storage = await _firebaseInitializer.storage;

    final storageRef = storage.ref().child('files/$roomId/$fileName');
    final uploadedFile = await storageRef.putData(
      bytes,
      SettableMetadata(contentType: lookupMimeType(fileName)),
    );

    return uploadedFile.ref.getDownloadURL();
  }

  @override
  Future<void> deleteStorageFile(String fileUrl) async {
    final storage = await _firebaseInitializer.storage;

    return storage.refFromURL(fileUrl).delete();
  }
}
