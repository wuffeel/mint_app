import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

abstract class ChatService {
  Future<types.Room> createRoom(String userId, String specialistId);

  Future<Stream<List<types.Message>>> getMessages(types.Room room);

  Future<void> sendMessage(dynamic partialMessage, String roomId);

  Future<void> deleteMessage(String roomId, types.Message message);

  Future<void> onPreviewDataFetched(
      types.TextMessage message,
      types.PreviewData previewData,
      String roomId,
      );

  Future<types.Room?> fetchRoom(String roomId);
}
