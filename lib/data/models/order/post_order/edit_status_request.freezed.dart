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
  @JsonKey(name: 'iron_notebook')
  bool? get ironNotebook => throw _privateConstructorUsedError;
  @JsonKey(name: 'womens_book')
  bool? get womensBook => throw _privateConstructorUsedError;
  @JsonKey(name: 'youths_notebook')
  bool? get youthsNotebook => throw _privateConstructorUsedError;
  @JsonKey(name: 'foster_home')
  bool? get fosterHome => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_breadwinner')
  bool? get noBreadWinner => throw _privateConstructorUsedError;
  @JsonKey(name: 'one_parents_is_dead')
  bool? get oneParentsIsDead => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'gifted_student')
  bool? get giftedStudent => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_many_children_family')
  bool? get hasManyChildrenFamily => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'payment_date') int? paymentDate,
      @JsonKey(name: 'iron_notebook') bool? ironNotebook,
      @JsonKey(name: 'womens_book') bool? womensBook,
      @JsonKey(name: 'youths_notebook') bool? youthsNotebook,
      @JsonKey(name: 'foster_home') bool? fosterHome,
      @JsonKey(name: 'no_breadwinner') bool? noBreadWinner,
      @JsonKey(name: 'one_parents_is_dead') bool? oneParentsIsDead,
      bool? disabled,
      @JsonKey(name: 'gifted_student') bool? giftedStudent,
      @JsonKey(name: 'has_many_children_family') bool? hasManyChildrenFamily});
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
    Object? ironNotebook = freezed,
    Object? womensBook = freezed,
    Object? youthsNotebook = freezed,
    Object? fosterHome = freezed,
    Object? noBreadWinner = freezed,
    Object? oneParentsIsDead = freezed,
    Object? disabled = freezed,
    Object? giftedStudent = freezed,
    Object? hasManyChildrenFamily = freezed,
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
      ironNotebook: freezed == ironNotebook
          ? _value.ironNotebook
          : ironNotebook // ignore: cast_nullable_to_non_nullable
              as bool?,
      womensBook: freezed == womensBook
          ? _value.womensBook
          : womensBook // ignore: cast_nullable_to_non_nullable
              as bool?,
      youthsNotebook: freezed == youthsNotebook
          ? _value.youthsNotebook
          : youthsNotebook // ignore: cast_nullable_to_non_nullable
              as bool?,
      fosterHome: freezed == fosterHome
          ? _value.fosterHome
          : fosterHome // ignore: cast_nullable_to_non_nullable
              as bool?,
      noBreadWinner: freezed == noBreadWinner
          ? _value.noBreadWinner
          : noBreadWinner // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneParentsIsDead: freezed == oneParentsIsDead
          ? _value.oneParentsIsDead
          : oneParentsIsDead // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      giftedStudent: freezed == giftedStudent
          ? _value.giftedStudent
          : giftedStudent // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasManyChildrenFamily: freezed == hasManyChildrenFamily
          ? _value.hasManyChildrenFamily
          : hasManyChildrenFamily // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      @JsonKey(name: 'payment_date') int? paymentDate,
      @JsonKey(name: 'iron_notebook') bool? ironNotebook,
      @JsonKey(name: 'womens_book') bool? womensBook,
      @JsonKey(name: 'youths_notebook') bool? youthsNotebook,
      @JsonKey(name: 'foster_home') bool? fosterHome,
      @JsonKey(name: 'no_breadwinner') bool? noBreadWinner,
      @JsonKey(name: 'one_parents_is_dead') bool? oneParentsIsDead,
      bool? disabled,
      @JsonKey(name: 'gifted_student') bool? giftedStudent,
      @JsonKey(name: 'has_many_children_family') bool? hasManyChildrenFamily});
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
    Object? ironNotebook = freezed,
    Object? womensBook = freezed,
    Object? youthsNotebook = freezed,
    Object? fosterHome = freezed,
    Object? noBreadWinner = freezed,
    Object? oneParentsIsDead = freezed,
    Object? disabled = freezed,
    Object? giftedStudent = freezed,
    Object? hasManyChildrenFamily = freezed,
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
      ironNotebook: freezed == ironNotebook
          ? _value.ironNotebook
          : ironNotebook // ignore: cast_nullable_to_non_nullable
              as bool?,
      womensBook: freezed == womensBook
          ? _value.womensBook
          : womensBook // ignore: cast_nullable_to_non_nullable
              as bool?,
      youthsNotebook: freezed == youthsNotebook
          ? _value.youthsNotebook
          : youthsNotebook // ignore: cast_nullable_to_non_nullable
              as bool?,
      fosterHome: freezed == fosterHome
          ? _value.fosterHome
          : fosterHome // ignore: cast_nullable_to_non_nullable
              as bool?,
      noBreadWinner: freezed == noBreadWinner
          ? _value.noBreadWinner
          : noBreadWinner // ignore: cast_nullable_to_non_nullable
              as bool?,
      oneParentsIsDead: freezed == oneParentsIsDead
          ? _value.oneParentsIsDead
          : oneParentsIsDead // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      giftedStudent: freezed == giftedStudent
          ? _value.giftedStudent
          : giftedStudent // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasManyChildrenFamily: freezed == hasManyChildrenFamily
          ? _value.hasManyChildrenFamily
          : hasManyChildrenFamily // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      @JsonKey(name: 'payment_date') this.paymentDate,
      @JsonKey(name: 'iron_notebook') this.ironNotebook,
      @JsonKey(name: 'womens_book') this.womensBook,
      @JsonKey(name: 'youths_notebook') this.youthsNotebook,
      @JsonKey(name: 'foster_home') this.fosterHome,
      @JsonKey(name: 'no_breadwinner') this.noBreadWinner,
      @JsonKey(name: 'one_parents_is_dead') this.oneParentsIsDead,
      this.disabled,
      @JsonKey(name: 'gifted_student') this.giftedStudent,
      @JsonKey(name: 'has_many_children_family') this.hasManyChildrenFamily});

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
  @JsonKey(name: 'iron_notebook')
  final bool? ironNotebook;
  @override
  @JsonKey(name: 'womens_book')
  final bool? womensBook;
  @override
  @JsonKey(name: 'youths_notebook')
  final bool? youthsNotebook;
  @override
  @JsonKey(name: 'foster_home')
  final bool? fosterHome;
  @override
  @JsonKey(name: 'no_breadwinner')
  final bool? noBreadWinner;
  @override
  @JsonKey(name: 'one_parents_is_dead')
  final bool? oneParentsIsDead;
  @override
  final bool? disabled;
  @override
  @JsonKey(name: 'gifted_student')
  final bool? giftedStudent;
  @override
  @JsonKey(name: 'has_many_children_family')
  final bool? hasManyChildrenFamily;

  @override
  String toString() {
    return 'EditStatusRequest(status: $status, monthlyPaymentPrice: $monthlyPaymentPrice, cancelReason: $cancelReason, paymentDate: $paymentDate, ironNotebook: $ironNotebook, womensBook: $womensBook, youthsNotebook: $youthsNotebook, fosterHome: $fosterHome, noBreadWinner: $noBreadWinner, oneParentsIsDead: $oneParentsIsDead, disabled: $disabled, giftedStudent: $giftedStudent, hasManyChildrenFamily: $hasManyChildrenFamily)';
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
                other.paymentDate == paymentDate) &&
            (identical(other.ironNotebook, ironNotebook) ||
                other.ironNotebook == ironNotebook) &&
            (identical(other.womensBook, womensBook) ||
                other.womensBook == womensBook) &&
            (identical(other.youthsNotebook, youthsNotebook) ||
                other.youthsNotebook == youthsNotebook) &&
            (identical(other.fosterHome, fosterHome) ||
                other.fosterHome == fosterHome) &&
            (identical(other.noBreadWinner, noBreadWinner) ||
                other.noBreadWinner == noBreadWinner) &&
            (identical(other.oneParentsIsDead, oneParentsIsDead) ||
                other.oneParentsIsDead == oneParentsIsDead) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.giftedStudent, giftedStudent) ||
                other.giftedStudent == giftedStudent) &&
            (identical(other.hasManyChildrenFamily, hasManyChildrenFamily) ||
                other.hasManyChildrenFamily == hasManyChildrenFamily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      monthlyPaymentPrice,
      cancelReason,
      paymentDate,
      ironNotebook,
      womensBook,
      youthsNotebook,
      fosterHome,
      noBreadWinner,
      oneParentsIsDead,
      disabled,
      giftedStudent,
      hasManyChildrenFamily);

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
      @JsonKey(name: 'payment_date') final int? paymentDate,
      @JsonKey(name: 'iron_notebook') final bool? ironNotebook,
      @JsonKey(name: 'womens_book') final bool? womensBook,
      @JsonKey(name: 'youths_notebook') final bool? youthsNotebook,
      @JsonKey(name: 'foster_home') final bool? fosterHome,
      @JsonKey(name: 'no_breadwinner') final bool? noBreadWinner,
      @JsonKey(name: 'one_parents_is_dead') final bool? oneParentsIsDead,
      final bool? disabled,
      @JsonKey(name: 'gifted_student') final bool? giftedStudent,
      @JsonKey(name: 'has_many_children_family')
      final bool? hasManyChildrenFamily}) = _$_EditStatusRequest;

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
  @JsonKey(name: 'iron_notebook')
  bool? get ironNotebook;
  @override
  @JsonKey(name: 'womens_book')
  bool? get womensBook;
  @override
  @JsonKey(name: 'youths_notebook')
  bool? get youthsNotebook;
  @override
  @JsonKey(name: 'foster_home')
  bool? get fosterHome;
  @override
  @JsonKey(name: 'no_breadwinner')
  bool? get noBreadWinner;
  @override
  @JsonKey(name: 'one_parents_is_dead')
  bool? get oneParentsIsDead;
  @override
  bool? get disabled;
  @override
  @JsonKey(name: 'gifted_student')
  bool? get giftedStudent;
  @override
  @JsonKey(name: 'has_many_children_family')
  bool? get hasManyChildrenFamily;
  @override
  @JsonKey(ignore: true)
  _$$_EditStatusRequestCopyWith<_$_EditStatusRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
