// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectOrderResponse _$$_SelectOrderResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SelectOrderResponse(
      id: json['id'] as int?,
      status: json['status'] as String?,
      disabled: json['disabled'] as bool?,
      student: json['student'] == null
          ? null
          : StudentInfoResponse.fromJson(
              json['student'] as Map<String, dynamic>),
      ironNotebook: json['iron_notebook'] as bool?,
      womensBook: json['womens_book'] as bool?,
      youthsNotebook: json['youths_notebook'] as bool?,
      fosterHome: json['foster_home'] as bool?,
      noBreadwinner: json['no_breadwinner'] as bool?,
      oneParentsIsDead: json['one_parents_is_dead'] as bool?,
      hasManyChildrenFamily: json['has_many_children_family'] as bool?,
      giftedStudent: json['gifted_student'] as bool?,
      referenceFile: json['reference_file'] as String?,
      waitingStatus: json['waiting_status'] as String?,
      monthlyPaymentPrice: json['monthly_payment_price'] as int?,
      createdAt: json['created_at'] as String?,
      cancelReason: json['cancel_reason'] as String?,
      paymentDate: json['payment_date'] as int?,
      checkedAdmin: json['checked_admin'] as int?,
    );

Map<String, dynamic> _$$_SelectOrderResponseToJson(
        _$_SelectOrderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'disabled': instance.disabled,
      'student': instance.student,
      'iron_notebook': instance.ironNotebook,
      'womens_book': instance.womensBook,
      'youths_notebook': instance.youthsNotebook,
      'foster_home': instance.fosterHome,
      'no_breadwinner': instance.noBreadwinner,
      'one_parents_is_dead': instance.oneParentsIsDead,
      'has_many_children_family': instance.hasManyChildrenFamily,
      'gifted_student': instance.giftedStudent,
      'reference_file': instance.referenceFile,
      'waiting_status': instance.waitingStatus,
      'monthly_payment_price': instance.monthlyPaymentPrice,
      'created_at': instance.createdAt,
      'cancel_reason': instance.cancelReason,
      'payment_date': instance.paymentDate,
      'checked_admin': instance.checkedAdmin,
    };

_$_StudentInfoResponse _$$_StudentInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StudentInfoResponse(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      studentId: json['student_id'] as int?,
      passportSeries: json['passport_series'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      phoneNumber: json['phone_number'] as String?,
      jshir: json['jshir'] as String?,
      region: json['region'] as String?,
      district: json['district'] as String?,
      neighborhood: json['neighborhood'] as String?,
      faculty: json['faculty'] as String?,
      course: json['course'] as String?,
      group: json['group'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_StudentInfoResponseToJson(
        _$_StudentInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'student_id': instance.studentId,
      'passport_series': instance.passportSeries,
      'date_of_birth': instance.dateOfBirth,
      'phone_number': instance.phoneNumber,
      'jshir': instance.jshir,
      'region': instance.region,
      'district': instance.district,
      'neighborhood': instance.neighborhood,
      'faculty': instance.faculty,
      'course': instance.course,
      'group': instance.group,
      'image': instance.image,
    };