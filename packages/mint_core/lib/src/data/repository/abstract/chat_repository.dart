import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class ChatRepository {
  Future<types.Room> createRoom(String userId, String otherUserId);

  Future<Stream<List<types.Message>>> getMessages(types.Room room);

  Future<void> sendMessage(dynamic partialMessage, String roomId);

  Future<void> deleteMessage(String roomId, String messageId);

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
