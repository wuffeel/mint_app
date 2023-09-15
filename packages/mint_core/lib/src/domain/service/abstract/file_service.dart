import 'dart:typed_data';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class FileService {
  Future<String?> loadFile(
    String fileName,
    String fileUri, {
    void Function()? onLoadingCallback,
    void Function()? onLoadedCallback,
  });

  Future<void> openFile(String fileName);

  Future<({types.PartialImage message, Uint8List bytes})?> pickImage();

  Future<({types.PartialFile message, Uint8List bytes})?> pickFile();

  Future<({types.PartialAudio message, Uint8List bytes})> saveAudio(
    types.PartialAudio audioMessage,
  );

  /// Deletes file at application document directory, if available for platform.
  Future<void> deleteLocalFile(String fileName);
}
