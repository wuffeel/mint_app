import 'package:injectable/injectable.dart';

import '../service/abstract/chat_service.dart';

@injectable
class SendMessageUseCase {
  SendMessageUseCase(this._service);

  final ChatService _service;

  Future<void> call(dynamic partialMessage, String roomId) =>
      _service.sendMessage(partialMessage, roomId);
}
