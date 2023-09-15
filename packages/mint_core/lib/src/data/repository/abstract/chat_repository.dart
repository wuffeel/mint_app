import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class ChatRepository {
  Future<types.Room> createRoom(String userId, String specialistId);

  Future<Stream<List<types.Message>>> getMessages(types.Room room);

  Future<void> sendMessage(dynamic partialMessage, String roomId);

  Future<void> deleteMessage(String roomId, String messageId);

  Future<void> onPreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
    String roomId,
  );

  Future<Map<String, dynamic>?> fetchRoom(String roomId);

  Future<Stream<List<types.Room>>> fetchRoomList(String userId);
}
