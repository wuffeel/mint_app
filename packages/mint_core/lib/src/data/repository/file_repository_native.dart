import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../../../mint_module.dart';
import 'abstract/file_repository.dart';
import 'file_repository_impl.dart';

@native
@LazySingleton(as: FileRepository)
class FileRepositoryNative extends FileRepositoryImpl {
  @override
  Future<String?> loadFile(
    String fileName,
    String fileUri, {
    void Function()? onLoadingCallback,
    void Function()? onLoadedCallback,
  }) async {
    final localPath = await _getLocalFilePath(fileName);
    final localExists = File(localPath).existsSync();

    if (fileUri.startsWith('http') && !localExists) {
      try {
        onLoadingCallback?.call();
        final uri = Uri.parse(fileUri);
        await _downloadFile(uri, localPath);
      } finally {
        onLoadedCallback?.call();
      }
    }

    return localPath;
  }

  /// Opens a file located in the application's document directory.
  ///
  /// __(!)__ For __web__ platform does nothing.
  @override
  Future<void> openFile(String fileName) async {
    final localPath = await _getLocalFilePath(fileName);
    await OpenFilex.open(localPath);
  }

  /// Handles picking a file from the phone's storage.
  ///
  /// If a file is picked, it will be returned as a [types.PartialFile] with
  /// a unique UUID.
  @override
  Future<({types.PartialFile message, Uint8List bytes})?> pickFile() async {
    final file = await FilePicker.platform.pickFiles(withReadStream: true);

    if (file != null && file.files.isNotEmpty) {
      final uuid = const Uuid().v4();
      final pickFile = file.files.first;

      final message = types.PartialFile(
        name: pickFile.name,
        size: pickFile.size,
        uri: pickFile.path ?? '',
        metadata: {'uuid': uuid},
      );

      final readStream = pickFile.readStream;
      if (readStream == null) return null;
      final bytes = await _convertStreamToUint8List(readStream);
      await _writeFileAsBytes('$uuid${extension(pickFile.name)}', bytes);

      return (message: message, bytes: bytes);
    }
    return null;
  }

  /// Converts audio file message from [audioPath] to [types.PartialAudio] and
  /// handles saving it locally in application document's dir.
  ///
  /// Audio message will be returned with unique a UUID in metadata.
  @override
  Future<({types.PartialAudio message, Uint8List bytes})> saveAudio(
    String audioPath,
    Duration duration,
  ) async {
    final uuid = const Uuid().v4();
    final uri = Uri.parse(audioPath);
    final file = File.fromUri(uri);
    final bytes = await file.readAsBytes();

    final fileName = file.path.split(Platform.pathSeparator).last;
    await _writeFileAsBytes('$uuid${extension(fileName)}', bytes);

    final message = types.PartialAudio(
      duration: duration,
      name: fileName,
      size: file.lengthSync(),
      uri: file.uri.toString(),
      metadata: {'uuid': uuid},
    );
    return (message: message, bytes: bytes);
  }

  /// Deletes local file with [fileName] if it exists in application document
  /// directory.
  @override
  Future<void> deleteLocalFile(String fileName) async {
    try {
      final localPath = await _getLocalFilePath(fileName);
      final file = File(localPath);
      await file.delete();
    } catch (error) {
      log('FileService error. Could not delete local file: $error');
    }
  }

  /// Downloads a file from the given [fileUri] and saves it to the [localPath].
  Future<void> _downloadFile(Uri fileUri, String localPath) async {
    final client = http.Client();
    final request = await client.get(fileUri);
    final bytes = request.bodyBytes;

    final file = File(localPath);
    await file.writeAsBytes(bytes);
  }

  /// Generates the local file path for a given [fileName].
  ///
  /// __(!)__ Should not be called on web platform.
  Future<String> _getLocalFilePath(String fileName) async {
    final documentsDir = await getApplicationDocumentsDirectory();
    return '${documentsDir.path}/$fileName';
  }

  /// Writes the given [bytes] to a local file with the specified [fileName].
  ///
  /// __(!)__ For __web__ platform does nothing.
  Future<void> _writeFileAsBytes(String fileName, List<int> bytes) async {
    final localPath = await _getLocalFilePath(fileName);
    final localFile = File(localPath);
    await localFile.writeAsBytes(bytes);
  }

  Future<Uint8List> _convertStreamToUint8List(Stream<List<int>> stream) async {
    final chunks = <List<int>>[];
    await for (final chunk in stream) {
      chunks.add(chunk);
    }
    return Uint8List.fromList(chunks.expand((x) => x).toList());
  }
}
