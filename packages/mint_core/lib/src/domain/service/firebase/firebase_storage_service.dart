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
  Future<String> uploadUserPhoto(String filePath, String userId) {
    return _storageRepository.uploadUserPhoto(filePath, userId);
  }

  @override
  Future<String> uploadChatFile(String filePath, String fileId, String roomId) {
    return _storageRepository.uploadChatFile(filePath, fileId, roomId);
  }

  @override
  Future<void> deleteStorageFile(String fileUrl) {
    return _storageRepository.deleteStorageFile(fileUrl);
  }
}
