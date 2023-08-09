// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'select_order_response.freezed.dart';
part 'select_order_response.g.dart';

@freezed
class SelectOrderResponse with _$SelectOrderResponse {
  const factory SelectOrderResponse({
    int? id,
    String? status,
    bool? disabled,
    StudentInfoResponse? student,
    @JsonKey(name: 'iron_notebook') bool? ironNotebook,
    @JsonKey(name: 'womens_book') bool? womensBook,
    @JsonKey(name: 'youths_notebook') bool? youthsNotebook,
    @JsonKey(name: 'foster_home') bool? fosterHome,
    @JsonKey(name: 'no_breadwinner') bool? noBreadwinner,
    @JsonKey(name: 'one_parents_is_dead') bool? oneParentsIsDead,
    @JsonKey(name: 'has_many_children_family') bool? hasManyChildrenFamily,
    @JsonKey(name: 'gifted_student') bool? giftedStudent,
    @JsonKey(name: 'reference_file') String? referenceFile,
    @JsonKey(name: 'waiting_status') String? waitingStatus,
    @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
    @JsonKey(name: 'payment_date') int? paymentDate,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'checked_admin') CheackAdmin? checkedAdmin,
  }) = _SelectOrderResponse;

  factory SelectOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$SelectOrderResponseFromJson(json);
}

@freezed
class StudentInfoResponse with _$StudentInfoResponse {
  const factory StudentInfoResponse({
    int? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'passport_series') String? passportSeries,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? jshir,
    String? region,
    String? district,
    String? neighborhood,
    String? faculty,
    String? course,
    String? group,
    String? image,
  }) = _StudentInfoResponse;

  factory StudentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoResponseFromJson(json);
}

@freezed
class CheackAdmin with _$CheackAdmin {
  const factory CheackAdmin({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
  }) = _CheackAdmin;

  factory CheackAdmin.fromJson(Map<String, dynamic> json) =>
      _$CheackAdminFromJson(json);
}
