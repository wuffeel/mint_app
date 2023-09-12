import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialist_model.freezed.dart';

@freezed
class SpecialistModel with _$SpecialistModel {
  const factory SpecialistModel({
    required String id,
    required DateTime experience,
    required String firstName,
    required String lastName,
    required int price,
    required List<String> specializations,
    String? about,
    String? education,
    String? photoUrl,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
  }) = _SpecialistModel;
}
