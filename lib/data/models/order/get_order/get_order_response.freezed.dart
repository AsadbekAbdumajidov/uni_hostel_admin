// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOrderResponse _$GetOrderResponseFromJson(Map<String, dynamic> json) {
  return _GetOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$GetOrderResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<OrderModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderResponseCopyWith<GetOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderResponseCopyWith<$Res> {
  factory $GetOrderResponseCopyWith(
          GetOrderResponse value, $Res Function(GetOrderResponse) then) =
      _$GetOrderResponseCopyWithImpl<$Res, GetOrderResponse>;
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<OrderModel>? results});
}

/// @nodoc
class _$GetOrderResponseCopyWithImpl<$Res, $Val extends GetOrderResponse>
    implements $GetOrderResponseCopyWith<$Res> {
  _$GetOrderResponseCopyWithImpl(this._value, this._then);

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
              as List<OrderModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetOrderResponseCopyWith<$Res>
    implements $GetOrderResponseCopyWith<$Res> {
  factory _$$_GetOrderResponseCopyWith(
          _$_GetOrderResponse value, $Res Function(_$_GetOrderResponse) then) =
      __$$_GetOrderResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<OrderModel>? results});
}

/// @nodoc
class __$$_GetOrderResponseCopyWithImpl<$Res>
    extends _$GetOrderResponseCopyWithImpl<$Res, _$_GetOrderResponse>
    implements _$$_GetOrderResponseCopyWith<$Res> {
  __$$_GetOrderResponseCopyWithImpl(
      _$_GetOrderResponse _value, $Res Function(_$_GetOrderResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_GetOrderResponse(
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
              as List<OrderModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOrderResponse implements _GetOrderResponse {
  const _$_GetOrderResponse(
      {this.count, this.next, this.previous, final List<OrderModel>? results})
      : _results = results;

  factory _$_GetOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetOrderResponseFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<OrderModel>? _results;
  @override
  List<OrderModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetOrderResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderResponse &&
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
  _$$_GetOrderResponseCopyWith<_$_GetOrderResponse> get copyWith =>
      __$$_GetOrderResponseCopyWithImpl<_$_GetOrderResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOrderResponseToJson(
      this,
    );
  }
}

abstract class _GetOrderResponse implements GetOrderResponse {
  const factory _GetOrderResponse(
      {final int? count,
      final String? next,
      final String? previous,
      final List<OrderModel>? results}) = _$_GetOrderResponse;

  factory _GetOrderResponse.fromJson(Map<String, dynamic> json) =
      _$_GetOrderResponse.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<OrderModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_GetOrderResponseCopyWith<_$_GetOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiting_status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_date')
  int? get paymentDate => throw _privateConstructorUsedError;
  StudentModel? get student => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'waiting_status') String? status,
      @JsonKey(name: 'payment_date') int? paymentDate,
      StudentModel? student});

  $StudentModelCopyWith<$Res>? get student;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? paymentDate = freezed,
    Object? student = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as int?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentModelCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentModelCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'waiting_status') String? status,
      @JsonKey(name: 'payment_date') int? paymentDate,
      StudentModel? student});

  @override
  $StudentModelCopyWith<$Res>? get student;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? paymentDate = freezed,
    Object? student = freezed,
  }) {
    return _then(_$_OrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as int?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      {this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'waiting_status') this.status,
      @JsonKey(name: 'payment_date') this.paymentDate,
      this.student});

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'waiting_status')
  final String? status;
  @override
  @JsonKey(name: 'payment_date')
  final int? paymentDate;
  @override
  final StudentModel? student;

  @override
  String toString() {
    return 'OrderModel(id: $id, createdAt: $createdAt, status: $status, paymentDate: $paymentDate, student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, status, paymentDate, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {final int? id,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'waiting_status') final String? status,
      @JsonKey(name: 'payment_date') final int? paymentDate,
      final StudentModel? student}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'waiting_status')
  String? get status;
  @override
  @JsonKey(name: 'payment_date')
  int? get paymentDate;
  @override
  StudentModel? get student;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentModel _$StudentModelFromJson(Map<String, dynamic> json) {
  return _StudentModel.fromJson(json);
}

/// @nodoc
mixin _$StudentModel {
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentModelCopyWith<StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentModelCopyWith<$Res> {
  factory $StudentModelCopyWith(
          StudentModel value, $Res Function(StudentModel) then) =
      _$StudentModelCopyWithImpl<$Res, StudentModel>;
  @useResult
  $Res call({String? image, @JsonKey(name: 'full_name') String? name});
}

/// @nodoc
class _$StudentModelCopyWithImpl<$Res, $Val extends StudentModel>
    implements $StudentModelCopyWith<$Res> {
  _$StudentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentModelCopyWith<$Res>
    implements $StudentModelCopyWith<$Res> {
  factory _$$_StudentModelCopyWith(
          _$_StudentModel value, $Res Function(_$_StudentModel) then) =
      __$$_StudentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, @JsonKey(name: 'full_name') String? name});
}

/// @nodoc
class __$$_StudentModelCopyWithImpl<$Res>
    extends _$StudentModelCopyWithImpl<$Res, _$_StudentModel>
    implements _$$_StudentModelCopyWith<$Res> {
  __$$_StudentModelCopyWithImpl(
      _$_StudentModel _value, $Res Function(_$_StudentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_StudentModel(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentModel implements _StudentModel {
  const _$_StudentModel({this.image, @JsonKey(name: 'full_name') this.name});

  factory _$_StudentModel.fromJson(Map<String, dynamic> json) =>
      _$$_StudentModelFromJson(json);

  @override
  final String? image;
  @override
  @JsonKey(name: 'full_name')
  final String? name;

  @override
  String toString() {
    return 'StudentModel(image: $image, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentModelCopyWith<_$_StudentModel> get copyWith =>
      __$$_StudentModelCopyWithImpl<_$_StudentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentModelToJson(
      this,
    );
  }
}

abstract class _StudentModel implements StudentModel {
  const factory _StudentModel(
      {final String? image,
      @JsonKey(name: 'full_name') final String? name}) = _$_StudentModel;

  factory _StudentModel.fromJson(Map<String, dynamic> json) =
      _$_StudentModel.fromJson;

  @override
  String? get image;
  @override
  @JsonKey(name: 'full_name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_StudentModelCopyWith<_$_StudentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
