// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatisticsState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  MainStatisticsResponse? get response => throw _privateConstructorUsedError;
  StudentStatisticsResponse? get studentResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticsStateCopyWith<StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsStateCopyWith<$Res> {
  factory $StatisticsStateCopyWith(
          StatisticsState value, $Res Function(StatisticsState) then) =
      _$StatisticsStateCopyWithImpl<$Res, StatisticsState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      MainStatisticsResponse? response,
      StudentStatisticsResponse? studentResponse});

  $MainStatisticsResponseCopyWith<$Res>? get response;
  $StudentStatisticsResponseCopyWith<$Res>? get studentResponse;
}

/// @nodoc
class _$StatisticsStateCopyWithImpl<$Res, $Val extends StatisticsState>
    implements $StatisticsStateCopyWith<$Res> {
  _$StatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? response = freezed,
    Object? studentResponse = freezed,
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MainStatisticsResponse?,
      studentResponse: freezed == studentResponse
          ? _value.studentResponse
          : studentResponse // ignore: cast_nullable_to_non_nullable
              as StudentStatisticsResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainStatisticsResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $MainStatisticsResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentStatisticsResponseCopyWith<$Res>? get studentResponse {
    if (_value.studentResponse == null) {
      return null;
    }

    return $StudentStatisticsResponseCopyWith<$Res>(_value.studentResponse!,
        (value) {
      return _then(_value.copyWith(studentResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatisticsStateCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory _$$_StatisticsStateCopyWith(
          _$_StatisticsState value, $Res Function(_$_StatisticsState) then) =
      __$$_StatisticsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      MainStatisticsResponse? response,
      StudentStatisticsResponse? studentResponse});

  @override
  $MainStatisticsResponseCopyWith<$Res>? get response;
  @override
  $StudentStatisticsResponseCopyWith<$Res>? get studentResponse;
}

/// @nodoc
class __$$_StatisticsStateCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$_StatisticsState>
    implements _$$_StatisticsStateCopyWith<$Res> {
  __$$_StatisticsStateCopyWithImpl(
      _$_StatisticsState _value, $Res Function(_$_StatisticsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? response = freezed,
    Object? studentResponse = freezed,
  }) {
    return _then(_$_StatisticsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MainStatisticsResponse?,
      studentResponse: freezed == studentResponse
          ? _value.studentResponse
          : studentResponse // ignore: cast_nullable_to_non_nullable
              as StudentStatisticsResponse?,
    ));
  }
}

/// @nodoc

class _$_StatisticsState implements _StatisticsState {
  const _$_StatisticsState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.response,
      this.studentResponse});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final MainStatisticsResponse? response;
  @override
  final StudentStatisticsResponse? studentResponse;

  @override
  String toString() {
    return 'StatisticsState(status: $status, failure: $failure, response: $response, studentResponse: $studentResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.studentResponse, studentResponse) ||
                other.studentResponse == studentResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, failure, response, studentResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsStateCopyWith<_$_StatisticsState> get copyWith =>
      __$$_StatisticsStateCopyWithImpl<_$_StatisticsState>(this, _$identity);
}

abstract class _StatisticsState implements StatisticsState {
  const factory _StatisticsState(
      {final Status status,
      final Failure failure,
      final MainStatisticsResponse? response,
      final StudentStatisticsResponse? studentResponse}) = _$_StatisticsState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  MainStatisticsResponse? get response;
  @override
  StudentStatisticsResponse? get studentResponse;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsStateCopyWith<_$_StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}
