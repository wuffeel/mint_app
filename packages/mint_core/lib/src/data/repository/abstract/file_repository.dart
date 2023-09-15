import 'dart:typed_data';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class FileRepository {
  /// [fileName] should be with file extension provided
  Future<String?> loadFile(
    String fileName,
    String fileUri, {
    void Function()? onLoadingCallback,
    void Function()? onLoadedCallback,
  });

  /// [fileName] should be with file extension provided
  Future<void> openFile(String fileName);

  Future<({types.PartialImage message, Uint8List bytes})?> pickImage();

  Future<({types.PartialFile message, Uint8List bytes})?> pickFile();

  Future<({types.PartialAudio message, Uint8List bytes})> saveAudio(
    types.PartialAudio audioMessage,
  );

  Future<void> deleteLocalFile(String fileName);
}
