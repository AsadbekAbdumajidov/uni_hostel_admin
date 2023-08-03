// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_status_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditStatusRequest _$$_EditStatusRequestFromJson(Map<String, dynamic> json) =>
    _$_EditStatusRequest(
      status: json['status'] as String?,
      monthlyPaymentPrice: json['monthly_payment_price'] as int?,
      cancelReason: json['cancel_reason'] as String?,
      paymentDate: json['payment_date'] as int?,
    );

Map<String, dynamic> _$$_EditStatusRequestToJson(
        _$_EditStatusRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'monthly_payment_price': instance.monthlyPaymentPrice,
      'cancel_reason': instance.cancelReason,
      'payment_date': instance.paymentDate,
    };
