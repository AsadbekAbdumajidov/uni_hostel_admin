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
    @JsonKey(name: 'iron_notebook') bool? ironNotebook,
    @JsonKey(name: 'womens_book') bool? womensBook,
    @JsonKey(name: 'youths_notebook') bool? youthsNotebook,
    @JsonKey(name: 'foster_home') bool? fosterHome,
    @JsonKey(name: 'no_breadwinner') bool? noBreadWinner,
    @JsonKey(name: 'one_parents_is_dead') bool? oneParentsIsDead,
    bool? disabled,
    @JsonKey(name: 'gifted_student') bool? giftedStudent,
    @JsonKey(name: 'has_many_children_family') bool? hasManyChildrenFamily,
  }) = _EditStatusRequest;

  factory EditStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$EditStatusRequestFromJson(json);
}
