import 'package:injectable/injectable.dart';

import '../../mint_assembly.dart';
import '../../mint_core.dart';

@Injectable(as: Factory<Map<String, dynamic>, UserModelDto>)
class ModifiedUserDtoToMap
    implements Factory<Map<String, dynamic>, UserModelDto> {
  @override
  Map<String, dynamic> create(UserModelDto param) {
    final userMap = param.toJsonWithoutId();

    final photoUrl = param.photoUrl;
    final isLink = photoUrl != null && photoUrl.startsWith('http');
    return isLink ? (userMap..remove('photoUrl')) : userMap;
  }
}
