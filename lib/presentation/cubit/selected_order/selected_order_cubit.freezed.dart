// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedOrderState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  SelectOrderResponse? get orderResponse => throw _privateConstructorUsedError;
  List<CheckBoxModel>? get checkBoxModel => throw _privateConstructorUsedError;
  List<String> get trueProperties => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedOrderStateCopyWith<SelectedOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedOrderStateCopyWith<$Res> {
  factory $SelectedOrderStateCopyWith(
          SelectedOrderState value, $Res Function(SelectedOrderState) then) =
      _$SelectedOrderStateCopyWithImpl<$Res, SelectedOrderState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      SelectOrderResponse? orderResponse,
      List<CheckBoxModel>? checkBoxModel,
      List<String> trueProperties});

  $SelectOrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class _$SelectedOrderStateCopyWithImpl<$Res, $Val extends SelectedOrderState>
    implements $SelectedOrderStateCopyWith<$Res> {
  _$SelectedOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? orderResponse = freezed,
    Object? checkBoxModel = freezed,
    Object? trueProperties = null,
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
      orderResponse: freezed == orderResponse
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as SelectOrderResponse?,
      checkBoxModel: freezed == checkBoxModel
          ? _value.checkBoxModel
          : checkBoxModel // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
      trueProperties: null == trueProperties
          ? _value.trueProperties
          : trueProperties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectOrderResponseCopyWith<$Res>? get orderResponse {
    if (_value.orderResponse == null) {
      return null;
    }

    return $SelectOrderResponseCopyWith<$Res>(_value.orderResponse!, (value) {
      return _then(_value.copyWith(orderResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectedOrderStateCopyWith<$Res>
    implements $SelectedOrderStateCopyWith<$Res> {
  factory _$$_SelectedOrderStateCopyWith(_$_SelectedOrderState value,
          $Res Function(_$_SelectedOrderState) then) =
      __$$_SelectedOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      SelectOrderResponse? orderResponse,
      List<CheckBoxModel>? checkBoxModel,
      List<String> trueProperties});

  @override
  $SelectOrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class __$$_SelectedOrderStateCopyWithImpl<$Res>
    extends _$SelectedOrderStateCopyWithImpl<$Res, _$_SelectedOrderState>
    implements _$$_SelectedOrderStateCopyWith<$Res> {
  __$$_SelectedOrderStateCopyWithImpl(
      _$_SelectedOrderState _value, $Res Function(_$_SelectedOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? orderResponse = freezed,
    Object? checkBoxModel = freezed,
    Object? trueProperties = null,
  }) {
    return _then(_$_SelectedOrderState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      orderResponse: freezed == orderResponse
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as SelectOrderResponse?,
      checkBoxModel: freezed == checkBoxModel
          ? _value._checkBoxModel
          : checkBoxModel // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
      trueProperties: null == trueProperties
          ? _value._trueProperties
          : trueProperties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SelectedOrderState implements _SelectedOrderState {
  const _$_SelectedOrderState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.orderResponse,
      final List<CheckBoxModel>? checkBoxModel,
      final List<String> trueProperties = const []})
      : _checkBoxModel = checkBoxModel,
        _trueProperties = trueProperties;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final SelectOrderResponse? orderResponse;
  final List<CheckBoxModel>? _checkBoxModel;
  @override
  List<CheckBoxModel>? get checkBoxModel {
    final value = _checkBoxModel;
    if (value == null) return null;
    if (_checkBoxModel is EqualUnmodifiableListView) return _checkBoxModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _trueProperties;
  @override
  @JsonKey()
  List<String> get trueProperties {
    if (_trueProperties is EqualUnmodifiableListView) return _trueProperties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trueProperties);
  }

  @override
  String toString() {
    return 'SelectedOrderState(status: $status, failure: $failure, orderResponse: $orderResponse, checkBoxModel: $checkBoxModel, trueProperties: $trueProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedOrderState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.orderResponse, orderResponse) ||
                other.orderResponse == orderResponse) &&
            const DeepCollectionEquality()
                .equals(other._checkBoxModel, _checkBoxModel) &&
            const DeepCollectionEquality()
                .equals(other._trueProperties, _trueProperties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      orderResponse,
      const DeepCollectionEquality().hash(_checkBoxModel),
      const DeepCollectionEquality().hash(_trueProperties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedOrderStateCopyWith<_$_SelectedOrderState> get copyWith =>
      __$$_SelectedOrderStateCopyWithImpl<_$_SelectedOrderState>(
          this, _$identity);
}

abstract class _SelectedOrderState implements SelectedOrderState {
  const factory _SelectedOrderState(
      {final Status status,
      final Failure failure,
      final SelectOrderResponse? orderResponse,
      final List<CheckBoxModel>? checkBoxModel,
      final List<String> trueProperties}) = _$_SelectedOrderState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  SelectOrderResponse? get orderResponse;
  @override
  List<CheckBoxModel>? get checkBoxModel;
  @override
  List<String> get trueProperties;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedOrderStateCopyWith<_$_SelectedOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
