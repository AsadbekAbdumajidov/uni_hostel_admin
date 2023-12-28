// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditStatusState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  EditStatusResponse? get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditStatusStateCopyWith<EditStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStatusStateCopyWith<$Res> {
  factory $EditStatusStateCopyWith(
          EditStatusState value, $Res Function(EditStatusState) then) =
      _$EditStatusStateCopyWithImpl<$Res, EditStatusState>;
  @useResult
  $Res call({Status status, Failure failure, EditStatusResponse? response});

  $EditStatusResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$EditStatusStateCopyWithImpl<$Res, $Val extends EditStatusState>
    implements $EditStatusStateCopyWith<$Res> {
  _$EditStatusStateCopyWithImpl(this._value, this._then);

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
              as EditStatusResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditStatusResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $EditStatusResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditStatusStateImplCopyWith<$Res>
    implements $EditStatusStateCopyWith<$Res> {
  factory _$$EditStatusStateImplCopyWith(_$EditStatusStateImpl value,
          $Res Function(_$EditStatusStateImpl) then) =
      __$$EditStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, Failure failure, EditStatusResponse? response});

  @override
  $EditStatusResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$EditStatusStateImplCopyWithImpl<$Res>
    extends _$EditStatusStateCopyWithImpl<$Res, _$EditStatusStateImpl>
    implements _$$EditStatusStateImplCopyWith<$Res> {
  __$$EditStatusStateImplCopyWithImpl(
      _$EditStatusStateImpl _value, $Res Function(_$EditStatusStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? response = freezed,
  }) {
    return _then(_$EditStatusStateImpl(
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
              as EditStatusResponse?,
    ));
  }
}

/// @nodoc

class _$EditStatusStateImpl implements _EditStatusState {
  const _$EditStatusStateImpl(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.response});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final EditStatusResponse? response;

  @override
  String toString() {
    return 'EditStatusState(status: $status, failure: $failure, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditStatusStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditStatusStateImplCopyWith<_$EditStatusStateImpl> get copyWith =>
      __$$EditStatusStateImplCopyWithImpl<_$EditStatusStateImpl>(
          this, _$identity);
}

abstract class _EditStatusState implements EditStatusState {
  const factory _EditStatusState(
      {final Status status,
      final Failure failure,
      final EditStatusResponse? response}) = _$EditStatusStateImpl;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  EditStatusResponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$EditStatusStateImplCopyWith<_$EditStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
