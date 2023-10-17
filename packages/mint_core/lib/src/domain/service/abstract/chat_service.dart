import 'dart:typed_data';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class ChatService {
  Future<types.Room> createRoom(String userId, String specialistId);

  Future<Stream<List<types.Message>>> getMessages(types.Room room);

  Future<void> sendMessage(
    dynamic partialMessage,
    String roomId, {
    Uint8List? bytes,
  });

  Future<void> deleteMessage(String roomId, types.Message message);

  Future<void> onPreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
    String roomId,
  );

  Future<types.Room?> fetchRoom(String roomId);

  Future<Stream<List<types.Room>>> fetchRoomList(String userId);

  Future<void> markMessageAsRead(String roomId, String messageId);

  Future<int> fetchUnreadMessagesCount(String roomId, String otherUserId);

  Future<Stream<bool>> onTypingPresenceInitialize(String userId, String roomId);

  Future<void> onTypingStart(String userId, String roomId);

  Future<void> onTypingEnd(String userId, String roomId);
}
