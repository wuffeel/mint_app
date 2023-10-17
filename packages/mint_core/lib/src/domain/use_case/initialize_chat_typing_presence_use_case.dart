import 'package:injectable/injectable.dart';

import '../service/abstract/chat_service.dart';

@injectable
class InitializeChatTypingPresenceUseCase {
  InitializeChatTypingPresenceUseCase(this._service);

  final ChatService _service;

  Future<Stream<bool>> call(String userId, String roomId) =>
      _service.onTypingPresenceInitialize(userId, roomId);
}
