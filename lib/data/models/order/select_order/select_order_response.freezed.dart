// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectOrderResponse _$SelectOrderResponseFromJson(Map<String, dynamic> json) {
  return _SelectOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$SelectOrderResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  StudentInfoResponse? get student => throw _privateConstructorUsedError;
  bool get disabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'iron_notebook')
  bool get ironNotebook => throw _privateConstructorUsedError;
  @JsonKey(name: 'womens_book')
  bool get womensBook => throw _privateConstructorUsedError;
  @JsonKey(name: 'youths_notebook')
  bool get youthsNotebook => throw _privateConstructorUsedError;
  @JsonKey(name: 'foster_home')
  bool get fosterHome => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_breadwinner')
  bool get noBreadwinner => throw _privateConstructorUsedError;
  @JsonKey(name: 'one_parents_is_dead')
  bool get oneParentsIsDead => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_many_children_family')
  bool get hasManyChildrenFamily => throw _privateConstructorUsedError;
  @JsonKey(name: 'gifted_student')
  bool get giftedStudent => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_file')
  String? get referenceFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_status')
  String? get waitingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPaymentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_date')
  int? get paymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'checked_admin')
  CheackAdmin? get checkedAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectOrderResponseCopyWith<SelectOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectOrderResponseCopyWith<$Res> {
  factory $SelectOrderResponseCopyWith(
          SelectOrderResponse value, $Res Function(SelectOrderResponse) then) =
      _$SelectOrderResponseCopyWithImpl<$Res, SelectOrderResponse>;
  @useResult
  $Res call(
      {int? id,
      String? status,
      StudentInfoResponse? student,
      bool disabled,
      @JsonKey(name: 'iron_notebook') bool ironNotebook,
      @JsonKey(name: 'womens_book') bool womensBook,
      @JsonKey(name: 'youths_notebook') bool youthsNotebook,
      @JsonKey(name: 'foster_home') bool fosterHome,
      @JsonKey(name: 'no_breadwinner') bool noBreadwinner,
      @JsonKey(name: 'one_parents_is_dead') bool oneParentsIsDead,
      @JsonKey(name: 'has_many_children_family') bool hasManyChildrenFamily,
      @JsonKey(name: 'gifted_student') bool giftedStudent,
      @JsonKey(name: 'reference_file') String? referenceFile,
      @JsonKey(name: 'waiting_status') String? waitingStatus,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'payment_date') int? paymentDate,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'checked_admin') CheackAdmin? checkedAdmin});

  $StudentInfoResponseCopyWith<$Res>? get student;
  $CheackAdminCopyWith<$Res>? get checkedAdmin;
}

/// @nodoc
class _$SelectOrderResponseCopyWithImpl<$Res, $Val extends SelectOrderResponse>
    implements $SelectOrderResponseCopyWith<$Res> {
  _$SelectOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? student = freezed,
    Object? disabled = null,
    Object? ironNotebook = null,
    Object? womensBook = null,
    Object? youthsNotebook = null,
    Object? fosterHome = null,
    Object? noBreadwinner = null,
    Object? oneParentsIsDead = null,
    Object? hasManyChildrenFamily = null,
    Object? giftedStudent = null,
    Object? referenceFile = freezed,
    Object? waitingStatus = freezed,
    Object? monthlyPaymentPrice = freezed,
    Object? createdAt = freezed,
    Object? cancelReason = freezed,
    Object? paymentDate = freezed,
    Object? updatedAt = freezed,
    Object? checkedAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentInfoResponse?,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      ironNotebook: null == ironNotebook
          ? _value.ironNotebook
          : ironNotebook // ignore: cast_nullable_to_non_nullable
              as bool,
      womensBook: null == womensBook
          ? _value.womensBook
          : womensBook // ignore: cast_nullable_to_non_nullable
              as bool,
      youthsNotebook: null == youthsNotebook
          ? _value.youthsNotebook
          : youthsNotebook // ignore: cast_nullable_to_non_nullable
              as bool,
      fosterHome: null == fosterHome
          ? _value.fosterHome
          : fosterHome // ignore: cast_nullable_to_non_nullable
              as bool,
      noBreadwinner: null == noBreadwinner
          ? _value.noBreadwinner
          : noBreadwinner // ignore: cast_nullable_to_non_nullable
              as bool,
      oneParentsIsDead: null == oneParentsIsDead
          ? _value.oneParentsIsDead
          : oneParentsIsDead // ignore: cast_nullable_to_non_nullable
              as bool,
      hasManyChildrenFamily: null == hasManyChildrenFamily
          ? _value.hasManyChildrenFamily
          : hasManyChildrenFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      giftedStudent: null == giftedStudent
          ? _value.giftedStudent
          : giftedStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      referenceFile: freezed == referenceFile
          ? _value.referenceFile
          : referenceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingStatus: freezed == waitingStatus
          ? _value.waitingStatus
          : waitingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPaymentPrice: freezed == monthlyPaymentPrice
          ? _value.monthlyPaymentPrice
          : monthlyPaymentPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedAdmin: freezed == checkedAdmin
          ? _value.checkedAdmin
          : checkedAdmin // ignore: cast_nullable_to_non_nullable
              as CheackAdmin?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentInfoResponseCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentInfoResponseCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CheackAdminCopyWith<$Res>? get checkedAdmin {
    if (_value.checkedAdmin == null) {
      return null;
    }

    return $CheackAdminCopyWith<$Res>(_value.checkedAdmin!, (value) {
      return _then(_value.copyWith(checkedAdmin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectOrderResponseCopyWith<$Res>
    implements $SelectOrderResponseCopyWith<$Res> {
  factory _$$_SelectOrderResponseCopyWith(_$_SelectOrderResponse value,
          $Res Function(_$_SelectOrderResponse) then) =
      __$$_SelectOrderResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? status,
      StudentInfoResponse? student,
      bool disabled,
      @JsonKey(name: 'iron_notebook') bool ironNotebook,
      @JsonKey(name: 'womens_book') bool womensBook,
      @JsonKey(name: 'youths_notebook') bool youthsNotebook,
      @JsonKey(name: 'foster_home') bool fosterHome,
      @JsonKey(name: 'no_breadwinner') bool noBreadwinner,
      @JsonKey(name: 'one_parents_is_dead') bool oneParentsIsDead,
      @JsonKey(name: 'has_many_children_family') bool hasManyChildrenFamily,
      @JsonKey(name: 'gifted_student') bool giftedStudent,
      @JsonKey(name: 'reference_file') String? referenceFile,
      @JsonKey(name: 'waiting_status') String? waitingStatus,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPaymentPrice,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'cancel_reason') String? cancelReason,
      @JsonKey(name: 'payment_date') int? paymentDate,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'checked_admin') CheackAdmin? checkedAdmin});

  @override
  $StudentInfoResponseCopyWith<$Res>? get student;
  @override
  $CheackAdminCopyWith<$Res>? get checkedAdmin;
}

/// @nodoc
class __$$_SelectOrderResponseCopyWithImpl<$Res>
    extends _$SelectOrderResponseCopyWithImpl<$Res, _$_SelectOrderResponse>
    implements _$$_SelectOrderResponseCopyWith<$Res> {
  __$$_SelectOrderResponseCopyWithImpl(_$_SelectOrderResponse _value,
      $Res Function(_$_SelectOrderResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? student = freezed,
    Object? disabled = null,
    Object? ironNotebook = null,
    Object? womensBook = null,
    Object? youthsNotebook = null,
    Object? fosterHome = null,
    Object? noBreadwinner = null,
    Object? oneParentsIsDead = null,
    Object? hasManyChildrenFamily = null,
    Object? giftedStudent = null,
    Object? referenceFile = freezed,
    Object? waitingStatus = freezed,
    Object? monthlyPaymentPrice = freezed,
    Object? createdAt = freezed,
    Object? cancelReason = freezed,
    Object? paymentDate = freezed,
    Object? updatedAt = freezed,
    Object? checkedAdmin = freezed,
  }) {
    return _then(_$_SelectOrderResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentInfoResponse?,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      ironNotebook: null == ironNotebook
          ? _value.ironNotebook
          : ironNotebook // ignore: cast_nullable_to_non_nullable
              as bool,
      womensBook: null == womensBook
          ? _value.womensBook
          : womensBook // ignore: cast_nullable_to_non_nullable
              as bool,
      youthsNotebook: null == youthsNotebook
          ? _value.youthsNotebook
          : youthsNotebook // ignore: cast_nullable_to_non_nullable
              as bool,
      fosterHome: null == fosterHome
          ? _value.fosterHome
          : fosterHome // ignore: cast_nullable_to_non_nullable
              as bool,
      noBreadwinner: null == noBreadwinner
          ? _value.noBreadwinner
          : noBreadwinner // ignore: cast_nullable_to_non_nullable
              as bool,
      oneParentsIsDead: null == oneParentsIsDead
          ? _value.oneParentsIsDead
          : oneParentsIsDead // ignore: cast_nullable_to_non_nullable
              as bool,
      hasManyChildrenFamily: null == hasManyChildrenFamily
          ? _value.hasManyChildrenFamily
          : hasManyChildrenFamily // ignore: cast_nullable_to_non_nullable
              as bool,
      giftedStudent: null == giftedStudent
          ? _value.giftedStudent
          : giftedStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      referenceFile: freezed == referenceFile
          ? _value.referenceFile
          : referenceFile // ignore: cast_nullable_to_non_nullable
              as String?,
      waitingStatus: freezed == waitingStatus
          ? _value.waitingStatus
          : waitingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPaymentPrice: freezed == monthlyPaymentPrice
          ? _value.monthlyPaymentPrice
          : monthlyPaymentPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      checkedAdmin: freezed == checkedAdmin
          ? _value.checkedAdmin
          : checkedAdmin // ignore: cast_nullable_to_non_nullable
              as CheackAdmin?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectOrderResponse implements _SelectOrderResponse {
  const _$_SelectOrderResponse(
      {this.id,
      this.status,
      this.student,
      required this.disabled,
      @JsonKey(name: 'iron_notebook') required this.ironNotebook,
      @JsonKey(name: 'womens_book') required this.womensBook,
      @JsonKey(name: 'youths_notebook') required this.youthsNotebook,
      @JsonKey(name: 'foster_home') required this.fosterHome,
      @JsonKey(name: 'no_breadwinner') required this.noBreadwinner,
      @JsonKey(name: 'one_parents_is_dead') required this.oneParentsIsDead,
      @JsonKey(name: 'has_many_children_family')
      required this.hasManyChildrenFamily,
      @JsonKey(name: 'gifted_student') required this.giftedStudent,
      @JsonKey(name: 'reference_file') this.referenceFile,
      @JsonKey(name: 'waiting_status') this.waitingStatus,
      @JsonKey(name: 'monthly_payment_price') this.monthlyPaymentPrice,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'cancel_reason') this.cancelReason,
      @JsonKey(name: 'payment_date') this.paymentDate,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'checked_admin') this.checkedAdmin});

  factory _$_SelectOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SelectOrderResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? status;
  @override
  final StudentInfoResponse? student;
  @override
  final bool disabled;
  @override
  @JsonKey(name: 'iron_notebook')
  final bool ironNotebook;
  @override
  @JsonKey(name: 'womens_book')
  final bool womensBook;
  @override
  @JsonKey(name: 'youths_notebook')
  final bool youthsNotebook;
  @override
  @JsonKey(name: 'foster_home')
  final bool fosterHome;
  @override
  @JsonKey(name: 'no_breadwinner')
  final bool noBreadwinner;
  @override
  @JsonKey(name: 'one_parents_is_dead')
  final bool oneParentsIsDead;
  @override
  @JsonKey(name: 'has_many_children_family')
  final bool hasManyChildrenFamily;
  @override
  @JsonKey(name: 'gifted_student')
  final bool giftedStudent;
  @override
  @JsonKey(name: 'reference_file')
  final String? referenceFile;
  @override
  @JsonKey(name: 'waiting_status')
  final String? waitingStatus;
  @override
  @JsonKey(name: 'monthly_payment_price')
  final int? monthlyPaymentPrice;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'cancel_reason')
  final String? cancelReason;
  @override
  @JsonKey(name: 'payment_date')
  final int? paymentDate;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'checked_admin')
  final CheackAdmin? checkedAdmin;

  @override
  String toString() {
    return 'SelectOrderResponse(id: $id, status: $status, student: $student, disabled: $disabled, ironNotebook: $ironNotebook, womensBook: $womensBook, youthsNotebook: $youthsNotebook, fosterHome: $fosterHome, noBreadwinner: $noBreadwinner, oneParentsIsDead: $oneParentsIsDead, hasManyChildrenFamily: $hasManyChildrenFamily, giftedStudent: $giftedStudent, referenceFile: $referenceFile, waitingStatus: $waitingStatus, monthlyPaymentPrice: $monthlyPaymentPrice, createdAt: $createdAt, cancelReason: $cancelReason, paymentDate: $paymentDate, updatedAt: $updatedAt, checkedAdmin: $checkedAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectOrderResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.ironNotebook, ironNotebook) ||
                other.ironNotebook == ironNotebook) &&
            (identical(other.womensBook, womensBook) ||
                other.womensBook == womensBook) &&
            (identical(other.youthsNotebook, youthsNotebook) ||
                other.youthsNotebook == youthsNotebook) &&
            (identical(other.fosterHome, fosterHome) ||
                other.fosterHome == fosterHome) &&
            (identical(other.noBreadwinner, noBreadwinner) ||
                other.noBreadwinner == noBreadwinner) &&
            (identical(other.oneParentsIsDead, oneParentsIsDead) ||
                other.oneParentsIsDead == oneParentsIsDead) &&
            (identical(other.hasManyChildrenFamily, hasManyChildrenFamily) ||
                other.hasManyChildrenFamily == hasManyChildrenFamily) &&
            (identical(other.giftedStudent, giftedStudent) ||
                other.giftedStudent == giftedStudent) &&
            (identical(other.referenceFile, referenceFile) ||
                other.referenceFile == referenceFile) &&
            (identical(other.waitingStatus, waitingStatus) ||
                other.waitingStatus == waitingStatus) &&
            (identical(other.monthlyPaymentPrice, monthlyPaymentPrice) ||
                other.monthlyPaymentPrice == monthlyPaymentPrice) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.checkedAdmin, checkedAdmin) ||
                other.checkedAdmin == checkedAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        student,
        disabled,
        ironNotebook,
        womensBook,
        youthsNotebook,
        fosterHome,
        noBreadwinner,
        oneParentsIsDead,
        hasManyChildrenFamily,
        giftedStudent,
        referenceFile,
        waitingStatus,
        monthlyPaymentPrice,
        createdAt,
        cancelReason,
        paymentDate,
        updatedAt,
        checkedAdmin
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectOrderResponseCopyWith<_$_SelectOrderResponse> get copyWith =>
      __$$_SelectOrderResponseCopyWithImpl<_$_SelectOrderResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectOrderResponseToJson(
      this,
    );
  }
}

abstract class _SelectOrderResponse implements SelectOrderResponse {
  const factory _SelectOrderResponse(
      {final int? id,
      final String? status,
      final StudentInfoResponse? student,
      required final bool disabled,
      @JsonKey(name: 'iron_notebook') required final bool ironNotebook,
      @JsonKey(name: 'womens_book') required final bool womensBook,
      @JsonKey(name: 'youths_notebook') required final bool youthsNotebook,
      @JsonKey(name: 'foster_home') required final bool fosterHome,
      @JsonKey(name: 'no_breadwinner') required final bool noBreadwinner,
      @JsonKey(name: 'one_parents_is_dead')
      required final bool oneParentsIsDead,
      @JsonKey(name: 'has_many_children_family')
      required final bool hasManyChildrenFamily,
      @JsonKey(name: 'gifted_student') required final bool giftedStudent,
      @JsonKey(name: 'reference_file') final String? referenceFile,
      @JsonKey(name: 'waiting_status') final String? waitingStatus,
      @JsonKey(name: 'monthly_payment_price') final int? monthlyPaymentPrice,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'cancel_reason') final String? cancelReason,
      @JsonKey(name: 'payment_date') final int? paymentDate,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'checked_admin')
      final CheackAdmin? checkedAdmin}) = _$_SelectOrderResponse;

  factory _SelectOrderResponse.fromJson(Map<String, dynamic> json) =
      _$_SelectOrderResponse.fromJson;

  @override
  int? get id;
  @override
  String? get status;
  @override
  StudentInfoResponse? get student;
  @override
  bool get disabled;
  @override
  @JsonKey(name: 'iron_notebook')
  bool get ironNotebook;
  @override
  @JsonKey(name: 'womens_book')
  bool get womensBook;
  @override
  @JsonKey(name: 'youths_notebook')
  bool get youthsNotebook;
  @override
  @JsonKey(name: 'foster_home')
  bool get fosterHome;
  @override
  @JsonKey(name: 'no_breadwinner')
  bool get noBreadwinner;
  @override
  @JsonKey(name: 'one_parents_is_dead')
  bool get oneParentsIsDead;
  @override
  @JsonKey(name: 'has_many_children_family')
  bool get hasManyChildrenFamily;
  @override
  @JsonKey(name: 'gifted_student')
  bool get giftedStudent;
  @override
  @JsonKey(name: 'reference_file')
  String? get referenceFile;
  @override
  @JsonKey(name: 'waiting_status')
  String? get waitingStatus;
  @override
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPaymentPrice;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'cancel_reason')
  String? get cancelReason;
  @override
  @JsonKey(name: 'payment_date')
  int? get paymentDate;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'checked_admin')
  CheackAdmin? get checkedAdmin;
  @override
  @JsonKey(ignore: true)
  _$$_SelectOrderResponseCopyWith<_$_SelectOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentInfoResponse _$StudentInfoResponseFromJson(Map<String, dynamic> json) {
  return _StudentInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentInfoResponse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_series')
  String? get passportSeries => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get jshir => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get neighborhood => throw _privateConstructorUsedError;
  String? get faculty => throw _privateConstructorUsedError;
  String? get course => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentInfoResponseCopyWith<StudentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentInfoResponseCopyWith<$Res> {
  factory $StudentInfoResponseCopyWith(
          StudentInfoResponse value, $Res Function(StudentInfoResponse) then) =
      _$StudentInfoResponseCopyWithImpl<$Res, StudentInfoResponse>;
  @useResult
  $Res call(
      {int? id,
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
      String? image});
}

/// @nodoc
class _$StudentInfoResponseCopyWithImpl<$Res, $Val extends StudentInfoResponse>
    implements $StudentInfoResponseCopyWith<$Res> {
  _$StudentInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? studentId = freezed,
    Object? passportSeries = freezed,
    Object? dateOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? jshir = freezed,
    Object? region = freezed,
    Object? district = freezed,
    Object? neighborhood = freezed,
    Object? faculty = freezed,
    Object? course = freezed,
    Object? group = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      passportSeries: freezed == passportSeries
          ? _value.passportSeries
          : passportSeries // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      jshir: freezed == jshir
          ? _value.jshir
          : jshir // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentInfoResponseCopyWith<$Res>
    implements $StudentInfoResponseCopyWith<$Res> {
  factory _$$_StudentInfoResponseCopyWith(_$_StudentInfoResponse value,
          $Res Function(_$_StudentInfoResponse) then) =
      __$$_StudentInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      String? image});
}

/// @nodoc
class __$$_StudentInfoResponseCopyWithImpl<$Res>
    extends _$StudentInfoResponseCopyWithImpl<$Res, _$_StudentInfoResponse>
    implements _$$_StudentInfoResponseCopyWith<$Res> {
  __$$_StudentInfoResponseCopyWithImpl(_$_StudentInfoResponse _value,
      $Res Function(_$_StudentInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? studentId = freezed,
    Object? passportSeries = freezed,
    Object? dateOfBirth = freezed,
    Object? phoneNumber = freezed,
    Object? jshir = freezed,
    Object? region = freezed,
    Object? district = freezed,
    Object? neighborhood = freezed,
    Object? faculty = freezed,
    Object? course = freezed,
    Object? group = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_StudentInfoResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      passportSeries: freezed == passportSeries
          ? _value.passportSeries
          : passportSeries // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      jshir: freezed == jshir
          ? _value.jshir
          : jshir // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: freezed == neighborhood
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentInfoResponse implements _StudentInfoResponse {
  const _$_StudentInfoResponse(
      {this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'student_id') this.studentId,
      @JsonKey(name: 'passport_series') this.passportSeries,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.jshir,
      this.region,
      this.district,
      this.neighborhood,
      this.faculty,
      this.course,
      this.group,
      this.image});

  factory _$_StudentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StudentInfoResponseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'student_id')
  final int? studentId;
  @override
  @JsonKey(name: 'passport_series')
  final String? passportSeries;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? jshir;
  @override
  final String? region;
  @override
  final String? district;
  @override
  final String? neighborhood;
  @override
  final String? faculty;
  @override
  final String? course;
  @override
  final String? group;
  @override
  final String? image;

  @override
  String toString() {
    return 'StudentInfoResponse(id: $id, fullName: $fullName, studentId: $studentId, passportSeries: $passportSeries, dateOfBirth: $dateOfBirth, phoneNumber: $phoneNumber, jshir: $jshir, region: $region, district: $district, neighborhood: $neighborhood, faculty: $faculty, course: $course, group: $group, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentInfoResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.passportSeries, passportSeries) ||
                other.passportSeries == passportSeries) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.jshir, jshir) || other.jshir == jshir) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.neighborhood, neighborhood) ||
                other.neighborhood == neighborhood) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      studentId,
      passportSeries,
      dateOfBirth,
      phoneNumber,
      jshir,
      region,
      district,
      neighborhood,
      faculty,
      course,
      group,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentInfoResponseCopyWith<_$_StudentInfoResponse> get copyWith =>
      __$$_StudentInfoResponseCopyWithImpl<_$_StudentInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentInfoResponseToJson(
      this,
    );
  }
}

abstract class _StudentInfoResponse implements StudentInfoResponse {
  const factory _StudentInfoResponse(
      {final int? id,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'student_id') final int? studentId,
      @JsonKey(name: 'passport_series') final String? passportSeries,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      final String? jshir,
      final String? region,
      final String? district,
      final String? neighborhood,
      final String? faculty,
      final String? course,
      final String? group,
      final String? image}) = _$_StudentInfoResponse;

  factory _StudentInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_StudentInfoResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'student_id')
  int? get studentId;
  @override
  @JsonKey(name: 'passport_series')
  String? get passportSeries;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get jshir;
  @override
  String? get region;
  @override
  String? get district;
  @override
  String? get neighborhood;
  @override
  String? get faculty;
  @override
  String? get course;
  @override
  String? get group;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_StudentInfoResponseCopyWith<_$_StudentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CheackAdmin _$CheackAdminFromJson(Map<String, dynamic> json) {
  return _CheackAdmin.fromJson(json);
}

/// @nodoc
mixin _$CheackAdmin {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheackAdminCopyWith<CheackAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheackAdminCopyWith<$Res> {
  factory $CheackAdminCopyWith(
          CheackAdmin value, $Res Function(CheackAdmin) then) =
      _$CheackAdminCopyWithImpl<$Res, CheackAdmin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class _$CheackAdminCopyWithImpl<$Res, $Val extends CheackAdmin>
    implements $CheackAdminCopyWith<$Res> {
  _$CheackAdminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheackAdminCopyWith<$Res>
    implements $CheackAdminCopyWith<$Res> {
  factory _$$_CheackAdminCopyWith(
          _$_CheackAdmin value, $Res Function(_$_CheackAdmin) then) =
      __$$_CheackAdminCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class __$$_CheackAdminCopyWithImpl<$Res>
    extends _$CheackAdminCopyWithImpl<$Res, _$_CheackAdmin>
    implements _$$_CheackAdminCopyWith<$Res> {
  __$$_CheackAdminCopyWithImpl(
      _$_CheackAdmin _value, $Res Function(_$_CheackAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$_CheackAdmin(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheackAdmin implements _CheackAdmin {
  const _$_CheackAdmin(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName});

  factory _$_CheackAdmin.fromJson(Map<String, dynamic> json) =>
      _$$_CheackAdminFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  @override
  String toString() {
    return 'CheackAdmin(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheackAdmin &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheackAdminCopyWith<_$_CheackAdmin> get copyWith =>
      __$$_CheackAdminCopyWithImpl<_$_CheackAdmin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheackAdminToJson(
      this,
    );
  }
}

abstract class _CheackAdmin implements CheackAdmin {
  const factory _CheackAdmin(
      {@JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName}) = _$_CheackAdmin;

  factory _CheackAdmin.fromJson(Map<String, dynamic> json) =
      _$_CheackAdmin.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_CheackAdminCopyWith<_$_CheackAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}
