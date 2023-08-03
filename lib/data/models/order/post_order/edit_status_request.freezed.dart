// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_status_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditStatusRequest _$EditStatusRequestFromJson(Map<String, dynamic> json) {
  return _EditStatusRequest.fromJson(json);
}

/// @nodoc
mixin _$EditStatusRequest {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPaymentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_date')
  int? get paymentDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditStatusRequestCopyWith<EditStatusRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStatusRequestCopyWith<$Res> {
  factory $EditStatusRequestCopyWith(
          EditStatusRequest value, $Res Function(EditStatusRequest) then) =
      _$EditStatusRequestCopyWithImpl<$Res, EditStatusRequest>;
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'payment_date') int? paymentDate});
}

/// @nodoc
class _$EditStatusRequestCopyWithImpl<$Res, $Val extends EditStatusRequest>
    implements $EditStatusRequestCopyWith<$Res> {
  _$EditStatusRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? monthlyPaymentPrice = freezed,
    Object? cancelReason = freezed,
    Object? paymentDate = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPaymentPrice: freezed == monthlyPaymentPrice
          ? _value.monthlyPaymentPrice
          : monthlyPaymentPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditStatusRequestCopyWith<$Res>
    implements $EditStatusRequestCopyWith<$Res> {
  factory _$$_EditStatusRequestCopyWith(_$_EditStatusRequest value,
          $Res Function(_$_EditStatusRequest) then) =
      __$$_EditStatusRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'payment_date') int? paymentDate});
}

/// @nodoc
class __$$_EditStatusRequestCopyWithImpl<$Res>
    extends _$EditStatusRequestCopyWithImpl<$Res, _$_EditStatusRequest>
    implements _$$_EditStatusRequestCopyWith<$Res> {
  __$$_EditStatusRequestCopyWithImpl(
      _$_EditStatusRequest _value, $Res Function(_$_EditStatusRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? monthlyPaymentPrice = freezed,
    Object? cancelReason = freezed,
    Object? paymentDate = freezed,
  }) {
    return _then(_$_EditStatusRequest(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPaymentPrice: freezed == monthlyPaymentPrice
          ? _value.monthlyPaymentPrice
          : monthlyPaymentPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditStatusRequest implements _EditStatusRequest {
  const _$_EditStatusRequest(
      {this.status,
      @JsonKey(name: 'monthly_payment_price') this.monthlyPaymentPrice,
      @JsonKey(name: 'cancel_reason') this.cancelReason,
      @JsonKey(name: 'payment_date') this.paymentDate});

  factory _$_EditStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EditStatusRequestFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: 'monthly_payment_price')
  final int? monthlyPaymentPrice;
  @override
  @JsonKey(name: 'cancel_reason')
  final String? cancelReason;
  @override
  @JsonKey(name: 'payment_date')
  final int? paymentDate;

  @override
  String toString() {
    return 'EditStatusRequest(status: $status, monthlyPaymentPrice: $monthlyPaymentPrice, cancelReason: $cancelReason, paymentDate: $paymentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditStatusRequest &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.monthlyPaymentPrice, monthlyPaymentPrice) ||
                other.monthlyPaymentPrice == monthlyPaymentPrice) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, monthlyPaymentPrice, cancelReason, paymentDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditStatusRequestCopyWith<_$_EditStatusRequest> get copyWith =>
      __$$_EditStatusRequestCopyWithImpl<_$_EditStatusRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditStatusRequestToJson(
      this,
    );
  }
}

abstract class _EditStatusRequest implements EditStatusRequest {
  const factory _EditStatusRequest(
      {final String? status,
      @JsonKey(name: 'monthly_payment_price') final int? monthlyPaymentPrice,
      @JsonKey(name: 'cancel_reason') final String? cancelReason,
      @JsonKey(name: 'payment_date')
      final int? paymentDate}) = _$_EditStatusRequest;

  factory _EditStatusRequest.fromJson(Map<String, dynamic> json) =
      _$_EditStatusRequest.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPaymentPrice;
  @override
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason;
  @override
  @JsonKey(name: 'payment_date')
  int? get paymentDate;
  @override
  @JsonKey(ignore: true)
  _$$_EditStatusRequestCopyWith<_$_EditStatusRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
