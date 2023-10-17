import 'package:injectable/injectable.dart';

import '../service/abstract/chat_service.dart';

@injectable
class OnChatTypingEndUseCase {
  OnChatTypingEndUseCase(this._service);

  final ChatService _service;

  Future<void> call(String userId, String roomId) =>
      _service.onTypingEnd(userId, roomId);
}
