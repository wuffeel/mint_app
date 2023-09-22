import 'package:injectable/injectable.dart';

import '../service/abstract/chat_service.dart';

@injectable
class FetchUnreadMessagesCountUseCase {
  FetchUnreadMessagesCountUseCase(this._service);

  final ChatService _service;

  Future<int> call(String roomId, String otherUserId) =>
      _service.fetchUnreadMessagesCount(roomId, otherUserId);
}
