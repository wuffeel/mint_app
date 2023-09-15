import 'dart:typed_data';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import 'abstract/file_repository.dart';

abstract class FileRepositoryImpl implements FileRepository {
  /// Handles file load. Returns path to the file.
  ///
  /// __(!)__ For __web__ platform calls download prompt and returns null.
  ///
  /// Looks for local file existence by given [fileName]. If it do not exist
  /// and [fileUri] is a hyperlink, starts the local-storing process. The file
  /// will be stored at application document directory with a [fileName]
  /// name.
  ///
  /// [onLoadingCallback] and [onLoadedCallback] used to represent the file
  /// local load process.
  @override
  Future<String?> loadFile(
    String fileName,
    String fileUri, {
    void Function()? onLoadingCallback,
    void Function()? onLoadedCallback,
  }) async {
    throw UnimplementedError('[loadFile] has not been implemented');
  }

  /// Opens a file located in the application's document directory.
  ///
  /// __(!)__ For __web__ platform does nothing.
  @override
  Future<void> openFile(String fileName) async {
    throw UnimplementedError('[openFile] has not been implemented');
  }

  /// Handles picking an image from the phone's gallery.
  ///
  /// If an image is picked, it will be returned as a [types.PartialImage] with
  /// a unique UUID in metadata.
  @override
  Future<({types.PartialImage message, Uint8List bytes})?> pickImage() async {
    final image = await ImagePicker().pickImage(
      imageQuality: 70,
      source: ImageSource.gallery,
    );

    if (image != null) {
      final uuid = const Uuid().v4();
      final bytes = await image.readAsBytes();

      final message = types.PartialImage(
        name: image.name,
        size: bytes.length,
        uri: image.path,
        metadata: {'uuid': uuid},
      );

      return (message: message, bytes: bytes);
    }

    return null;
  }

  /// Handles picking a file from the phone's storage.
  ///
  /// If a file is picked, it will be returned as a [types.PartialFile] with
  /// a unique UUID in metadata.
  @override
  Future<({types.PartialFile message, Uint8List bytes})?> pickFile() async {
    throw UnimplementedError('[pickFile] has not been implemented');
  }

  /// Handles saving an audio message locally.
  ///
  /// Given [audioMessage] will be returned with unique a UUID in metadata.
  @override
  Future<({types.PartialAudio message, Uint8List bytes})> saveAudio(
    types.PartialAudio audioMessage,
  ) async {
    throw UnimplementedError('[saveAudio] has not been implemented');
  }

  /// Deletes local file with [fileName] if it exists in application document
  /// directory.
  ///
  /// __(!)__ For __web__ platform does nothing.
  @override
  Future<void> deleteLocalFile(String fileName) async {
    throw UnimplementedError('[deleteLocalFile] has not been implemented');
  }
}
