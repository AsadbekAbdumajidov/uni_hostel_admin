// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderResponseImpl _$$GetOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderResponseImpl(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetOrderResponseImplToJson(
        _$GetOrderResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['id'] as int?,
      createdAt: json['created_at'] as String?,
      status: json['waiting_status'] as String?,
      paymentDate: json['payment_date'] as int?,
      student: json['student'] == null
          ? null
          : StudentModel.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'waiting_status': instance.status,
      'payment_date': instance.paymentDate,
      'student': instance.student,
    };

_$StudentModelImpl _$$StudentModelImplFromJson(Map<String, dynamic> json) =>
    _$StudentModelImpl(
      image: json['image'] as String?,
      name: json['full_name'] as String?,
    );

Map<String, dynamic> _$$StudentModelImplToJson(_$StudentModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'full_name': instance.name,
    };
