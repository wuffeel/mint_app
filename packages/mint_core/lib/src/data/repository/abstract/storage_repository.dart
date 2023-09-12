abstract class StorageRepository {
  Future<String?> getLinkByStorageUrl(String? storageUrl);

  Future<String> uploadUserPhoto(String filePath, String userId);

  Future<String> uploadChatFile(String filePath, String fileId, String roomId);

  Future<void> deleteStorageFile(String fileUrl);
}
