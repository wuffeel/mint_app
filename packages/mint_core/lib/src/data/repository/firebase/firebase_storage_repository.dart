import 'dart:io';

import 'package:injectable/injectable.dart';
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
  Future<String> uploadUserPhoto(String filePath, String userId) async {
    final storage = await _firebaseInitializer.storage;

    final file = File(filePath);
    final storagePath = 'users/$userId${extension(file.path)}';
    await storage.ref().child(storagePath).putFile(file);
    return storagePath;
  }

  @override
  Future<String> uploadChatFile(
    String filePath,
    String fileId,
    String roomId,
  ) async {
    final storage = await _firebaseInitializer.storage;

    final file = File(filePath);
    final uploadedFile = await storage.ref()
        .child('files/$roomId/$fileId${extension(file.path)}')
        .putFile(file);

    return uploadedFile.ref.getDownloadURL();
  }

  @override
  Future<void> deleteStorageFile(String fileUrl) async {
    final storage = await _firebaseInitializer.storage;

    return storage.refFromURL(fileUrl).delete();
  }
}
