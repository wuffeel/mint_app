import 'dart:typed_data';

import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:injectable/injectable.dart';

import '../service/abstract/file_service.dart';

@injectable
class SaveAudioUseCase {
  SaveAudioUseCase(this._service);

  final FileService _service;

  Future<({PartialAudio message, Uint8List bytes})> call(
    PartialAudio audioMessage,
  ) =>
      _service.saveAudio(audioMessage);
}
