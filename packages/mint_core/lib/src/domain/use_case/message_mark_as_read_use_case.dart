import 'package:injectable/injectable.dart';

import '../service/abstract/chat_service.dart';

@injectable
class MessageMarkAsReadUseCase {
  MessageMarkAsReadUseCase(this._service);

  final ChatService _service;

  Future<void> call(String roomId, String messageId) =>
      _service.markMessageAsRead(roomId, messageId);
}
