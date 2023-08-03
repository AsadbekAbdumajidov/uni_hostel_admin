// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_status_request.freezed.dart';
part 'edit_status_request.g.dart';

@freezed
class EditStatusRequest with _$EditStatusRequest {
  const factory EditStatusRequest({
    String? status,
    @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
    @JsonKey(name: 'payment_date') int? paymentDate,


  }) = _EditStatusRequest;

  factory EditStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$EditStatusRequestFromJson(json);
}
