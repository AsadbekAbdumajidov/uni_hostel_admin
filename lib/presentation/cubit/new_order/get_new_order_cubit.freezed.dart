// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_new_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetNewOrderState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  GetOrderResponse? get orderResponse => throw _privateConstructorUsedError;
  List<OrderModel> get orderList => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get maritalStatus => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get loadingPagination => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetNewOrderStateCopyWith<GetNewOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewOrderStateCopyWith<$Res> {
  factory $GetNewOrderStateCopyWith(
          GetNewOrderState value, $Res Function(GetNewOrderState) then) =
      _$GetNewOrderStateCopyWithImpl<$Res, GetNewOrderState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      GetOrderResponse? orderResponse,
      List<OrderModel> orderList,
      int page,
      String maritalStatus,
      bool hasReachedMax,
      bool loadingPagination,
      String search});

  $GetOrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class _$GetNewOrderStateCopyWithImpl<$Res, $Val extends GetNewOrderState>
    implements $GetNewOrderStateCopyWith<$Res> {
  _$GetNewOrderStateCopyWithImpl(this._value, this._then);

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
    Object? orderList = null,
    Object? page = null,
    Object? maritalStatus = null,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
    Object? search = null,
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
              as GetOrderResponse?,
      orderList: null == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingPagination: null == loadingPagination
          ? _value.loadingPagination
          : loadingPagination // ignore: cast_nullable_to_non_nullable
              as bool,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetOrderResponseCopyWith<$Res>? get orderResponse {
    if (_value.orderResponse == null) {
      return null;
    }

    return $GetOrderResponseCopyWith<$Res>(_value.orderResponse!, (value) {
      return _then(_value.copyWith(orderResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetNewOrderStateCopyWith<$Res>
    implements $GetNewOrderStateCopyWith<$Res> {
  factory _$$_GetNewOrderStateCopyWith(
          _$_GetNewOrderState value, $Res Function(_$_GetNewOrderState) then) =
      __$$_GetNewOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      GetOrderResponse? orderResponse,
      List<OrderModel> orderList,
      int page,
      String maritalStatus,
      bool hasReachedMax,
      bool loadingPagination,
      String search});

  @override
  $GetOrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class __$$_GetNewOrderStateCopyWithImpl<$Res>
    extends _$GetNewOrderStateCopyWithImpl<$Res, _$_GetNewOrderState>
    implements _$$_GetNewOrderStateCopyWith<$Res> {
  __$$_GetNewOrderStateCopyWithImpl(
      _$_GetNewOrderState _value, $Res Function(_$_GetNewOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? orderResponse = freezed,
    Object? orderList = null,
    Object? page = null,
    Object? maritalStatus = null,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
    Object? search = null,
  }) {
    return _then(_$_GetNewOrderState(
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
              as GetOrderResponse?,
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingPagination: null == loadingPagination
          ? _value.loadingPagination
          : loadingPagination // ignore: cast_nullable_to_non_nullable
              as bool,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetNewOrderState implements _GetNewOrderState {
  const _$_GetNewOrderState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.orderResponse,
      final List<OrderModel> orderList = const [],
      this.page = 1,
      this.maritalStatus = "",
      this.hasReachedMax = false,
      this.loadingPagination = false,
      this.search = ""})
      : _orderList = orderList;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final GetOrderResponse? orderResponse;
  final List<OrderModel> _orderList;
  @override
  @JsonKey()
  List<OrderModel> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String maritalStatus;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool loadingPagination;
  @override
  @JsonKey()
  final String search;

  @override
  String toString() {
    return 'GetNewOrderState(status: $status, failure: $failure, orderResponse: $orderResponse, orderList: $orderList, page: $page, maritalStatus: $maritalStatus, hasReachedMax: $hasReachedMax, loadingPagination: $loadingPagination, search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNewOrderState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.orderResponse, orderResponse) ||
                other.orderResponse == orderResponse) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.loadingPagination, loadingPagination) ||
                other.loadingPagination == loadingPagination) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      orderResponse,
      const DeepCollectionEquality().hash(_orderList),
      page,
      maritalStatus,
      hasReachedMax,
      loadingPagination,
      search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNewOrderStateCopyWith<_$_GetNewOrderState> get copyWith =>
      __$$_GetNewOrderStateCopyWithImpl<_$_GetNewOrderState>(this, _$identity);
}

abstract class _GetNewOrderState implements GetNewOrderState {
  const factory _GetNewOrderState(
      {final Status status,
      final Failure failure,
      final GetOrderResponse? orderResponse,
      final List<OrderModel> orderList,
      final int page,
      final String maritalStatus,
      final bool hasReachedMax,
      final bool loadingPagination,
      final String search}) = _$_GetNewOrderState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  GetOrderResponse? get orderResponse;
  @override
  List<OrderModel> get orderList;
  @override
  int get page;
  @override
  String get maritalStatus;
  @override
  bool get hasReachedMax;
  @override
  bool get loadingPagination;
  @override
  String get search;
  @override
  @JsonKey(ignore: true)
  _$$_GetNewOrderStateCopyWith<_$_GetNewOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
