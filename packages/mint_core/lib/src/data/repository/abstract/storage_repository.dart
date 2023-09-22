import 'dart:typed_data';

abstract class StorageRepository {
  Future<String?> getLinkByStorageUrl(String? storageUrl);

  Future<({String photoUrl, String? storageUrl})> uploadUserPhoto(
    Uint8List bytes,
    String fileName,
    String userId,
  );

  Future<String> uploadChatFile(
    Uint8List bytes,
    String fileName,
    String roomId, {
    String? contentType,
  });

  Future<void> deleteStorageFile(String fileUrl);
}
