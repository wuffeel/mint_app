import 'package:injectable/injectable.dart';

import '../service/abstract/chat_service.dart';

@injectable
class OnChatTypingStartUseCase {
  OnChatTypingStartUseCase(this._service);

  final ChatService _service;

  Future<void> call(String userId, String roomId) =>
      _service.onTypingStart(userId, roomId);
}
