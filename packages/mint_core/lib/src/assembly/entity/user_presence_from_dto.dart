import 'package:injectable/injectable.dart';

import '../../../mint_assembly.dart';
import '../../data/model/user_presence_dto/user_presence_dto.dart';
import '../../domain/entity/user_presence/user_presence.dart';

@Injectable(as: Factory<UserPresence, UserPresenceDto>)
class UserPresenceFromDto implements Factory<UserPresence, UserPresenceDto> {
  @override
  UserPresence create(UserPresenceDto param) => UserPresence(
        isOnline: param.isOnline,
        lastSeen: param.lastSeen,
      );
}
