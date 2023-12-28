// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_mothly_price_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditMonthlyPriceRequest _$EditMonthlyPriceRequestFromJson(
    Map<String, dynamic> json) {
  return _EditMonthlyPriceRequest.fromJson(json);
}

/// @nodoc
mixin _$EditMonthlyPriceRequest {
  @JsonKey(name: 'student_id')
  int get studentid => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditMonthlyPriceRequestCopyWith<EditMonthlyPriceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditMonthlyPriceRequestCopyWith<$Res> {
  factory $EditMonthlyPriceRequestCopyWith(EditMonthlyPriceRequest value,
          $Res Function(EditMonthlyPriceRequest) then) =
      _$EditMonthlyPriceRequestCopyWithImpl<$Res, EditMonthlyPriceRequest>;
  @useResult
  $Res call({@JsonKey(name: 'student_id') int studentid, int amount});
}

/// @nodoc
class _$EditMonthlyPriceRequestCopyWithImpl<$Res,
        $Val extends EditMonthlyPriceRequest>
    implements $EditMonthlyPriceRequestCopyWith<$Res> {
  _$EditMonthlyPriceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentid = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      studentid: null == studentid
          ? _value.studentid
          : studentid // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditMonthlyPriceRequestImplCopyWith<$Res>
    implements $EditMonthlyPriceRequestCopyWith<$Res> {
  factory _$$EditMonthlyPriceRequestImplCopyWith(
          _$EditMonthlyPriceRequestImpl value,
          $Res Function(_$EditMonthlyPriceRequestImpl) then) =
      __$$EditMonthlyPriceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'student_id') int studentid, int amount});
}

/// @nodoc
class __$$EditMonthlyPriceRequestImplCopyWithImpl<$Res>
    extends _$EditMonthlyPriceRequestCopyWithImpl<$Res,
        _$EditMonthlyPriceRequestImpl>
    implements _$$EditMonthlyPriceRequestImplCopyWith<$Res> {
  __$$EditMonthlyPriceRequestImplCopyWithImpl(
      _$EditMonthlyPriceRequestImpl _value,
      $Res Function(_$EditMonthlyPriceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentid = null,
    Object? amount = null,
  }) {
    return _then(_$EditMonthlyPriceRequestImpl(
      studentid: null == studentid
          ? _value.studentid
          : studentid // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditMonthlyPriceRequestImpl implements _EditMonthlyPriceRequest {
  const _$EditMonthlyPriceRequestImpl(
      {@JsonKey(name: 'student_id') required this.studentid,
      required this.amount});

  factory _$EditMonthlyPriceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditMonthlyPriceRequestImplFromJson(json);

  @override
  @JsonKey(name: 'student_id')
  final int studentid;
  @override
  final int amount;

  @override
  String toString() {
    return 'EditMonthlyPriceRequest(studentid: $studentid, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditMonthlyPriceRequestImpl &&
            (identical(other.studentid, studentid) ||
                other.studentid == studentid) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentid, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditMonthlyPriceRequestImplCopyWith<_$EditMonthlyPriceRequestImpl>
      get copyWith => __$$EditMonthlyPriceRequestImplCopyWithImpl<
          _$EditMonthlyPriceRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditMonthlyPriceRequestImplToJson(
      this,
    );
  }
}

abstract class _EditMonthlyPriceRequest implements EditMonthlyPriceRequest {
  const factory _EditMonthlyPriceRequest(
      {@JsonKey(name: 'student_id') required final int studentid,
      required final int amount}) = _$EditMonthlyPriceRequestImpl;

  factory _EditMonthlyPriceRequest.fromJson(Map<String, dynamic> json) =
      _$EditMonthlyPriceRequestImpl.fromJson;

  @override
  @JsonKey(name: 'student_id')
  int get studentid;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$EditMonthlyPriceRequestImplCopyWith<_$EditMonthlyPriceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
