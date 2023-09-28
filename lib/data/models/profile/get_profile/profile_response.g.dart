// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileResponse _$$_ProfileResponseFromJson(Map<String, dynamic> json) =>
    _$_ProfileResponse(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      image: json['admin_image'] as String?,
      region: json['admin_region'] as String?,
      type: json['user_type'] as String?,
      facultyAdmin: json['faculty_admin'] as int?,
    );

Map<String, dynamic> _$$_ProfileResponseToJson(_$_ProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'admin_image': instance.image,
      'admin_region': instance.region,
      'user_type': instance.type,
      'faculty_admin': instance.facultyAdmin,
    };
