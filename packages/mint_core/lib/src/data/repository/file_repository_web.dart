import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:injectable/injectable.dart';
import 'package:universal_html/html.dart' as html;
import 'package:uuid/uuid.dart';

import '../../../mint_module.dart';
import 'abstract/file_repository.dart';
import 'file_repository_impl.dart';

@web
@LazySingleton(as: FileRepository)
class FileRepositoryWeb extends FileRepositoryImpl {
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
}
