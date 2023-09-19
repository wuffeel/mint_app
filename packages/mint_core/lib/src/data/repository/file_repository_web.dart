import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:universal_html/html.dart' as html;
import 'package:uuid/uuid.dart';

import '../../../mint_module.dart';
import 'abstract/file_repository.dart';
import 'file_repository_impl.dart';

@web
@LazySingleton(as: FileRepository)
class FileRepositoryWeb extends FileRepositoryImpl {
  /// No local files in web, does nothing
  @override
  Future<void> deleteLocalFile(String fileName) async {}

  @override
  Future<String?> loadFile(
    String fileName,
    String fileUri, {
    void Function()? onLoadingCallback,
    void Function()? onLoadedCallback,
  }) async {
    if (fileUri.startsWith('http')) {
      html.AnchorElement(href: fileUri)
        ..download = fileUri
        ..click();
    }
    return null;
  }

  /// Handles picking a file from the phone's storage.
  ///
  /// If a file is picked, it will be returned as a [types.PartialFile] with
  /// a unique UUID.
  @override
  Future<({types.PartialFile message, Uint8List bytes})?> pickFile() async {
    final file = await FilePicker.platform.pickFiles(withData: true);

    if (file != null && file.files.isNotEmpty) {
      final uuid = const Uuid().v4();
      final pickFile = file.files.first;

      final message = types.PartialFile(
        name: pickFile.name,
        size: pickFile.size,
        uri: '',
        metadata: {'uuid': uuid},
      );

      final bytes = pickFile.bytes;
      if (bytes == null) return null;

      return (message: message, bytes: bytes);
    }
    return null;
  }

  @override
  Future<({types.PartialAudio message, Uint8List bytes})?> saveAudio(
    String audioPath,
    Duration duration,
  ) async {
    final uri = Uri.parse(audioPath);
    final response =
        await http.get(uri, headers: {'Content-Type': 'audio/webm'});
    if (response.statusCode == 200) {
      final audioBytes = response.bodyBytes;
      final audioBlob = html.Blob([Uint8List.fromList(audioBytes)]);
      final audioObjectUrl = html.Url.createObjectUrlFromBlob(audioBlob);
      final audioElement = html.AudioElement()..src = audioObjectUrl;
      final completer = Completer<types.PartialAudio>();

      audioElement.onLoadedMetadata.listen((event) {
        log(audioElement.toString());
        final sizeInBytes = audioBytes.length;
        final fileName = uri.pathSegments.last;
        final audio = types.PartialAudio(
          duration: duration,
          name: '$fileName.webm',
          size: sizeInBytes,
          uri: uri.path,
          metadata: {'uuid': fileName.split('.').first},
        );
        completer.complete(audio);
      });

      return (message: await completer.future, bytes: audioBytes);
    }
    return null;
  }
}
