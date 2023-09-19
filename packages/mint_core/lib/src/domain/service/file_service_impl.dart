import 'dart:typed_data';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:injectable/injectable.dart';

import '../../data/repository/abstract/file_repository.dart';
import 'abstract/file_service.dart';

@injectable
class FileServiceImpl implements FileService {
  FileServiceImpl(this._fileRepository);

  final FileRepository _fileRepository;

  @override
  Future<String?> loadFile(
    String fileName,
    String fileUri, {
    void Function()? onLoadingCallback,
    void Function()? onLoadedCallback,
  }) async {
    return _fileRepository.loadFile(
      fileName,
      fileUri,
      onLoadingCallback: onLoadingCallback,
      onLoadedCallback: onLoadedCallback,
    );
  }

  @override
  Future<void> openFile(String fileName) async {
    return _fileRepository.openFile(fileName);
  }

  @override
  Future<({types.PartialImage message, Uint8List bytes})?> pickImage() async {
    return _fileRepository.pickImage();
  }

  @override
  Future<({types.PartialFile message, Uint8List bytes})?> pickFile() async {
    return _fileRepository.pickFile();
  }

  @override
  Future<({types.PartialAudio message, Uint8List bytes})?> saveAudio(
    String audioPath,
    Duration duration,
  ) async {
    return _fileRepository.saveAudio(audioPath, duration);
  }

  @override
  Future<void> deleteLocalFile(String fileName) async {
    return _fileRepository.deleteLocalFile(fileName);
  }
}
