import 'package:injectable/injectable.dart';

import '../service/abstract/user_service.dart';

@injectable
class InitializeUserPresenceUseCase {
  InitializeUserPresenceUseCase(this._service);

  final UserService _service;

  Future<void> call(String userId) => _service.initializeUserPresence(userId);
}
