// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_dormitory_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDormitoryResponse _$$_GetDormitoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetDormitoryResponse(
      faculityName: json['faculity__name'] as String?,
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      faculity: json['faculity'] as int?,
    );

Map<String, dynamic> _$$_GetDormitoryResponseToJson(
        _$_GetDormitoryResponse instance) =>
    <String, dynamic>{
      'faculity__name': instance.faculityName,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'faculity': instance.faculity,
    };
