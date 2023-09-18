import 'package:injectable/injectable.dart';

import '../entity/user_presence/user_presence.dart';
import '../service/abstract/user_service.dart';

@injectable
class GetUserPresenceUseCase {
  GetUserPresenceUseCase(this._service);

  final UserService _service;

  Future<Stream<UserPresence>> call(String userId) =>
      _service.getUserPresence(userId);
}
