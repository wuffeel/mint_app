import 'dart:typed_data';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';

import '../../../../mint_assembly.dart';
import '../../../../mint_module.dart';
import '../../../data/repository/abstract/chat_repository.dart';
import '../abstract/file_service.dart';

@injectable
class FirebaseChatService implements ChatService {
  FirebaseChatService(
    this._chatRepository,
    this._storageService,
    this._fileService,
    this._chatRoomFromMap,
  );

  final ChatRepository _chatRepository;

  final StorageService _storageService;
  final FileService _fileService;

  final Factory<types.Room?, Map<String, dynamic>> _chatRoomFromMap;

  @override
  Future<types.Room> createRoom(String userId, String specialistId) {
    return _chatRepository.createRoom(userId, specialistId);
  }

  @override
  Future<types.Room?> fetchRoom(String roomId) async {
    final room = await _chatRepository.fetchRoom(roomId);
    if (room == null) return null;
    return _chatRoomFromMap.create(room);
  }

  @override
  Future<Stream<List<types.Room>>> fetchRoomList(String userId) async {
    return _chatRepository.fetchRoomList(userId);
  }

  @override
  Future<Stream<List<types.Message>>> getMessages(types.Room room) {
    return _chatRepository.getMessages(room);
  }

  /// Function to send message.
  ///
  /// [partialMessage] should be one of Partial message models, which then
  /// will be converted to full model. [partialMessage] is dynamic here because
  /// flutter\_chat\_types package do not provide abstraction for Partial message
  /// models.
  @override
  Future<void> sendMessage(
    dynamic partialMessage,
    String roomId, {
    Uint8List? bytes,
  }) async {
    return bytes != null
        ? _handlePartialFileSend(partialMessage, roomId, bytes)
        : _chatRepository.sendMessage(partialMessage, roomId);
  }

  @override
  Future<void> deleteMessage(String roomId, types.Message message) {
    if (message is types.ImageMessage ||
        message is types.FileMessage ||
        message is types.AudioMessage) {
      _handleFileDeletion(message);
    }
    return _chatRepository.deleteMessage(roomId, message.id);
  }

  @override
  Future<void> onPreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
    String roomId,
  ) {
    return _chatRepository.onPreviewDataFetched(message, previewData, roomId);
  }

  Future<void> _handlePartialFileSend(
    dynamic message,
    String roomId,
    Uint8List bytes,
  ) async {
    if (message is types.PartialImage) {
      final name = _getFileName(message.metadata, message.name);
      final fileUrl = await _storageService.uploadChatFile(bytes, name, roomId);

      final partialMessage = types.PartialImage(
        name: message.name,
        size: message.size,
        uri: fileUrl,
        metadata: message.metadata,
      );

      return _chatRepository.sendMessage(partialMessage, roomId);
    } else if (message is types.PartialFile) {
      final name = _getFileName(message.metadata, message.name);
      final fileUrl = await _storageService.uploadChatFile(bytes, name, roomId);

      final partialMessage = types.PartialFile(
        name: message.name,
        size: message.size,
        uri: fileUrl,
        metadata: message.metadata,
      );

      return _chatRepository.sendMessage(partialMessage, roomId);
    } else if (message is types.PartialAudio) {
      final name = _getFileName(message.metadata, message.name);
      final fileUrl = await _storageService.uploadChatFile(bytes, name, roomId);

      final partialMessage = types.PartialAudio(
        duration: message.duration,
        name: message.name,
        size: message.size,
        uri: fileUrl,
        metadata: message.metadata,
      );

      return _chatRepository.sendMessage(partialMessage, roomId);
    }
  }

  Future<void> _handleFileDeletion(dynamic message) async {
    if (message is types.ImageMessage) {
      await _storageService.deleteStorageFile(message.uri);
    } else if (message is types.FileMessage) {
      final name = _getFileName(message.metadata, message.name);
      await _storageService.deleteStorageFile(message.uri);
      await _fileService.deleteLocalFile(name);
    } else if (message is types.AudioMessage) {
      final name = _getFileName(message.metadata, message.name);
      await _storageService.deleteStorageFile(message.uri);
      await _fileService.deleteLocalFile(name);
    }
  }

  /// Returns message file name.
  ///
  /// Looks up for __uuid__ in message [metadata]. If found, returns file name
  /// as uuid with [fileName] extension. Otherwise, [fileName] is returned.
  String _getFileName(Map<String, dynamic>? metadata, String fileName) {
    final uuid = metadata?['uuid'] as String?;
    return uuid != null ? '$uuid${extension(fileName)}' : fileName;
  }
}
