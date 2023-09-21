// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admins_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAdminsResponse _$$_GetAdminsResponseFromJson(Map<String, dynamic> json) =>
    _$_GetAdminsResponse(
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => ProfileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetAdminsResponseToJson(
        _$_GetAdminsResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
