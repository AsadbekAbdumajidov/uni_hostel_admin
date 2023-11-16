// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_monitoring_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMonitoringResponse _$PaymentMonitoringResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentMonitoringResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentMonitoringResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PaymentsWhoPaidModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMonitoringResponseCopyWith<PaymentMonitoringResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMonitoringResponseCopyWith<$Res> {
  factory $PaymentMonitoringResponseCopyWith(PaymentMonitoringResponse value,
          $Res Function(PaymentMonitoringResponse) then) =
      _$PaymentMonitoringResponseCopyWithImpl<$Res, PaymentMonitoringResponse>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PaymentsWhoPaidModel>? results});
}

/// @nodoc
class _$PaymentMonitoringResponseCopyWithImpl<$Res,
        $Val extends PaymentMonitoringResponse>
    implements $PaymentMonitoringResponseCopyWith<$Res> {
  _$PaymentMonitoringResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PaymentsWhoPaidModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMonitoringResponseCopyWith<$Res>
    implements $PaymentMonitoringResponseCopyWith<$Res> {
  factory _$$_PaymentMonitoringResponseCopyWith(
          _$_PaymentMonitoringResponse value,
          $Res Function(_$_PaymentMonitoringResponse) then) =
      __$$_PaymentMonitoringResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PaymentsWhoPaidModel>? results});
}

/// @nodoc
class __$$_PaymentMonitoringResponseCopyWithImpl<$Res>
    extends _$PaymentMonitoringResponseCopyWithImpl<$Res,
        _$_PaymentMonitoringResponse>
    implements _$$_PaymentMonitoringResponseCopyWith<$Res> {
  __$$_PaymentMonitoringResponseCopyWithImpl(
      _$_PaymentMonitoringResponse _value,
      $Res Function(_$_PaymentMonitoringResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_PaymentMonitoringResponse(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PaymentsWhoPaidModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMonitoringResponse implements _PaymentMonitoringResponse {
  const _$_PaymentMonitoringResponse(
      {this.count,
      this.next,
      this.previous,
      final List<PaymentsWhoPaidModel>? results})
      : _results = results;

  factory _$_PaymentMonitoringResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMonitoringResponseFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PaymentsWhoPaidModel>? _results;
  @override
  List<PaymentsWhoPaidModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentMonitoringResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMonitoringResponse &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMonitoringResponseCopyWith<_$_PaymentMonitoringResponse>
      get copyWith => __$$_PaymentMonitoringResponseCopyWithImpl<
          _$_PaymentMonitoringResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMonitoringResponseToJson(
      this,
    );
  }
}

abstract class _PaymentMonitoringResponse implements PaymentMonitoringResponse {
  const factory _PaymentMonitoringResponse(
          {final int? count,
          final String? next,
          final String? previous,
          final List<PaymentsWhoPaidModel>? results}) =
      _$_PaymentMonitoringResponse;

  factory _PaymentMonitoringResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentMonitoringResponse.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PaymentsWhoPaidModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMonitoringResponseCopyWith<_$_PaymentMonitoringResponse>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentsWhoPaidModel _$PaymentsWhoPaidModelFromJson(Map<String, dynamic> json) {
  return _WhoPaidModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentsWhoPaidModel {
  int? get id => throw _privateConstructorUsedError;
  String? get course => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'faculty_model')
  String? get facultyModel => throw _privateConstructorUsedError;
  List<Payments>? get payments => throw _privateConstructorUsedError;
  List<Schedules>? get schedules => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get paid => throw _privateConstructorUsedError;
  int? get duty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentsWhoPaidModelCopyWith<PaymentsWhoPaidModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsWhoPaidModelCopyWith<$Res> {
  factory $PaymentsWhoPaidModelCopyWith(PaymentsWhoPaidModel value,
          $Res Function(PaymentsWhoPaidModel) then) =
      _$PaymentsWhoPaidModelCopyWithImpl<$Res, PaymentsWhoPaidModel>;
  @useResult
  $Res call(
      {int? id,
      String? course,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'faculty_model') String? facultyModel,
      List<Payments>? payments,
      List<Schedules>? schedules,
      int? total,
      int? paid,
      int? duty});
}

/// @nodoc
class _$PaymentsWhoPaidModelCopyWithImpl<$Res,
        $Val extends PaymentsWhoPaidModel>
    implements $PaymentsWhoPaidModelCopyWith<$Res> {
  _$PaymentsWhoPaidModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? course = freezed,
    Object? fullName = freezed,
    Object? studentId = freezed,
    Object? facultyModel = freezed,
    Object? payments = freezed,
    Object? schedules = freezed,
    Object? total = freezed,
    Object? paid = freezed,
    Object? duty = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      facultyModel: freezed == facultyModel
          ? _value.facultyModel
          : facultyModel // ignore: cast_nullable_to_non_nullable
              as String?,
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payments>?,
      schedules: freezed == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedules>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
      duty: freezed == duty
          ? _value.duty
          : duty // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WhoPaidModelCopyWith<$Res>
    implements $PaymentsWhoPaidModelCopyWith<$Res> {
  factory _$$_WhoPaidModelCopyWith(
          _$_WhoPaidModel value, $Res Function(_$_WhoPaidModel) then) =
      __$$_WhoPaidModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? course,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'faculty_model') String? facultyModel,
      List<Payments>? payments,
      List<Schedules>? schedules,
      int? total,
      int? paid,
      int? duty});
}

/// @nodoc
class __$$_WhoPaidModelCopyWithImpl<$Res>
    extends _$PaymentsWhoPaidModelCopyWithImpl<$Res, _$_WhoPaidModel>
    implements _$$_WhoPaidModelCopyWith<$Res> {
  __$$_WhoPaidModelCopyWithImpl(
      _$_WhoPaidModel _value, $Res Function(_$_WhoPaidModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? course = freezed,
    Object? fullName = freezed,
    Object? studentId = freezed,
    Object? facultyModel = freezed,
    Object? payments = freezed,
    Object? schedules = freezed,
    Object? total = freezed,
    Object? paid = freezed,
    Object? duty = freezed,
  }) {
    return _then(_$_WhoPaidModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      facultyModel: freezed == facultyModel
          ? _value.facultyModel
          : facultyModel // ignore: cast_nullable_to_non_nullable
              as String?,
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payments>?,
      schedules: freezed == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedules>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
      duty: freezed == duty
          ? _value.duty
          : duty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WhoPaidModel implements _WhoPaidModel {
  const _$_WhoPaidModel(
      {this.id,
      this.course,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'student_id') this.studentId,
      @JsonKey(name: 'faculty_model') this.facultyModel,
      final List<Payments>? payments,
      final List<Schedules>? schedules,
      this.total,
      this.paid,
      this.duty})
      : _payments = payments,
        _schedules = schedules;

  factory _$_WhoPaidModel.fromJson(Map<String, dynamic> json) =>
      _$$_WhoPaidModelFromJson(json);

  @override
  final int? id;
  @override
  final String? course;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'student_id')
  final int? studentId;
  @override
  @JsonKey(name: 'faculty_model')
  final String? facultyModel;
  final List<Payments>? _payments;
  @override
  List<Payments>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Schedules>? _schedules;
  @override
  List<Schedules>? get schedules {
    final value = _schedules;
    if (value == null) return null;
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final int? paid;
  @override
  final int? duty;

  @override
  String toString() {
    return 'PaymentsWhoPaidModel(id: $id, course: $course, fullName: $fullName, studentId: $studentId, facultyModel: $facultyModel, payments: $payments, schedules: $schedules, total: $total, paid: $paid, duty: $duty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WhoPaidModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.facultyModel, facultyModel) ||
                other.facultyModel == facultyModel) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.duty, duty) || other.duty == duty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      course,
      fullName,
      studentId,
      facultyModel,
      const DeepCollectionEquality().hash(_payments),
      const DeepCollectionEquality().hash(_schedules),
      total,
      paid,
      duty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WhoPaidModelCopyWith<_$_WhoPaidModel> get copyWith =>
      __$$_WhoPaidModelCopyWithImpl<_$_WhoPaidModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WhoPaidModelToJson(
      this,
    );
  }
}

abstract class _WhoPaidModel implements PaymentsWhoPaidModel {
  const factory _WhoPaidModel(
      {final int? id,
      final String? course,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'student_id') final int? studentId,
      @JsonKey(name: 'faculty_model') final String? facultyModel,
      final List<Payments>? payments,
      final List<Schedules>? schedules,
      final int? total,
      final int? paid,
      final int? duty}) = _$_WhoPaidModel;

  factory _WhoPaidModel.fromJson(Map<String, dynamic> json) =
      _$_WhoPaidModel.fromJson;

  @override
  int? get id;
  @override
  String? get course;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'student_id')
  int? get studentId;
  @override
  @JsonKey(name: 'faculty_model')
  String? get facultyModel;
  @override
  List<Payments>? get payments;
  @override
  List<Schedules>? get schedules;
  @override
  int? get total;
  @override
  int? get paid;
  @override
  int? get duty;
  @override
  @JsonKey(ignore: true)
  _$$_WhoPaidModelCopyWith<_$_WhoPaidModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Payments _$PaymentsFromJson(Map<String, dynamic> json) {
  return _Payments.fromJson(json);
}

/// @nodoc
mixin _$Payments {
  int? get id => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payed_at')
  String? get payedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentsCopyWith<Payments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsCopyWith<$Res> {
  factory $PaymentsCopyWith(Payments value, $Res Function(Payments) then) =
      _$PaymentsCopyWithImpl<$Res, Payments>;
  @useResult
  $Res call(
      {int? id,
      String? amount,
      String? status,
      @JsonKey(name: 'payed_at') String? payedAt});
}

/// @nodoc
class _$PaymentsCopyWithImpl<$Res, $Val extends Payments>
    implements $PaymentsCopyWith<$Res> {
  _$PaymentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? payedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      payedAt: freezed == payedAt
          ? _value.payedAt
          : payedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentsCopyWith<$Res> implements $PaymentsCopyWith<$Res> {
  factory _$$_PaymentsCopyWith(
          _$_Payments value, $Res Function(_$_Payments) then) =
      __$$_PaymentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? amount,
      String? status,
      @JsonKey(name: 'payed_at') String? payedAt});
}

/// @nodoc
class __$$_PaymentsCopyWithImpl<$Res>
    extends _$PaymentsCopyWithImpl<$Res, _$_Payments>
    implements _$$_PaymentsCopyWith<$Res> {
  __$$_PaymentsCopyWithImpl(
      _$_Payments _value, $Res Function(_$_Payments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? payedAt = freezed,
  }) {
    return _then(_$_Payments(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      payedAt: freezed == payedAt
          ? _value.payedAt
          : payedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payments implements _Payments {
  const _$_Payments(
      {this.id,
      this.amount,
      this.status,
      @JsonKey(name: 'payed_at') this.payedAt});

  factory _$_Payments.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentsFromJson(json);

  @override
  final int? id;
  @override
  final String? amount;
  @override
  final String? status;
  @override
  @JsonKey(name: 'payed_at')
  final String? payedAt;

  @override
  String toString() {
    return 'Payments(id: $id, amount: $amount, status: $status, payedAt: $payedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payments &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.payedAt, payedAt) || other.payedAt == payedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, status, payedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentsCopyWith<_$_Payments> get copyWith =>
      __$$_PaymentsCopyWithImpl<_$_Payments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentsToJson(
      this,
    );
  }
}

abstract class _Payments implements Payments {
  const factory _Payments(
      {final int? id,
      final String? amount,
      final String? status,
      @JsonKey(name: 'payed_at') final String? payedAt}) = _$_Payments;

  factory _Payments.fromJson(Map<String, dynamic> json) = _$_Payments.fromJson;

  @override
  int? get id;
  @override
  String? get amount;
  @override
  String? get status;
  @override
  @JsonKey(name: 'payed_at')
  String? get payedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentsCopyWith<_$_Payments> get copyWith =>
      throw _privateConstructorUsedError;
}

Schedules _$SchedulesFromJson(Map<String, dynamic> json) {
  return _Schedules.fromJson(json);
}

/// @nodoc
mixin _$Schedules {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'payed_amount')
  int? get payedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_date')
  String get paymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'payed_date')
  String? get payedDate => throw _privateConstructorUsedError;
  bool get payed => throw _privateConstructorUsedError;
  int? get residual => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchedulesCopyWith<Schedules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulesCopyWith<$Res> {
  factory $SchedulesCopyWith(Schedules value, $Res Function(Schedules) then) =
      _$SchedulesCopyWithImpl<$Res, Schedules>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPrice,
      @JsonKey(name: 'payed_amount') int? payedAmount,
      @JsonKey(name: 'payment_date') String paymentDate,
      @JsonKey(name: 'payed_date') String? payedDate,
      bool payed,
      int? residual});
}

/// @nodoc
class _$SchedulesCopyWithImpl<$Res, $Val extends Schedules>
    implements $SchedulesCopyWith<$Res> {
  _$SchedulesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthlyPrice = freezed,
    Object? payedAmount = freezed,
    Object? paymentDate = null,
    Object? payedDate = freezed,
    Object? payed = null,
    Object? residual = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      monthlyPrice: freezed == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      payedAmount: freezed == payedAmount
          ? _value.payedAmount
          : payedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      payedDate: freezed == payedDate
          ? _value.payedDate
          : payedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      payed: null == payed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool,
      residual: freezed == residual
          ? _value.residual
          : residual // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchedulesCopyWith<$Res> implements $SchedulesCopyWith<$Res> {
  factory _$$_SchedulesCopyWith(
          _$_Schedules value, $Res Function(_$_Schedules) then) =
      __$$_SchedulesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'monthly_payment_price') int? monthlyPrice,
      @JsonKey(name: 'payed_amount') int? payedAmount,
      @JsonKey(name: 'payment_date') String paymentDate,
      @JsonKey(name: 'payed_date') String? payedDate,
      bool payed,
      int? residual});
}

/// @nodoc
class __$$_SchedulesCopyWithImpl<$Res>
    extends _$SchedulesCopyWithImpl<$Res, _$_Schedules>
    implements _$$_SchedulesCopyWith<$Res> {
  __$$_SchedulesCopyWithImpl(
      _$_Schedules _value, $Res Function(_$_Schedules) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthlyPrice = freezed,
    Object? payedAmount = freezed,
    Object? paymentDate = null,
    Object? payedDate = freezed,
    Object? payed = null,
    Object? residual = freezed,
  }) {
    return _then(_$_Schedules(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      monthlyPrice: freezed == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      payedAmount: freezed == payedAmount
          ? _value.payedAmount
          : payedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      payedDate: freezed == payedDate
          ? _value.payedDate
          : payedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      payed: null == payed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool,
      residual: freezed == residual
          ? _value.residual
          : residual // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Schedules implements _Schedules {
  const _$_Schedules(
      {this.id,
      @JsonKey(name: 'monthly_payment_price') this.monthlyPrice,
      @JsonKey(name: 'payed_amount') this.payedAmount,
      @JsonKey(name: 'payment_date') required this.paymentDate,
      @JsonKey(name: 'payed_date') this.payedDate,
      required this.payed,
      this.residual});

  factory _$_Schedules.fromJson(Map<String, dynamic> json) =>
      _$$_SchedulesFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'monthly_payment_price')
  final int? monthlyPrice;
  @override
  @JsonKey(name: 'payed_amount')
  final int? payedAmount;
  @override
  @JsonKey(name: 'payment_date')
  final String paymentDate;
  @override
  @JsonKey(name: 'payed_date')
  final String? payedDate;
  @override
  final bool payed;
  @override
  final int? residual;

  @override
  String toString() {
    return 'Schedules(id: $id, monthlyPrice: $monthlyPrice, payedAmount: $payedAmount, paymentDate: $paymentDate, payedDate: $payedDate, payed: $payed, residual: $residual)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedules &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.payedAmount, payedAmount) ||
                other.payedAmount == payedAmount) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.payedDate, payedDate) ||
                other.payedDate == payedDate) &&
            (identical(other.payed, payed) || other.payed == payed) &&
            (identical(other.residual, residual) ||
                other.residual == residual));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, monthlyPrice, payedAmount,
      paymentDate, payedDate, payed, residual);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchedulesCopyWith<_$_Schedules> get copyWith =>
      __$$_SchedulesCopyWithImpl<_$_Schedules>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchedulesToJson(
      this,
    );
  }
}

abstract class _Schedules implements Schedules {
  const factory _Schedules(
      {final int? id,
      @JsonKey(name: 'monthly_payment_price') final int? monthlyPrice,
      @JsonKey(name: 'payed_amount') final int? payedAmount,
      @JsonKey(name: 'payment_date') required final String paymentDate,
      @JsonKey(name: 'payed_date') final String? payedDate,
      required final bool payed,
      final int? residual}) = _$_Schedules;

  factory _Schedules.fromJson(Map<String, dynamic> json) =
      _$_Schedules.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'monthly_payment_price')
  int? get monthlyPrice;
  @override
  @JsonKey(name: 'payed_amount')
  int? get payedAmount;
  @override
  @JsonKey(name: 'payment_date')
  String get paymentDate;
  @override
  @JsonKey(name: 'payed_date')
  String? get payedDate;
  @override
  bool get payed;
  @override
  int? get residual;
  @override
  @JsonKey(ignore: true)
  _$$_SchedulesCopyWith<_$_Schedules> get copyWith =>
      throw _privateConstructorUsedError;
}
