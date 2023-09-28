// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_admin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddAdminRequest _$$_AddAdminRequestFromJson(Map<String, dynamic> json) =>
    _$_AddAdminRequest(
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      region: json['admin_region'] as String?,
      type: json['user_type'] as String?,
      facultyAdmin: json['faculty_admin'] as int?,
    );

Map<String, dynamic> _$$_AddAdminRequestToJson(_$_AddAdminRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'admin_region': instance.region,
      'user_type': instance.type,
      'faculty_admin': instance.facultyAdmin,
    };
