import 'package:injectable/injectable.dart';

import '../entity/user_model/user_model.dart';
import '../service/abstract/user_service.dart';

@injectable
class GetUserPresenceUseCase {
  GetUserPresenceUseCase(this._service);

  final UserService _service;

  Future<Stream<UserModel>> call(String userId) =>
      _service.getUserPresence(userId);
}
