// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialist_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecialistModelDto _$$_SpecialistModelDtoFromJson(Map json) =>
    _$_SpecialistModelDto(
      id: json['id'] as String,
      experience: const DateTimeConverter().fromJson(json['experience']),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      price: json['price'] as int,
      specializations: (json['specializations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      about: json['about'] as String?,
      education: json['education'] as String?,
      photoUrl: json['photoUrl'] as String?,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: json['reviewCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SpecialistModelDtoToJson(
        _$_SpecialistModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'experience': const DateTimeConverter().toJson(instance.experience),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'price': instance.price,
      'specializations': instance.specializations,
      'about': instance.about,
      'education': instance.education,
      'photoUrl': instance.photoUrl,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
    };
