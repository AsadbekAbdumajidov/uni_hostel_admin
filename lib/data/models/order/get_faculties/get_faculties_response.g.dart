// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_faculties_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetFacultiesResponse _$$_GetFacultiesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetFacultiesResponse(
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => FacultiesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetFacultiesResponseToJson(
        _$_GetFacultiesResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$_FacultiesModel _$$_FacultiesModelFromJson(Map<String, dynamic> json) =>
    _$_FacultiesModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_FacultiesModelToJson(_$_FacultiesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };