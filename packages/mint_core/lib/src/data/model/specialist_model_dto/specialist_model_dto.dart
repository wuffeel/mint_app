import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../mint_utils.dart';

part 'specialist_model_dto.freezed.dart';

part 'specialist_model_dto.g.dart';

@freezed
class SpecialistModelDto with _$SpecialistModelDto {
  const factory SpecialistModelDto({
    required String id,
    @DateTimeConverter() required DateTime experience,
    required String firstName,
    required String lastName,
    required int price,
    required List<String> specializations,
    String? about,
    String? education,
    String? photoUrl,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
  }) = _SpecialistModelDto;

  const SpecialistModelDto._();

  factory SpecialistModelDto.fromJson(Map<String, dynamic> json) =>
      _$SpecialistModelDtoFromJson(json);

  factory SpecialistModelDto.fromJsonWithId(
    Map<String, dynamic> json,
    String id,
  ) =>
      _$SpecialistModelDtoFromJson(<String, dynamic>{'id': id, ...json});

  Map<String, dynamic> toJsonWithoutId() => toJson()..remove('id');
}
