import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import '../../../data/repository/abstract/storage_repository.dart';
import '../abstract/storage_service.dart';

@injectable
class FirebaseStorageService implements StorageService {
  FirebaseStorageService(this._storageRepository);

  final StorageRepository _storageRepository;

  @override
  Future<String?> getLinkByStorageUrl(String? storageUrl) {
    return _storageRepository.getLinkByStorageUrl(storageUrl);
  }

  @override
  Future<({String photoUrl, String? storageUrl})> uploadUserPhoto(
    Uint8List bytes,
    String fileName,
    String userId,
  ) {
    return _storageRepository.uploadUserPhoto(bytes, fileName, userId);
  }

  @override
  Future<String> uploadChatFile(
    Uint8List bytes,
    String fileName,
    String roomId,
  ) {
    return _storageRepository.uploadChatFile(bytes, fileName, roomId);
  }

  @override
  Future<void> deleteStorageFile(String fileUrl) {
    return _storageRepository.deleteStorageFile(fileUrl);
  }
}
