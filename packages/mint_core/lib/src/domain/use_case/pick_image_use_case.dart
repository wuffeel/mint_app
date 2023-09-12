import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:injectable/injectable.dart';

import '../service/abstract/file_service.dart';

@injectable
class PickImageUseCase {
  PickImageUseCase(this._service);

  final FileService _service;

  Future<PartialImage?> call() => _service.pickImage();
}
