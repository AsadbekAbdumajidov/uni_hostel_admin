// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_mothly_price_request.freezed.dart';
part 'edit_mothly_price_request.g.dart';

@freezed
class EditMonthlyPriceRequest with _$EditMonthlyPriceRequest {
  const factory EditMonthlyPriceRequest({
    @JsonKey(name: 'student_id') required int studentdd,
    required int amount,
  }) = _EditMonthlyPriceRequest;

  factory EditMonthlyPriceRequest.fromJson(Map<String, dynamic> json) =>
      _$EditMonthlyPriceRequestFromJson(json);
}

