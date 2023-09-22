import 'dart:typed_data';

class FileData {
  FileData({
    required this.name,
    required this.bytes,
  });

  final String name;
  final Uint8List bytes;
}
