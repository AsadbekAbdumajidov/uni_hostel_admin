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
      ironNotebook: json['iron_notebook'] as bool?,
      womensBook: json['womens_book'] as bool?,
      youthsNotebook: json['youths_notebook'] as bool?,
      fosterHome: json['foster_home'] as bool?,
      noBreadWinner: json['no_breadwinner'] as bool?,
      oneParentsIsDead: json['one_parents_is_dead'] as bool?,
      basedOnPaymentContract: json['based_on_payment_contract'] as bool?,
      disabled: json['disabled'] as bool?,
      giftedStudent: json['gifted_student'] as bool?,
      hasManyChildrenFamily: json['has_many_children_family'] as bool?,
    );

Map<String, dynamic> _$$_EditStatusRequestToJson(
        _$_EditStatusRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'monthly_payment_price': instance.monthlyPaymentPrice,
      'cancel_reason': instance.cancelReason,
      'payment_date': instance.paymentDate,
      'iron_notebook': instance.ironNotebook,
      'womens_book': instance.womensBook,
      'youths_notebook': instance.youthsNotebook,
      'foster_home': instance.fosterHome,
      'no_breadwinner': instance.noBreadWinner,
      'one_parents_is_dead': instance.oneParentsIsDead,
      'based_on_payment_contract': instance.basedOnPaymentContract,
      'disabled': instance.disabled,
      'gifted_student': instance.giftedStudent,
      'has_many_children_family': instance.hasManyChildrenFamily,
    };
