import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import '../service/abstract/chat_service.dart';

@injectable
class SendMessageUseCase {
  SendMessageUseCase(this._service);

  final ChatService _service;

  Future<void> call(
    dynamic partialMessage,
    String roomId, {
    Uint8List? bytes,
  }) =>
      _service.sendMessage(partialMessage, roomId, bytes: bytes);
}
