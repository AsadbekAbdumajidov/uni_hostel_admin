// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_dormitory_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetInDormitoryResponse _$$_GetInDormitoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetInDormitoryResponse(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => InDormitoryUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetInDormitoryResponseToJson(
        _$_GetInDormitoryResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_InDormitoryUser _$$_InDormitoryUserFromJson(Map<String, dynamic> json) =>
    _$_InDormitoryUser(
      studentId: json['student_id'] as int?,
      fullName: json['full_name'] as String?,
      facultyModel: json['faculty_model'] as String?,
      dormitory: json['dormitory'] as String?,
      floor: json['floor'] as String?,
      course: json['course'] as String?,
      room: json['room'] as String?,
      bed: json['bed'] as int?,
    );

Map<String, dynamic> _$$_InDormitoryUserToJson(_$_InDormitoryUser instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'full_name': instance.fullName,
      'faculty_model': instance.facultyModel,
      'dormitory': instance.dormitory,
      'floor': instance.floor,
      'course': instance.course,
      'room': instance.room,
      'bed': instance.bed,
    };
