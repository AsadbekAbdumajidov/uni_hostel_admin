// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_order_response.freezed.dart';
part 'get_order_response.g.dart';

@freezed
class GetOrderResponse with _$GetOrderResponse {
  const factory GetOrderResponse({
    int? count,
    String? next,
    String? previous,
    List<OrderModel>? results,
  }) = _GetOrderResponse;

  factory GetOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOrderResponseFromJson(json);
}

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'waiting_status') String? status,
    @JsonKey(name: 'payment_date') int? paymentDate,
    StudentModel? student,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class StudentModel with _$StudentModel {
  const factory StudentModel({
    String? image,
    @JsonKey(name: 'full_name') String? name,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}
