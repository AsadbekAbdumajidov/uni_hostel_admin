// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_monitoring_response.freezed.dart';
part 'payment_monitoring_response.g.dart';

@freezed
class PaymentMonitoringResponse with _$PaymentMonitoringResponse {
  const factory PaymentMonitoringResponse({
    int? count,
    String? next,
    String? previous,
    List<PaymentsWhoPaidModel>? results,
  }) = _PaymentMonitoringResponse;

  factory PaymentMonitoringResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMonitoringResponseFromJson(json);
}

@freezed
class PaymentsWhoPaidModel with _$PaymentsWhoPaidModel {
  const factory PaymentsWhoPaidModel({
    int? id,
    String? course,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'faculty_model') String? facultyModel,
    List<Payments>? payments,
  }) = _WhoPaidModel;

  factory PaymentsWhoPaidModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentsWhoPaidModelFromJson(json);
}

@freezed
class Payments with _$Payments {
  const factory Payments({
    int? id,
    String? amount,
    String? status,
    @JsonKey(name: 'payed_at') String? payedAt,
  }) = _Payments;

  factory Payments.fromJson(Map<String, dynamic> json) =>
      _$PaymentsFromJson(json);
}
