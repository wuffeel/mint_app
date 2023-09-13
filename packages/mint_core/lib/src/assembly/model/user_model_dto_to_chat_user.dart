import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:injectable/injectable.dart';

import '../../../mint_assembly.dart';
import '../../../mint_core.dart';

@Injectable(as: Factory<types.User, UserModelDto>)
class UserModelDtoToChatUserMap implements Factory<types.User, UserModelDto> {
  @override
  types.User create(UserModelDto param) {
    return types.User(
      id: param.id,
      firstName: param.firstName,
      lastName: param.lastName,
      imageUrl: param.photoUrl,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    );
  }
}
