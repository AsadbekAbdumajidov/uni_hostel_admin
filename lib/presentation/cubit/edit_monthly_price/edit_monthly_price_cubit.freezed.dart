// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_monthly_price_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditMonthlyPriceState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditMonthlyPriceStateCopyWith<EditMonthlyPriceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditMonthlyPriceStateCopyWith<$Res> {
  factory $EditMonthlyPriceStateCopyWith(EditMonthlyPriceState value,
          $Res Function(EditMonthlyPriceState) then) =
      _$EditMonthlyPriceStateCopyWithImpl<$Res, EditMonthlyPriceState>;
  @useResult
  $Res call({Status status, Failure failure});
}

/// @nodoc
class _$EditMonthlyPriceStateCopyWithImpl<$Res,
        $Val extends EditMonthlyPriceState>
    implements $EditMonthlyPriceStateCopyWith<$Res> {
  _$EditMonthlyPriceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditMonthlyPriceStateImplCopyWith<$Res>
    implements $EditMonthlyPriceStateCopyWith<$Res> {
  factory _$$EditMonthlyPriceStateImplCopyWith(
          _$EditMonthlyPriceStateImpl value,
          $Res Function(_$EditMonthlyPriceStateImpl) then) =
      __$$EditMonthlyPriceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, Failure failure});
}

/// @nodoc
class __$$EditMonthlyPriceStateImplCopyWithImpl<$Res>
    extends _$EditMonthlyPriceStateCopyWithImpl<$Res,
        _$EditMonthlyPriceStateImpl>
    implements _$$EditMonthlyPriceStateImplCopyWith<$Res> {
  __$$EditMonthlyPriceStateImplCopyWithImpl(_$EditMonthlyPriceStateImpl _value,
      $Res Function(_$EditMonthlyPriceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_$EditMonthlyPriceStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$EditMonthlyPriceStateImpl implements _EditMonthlyPriceState {
  const _$EditMonthlyPriceStateImpl(
      {this.status = Status.UNKNOWN, this.failure = const UnknownFailure()});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;

  @override
  String toString() {
    return 'EditMonthlyPriceState(status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditMonthlyPriceStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditMonthlyPriceStateImplCopyWith<_$EditMonthlyPriceStateImpl>
      get copyWith => __$$EditMonthlyPriceStateImplCopyWithImpl<
          _$EditMonthlyPriceStateImpl>(this, _$identity);
}

abstract class _EditMonthlyPriceState implements EditMonthlyPriceState {
  const factory _EditMonthlyPriceState(
      {final Status status,
      final Failure failure}) = _$EditMonthlyPriceStateImpl;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$EditMonthlyPriceStateImplCopyWith<_$EditMonthlyPriceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
