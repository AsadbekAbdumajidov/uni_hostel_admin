// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_payments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentsState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  PaymentMonitoringResponse? get response => throw _privateConstructorUsedError;
  List<PaymentsWhoPaidModel> get whoPaidList =>
      throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get loadingPagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentsStateCopyWith<PaymentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsStateCopyWith<$Res> {
  factory $PaymentsStateCopyWith(
          PaymentsState value, $Res Function(PaymentsState) then) =
      _$PaymentsStateCopyWithImpl<$Res, PaymentsState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      PaymentMonitoringResponse? response,
      List<PaymentsWhoPaidModel> whoPaidList,
      int page,
      bool hasReachedMax,
      bool loadingPagination});

  $PaymentMonitoringResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$PaymentsStateCopyWithImpl<$Res, $Val extends PaymentsState>
    implements $PaymentsStateCopyWith<$Res> {
  _$PaymentsStateCopyWithImpl(this._value, this._then);

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
    Object? whoPaidList = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
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
              as PaymentMonitoringResponse?,
      whoPaidList: null == whoPaidList
          ? _value.whoPaidList
          : whoPaidList // ignore: cast_nullable_to_non_nullable
              as List<PaymentsWhoPaidModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingPagination: null == loadingPagination
          ? _value.loadingPagination
          : loadingPagination // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMonitoringResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $PaymentMonitoringResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentsStateCopyWith<$Res>
    implements $PaymentsStateCopyWith<$Res> {
  factory _$$_PaymentsStateCopyWith(
          _$_PaymentsState value, $Res Function(_$_PaymentsState) then) =
      __$$_PaymentsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      PaymentMonitoringResponse? response,
      List<PaymentsWhoPaidModel> whoPaidList,
      int page,
      bool hasReachedMax,
      bool loadingPagination});

  @override
  $PaymentMonitoringResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$_PaymentsStateCopyWithImpl<$Res>
    extends _$PaymentsStateCopyWithImpl<$Res, _$_PaymentsState>
    implements _$$_PaymentsStateCopyWith<$Res> {
  __$$_PaymentsStateCopyWithImpl(
      _$_PaymentsState _value, $Res Function(_$_PaymentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? response = freezed,
    Object? whoPaidList = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
  }) {
    return _then(_$_PaymentsState(
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
              as PaymentMonitoringResponse?,
      whoPaidList: null == whoPaidList
          ? _value._whoPaidList
          : whoPaidList // ignore: cast_nullable_to_non_nullable
              as List<PaymentsWhoPaidModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingPagination: null == loadingPagination
          ? _value.loadingPagination
          : loadingPagination // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaymentsState implements _PaymentsState {
  const _$_PaymentsState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.response,
      final List<PaymentsWhoPaidModel> whoPaidList = const [],
      this.page = 1,
      this.hasReachedMax = false,
      this.loadingPagination = false})
      : _whoPaidList = whoPaidList;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final PaymentMonitoringResponse? response;
  final List<PaymentsWhoPaidModel> _whoPaidList;
  @override
  @JsonKey()
  List<PaymentsWhoPaidModel> get whoPaidList {
    if (_whoPaidList is EqualUnmodifiableListView) return _whoPaidList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_whoPaidList);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool loadingPagination;

  @override
  String toString() {
    return 'PaymentsState(status: $status, failure: $failure, response: $response, whoPaidList: $whoPaidList, page: $page, hasReachedMax: $hasReachedMax, loadingPagination: $loadingPagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.response, response) ||
                other.response == response) &&
            const DeepCollectionEquality()
                .equals(other._whoPaidList, _whoPaidList) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.loadingPagination, loadingPagination) ||
                other.loadingPagination == loadingPagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      response,
      const DeepCollectionEquality().hash(_whoPaidList),
      page,
      hasReachedMax,
      loadingPagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentsStateCopyWith<_$_PaymentsState> get copyWith =>
      __$$_PaymentsStateCopyWithImpl<_$_PaymentsState>(this, _$identity);
}

abstract class _PaymentsState implements PaymentsState {
  const factory _PaymentsState(
      {final Status status,
      final Failure failure,
      final PaymentMonitoringResponse? response,
      final List<PaymentsWhoPaidModel> whoPaidList,
      final int page,
      final bool hasReachedMax,
      final bool loadingPagination}) = _$_PaymentsState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  PaymentMonitoringResponse? get response;
  @override
  List<PaymentsWhoPaidModel> get whoPaidList;
  @override
  int get page;
  @override
  bool get hasReachedMax;
  @override
  bool get loadingPagination;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentsStateCopyWith<_$_PaymentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
