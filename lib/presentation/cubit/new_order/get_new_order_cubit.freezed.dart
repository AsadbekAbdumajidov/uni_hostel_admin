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
  List<FacultiesModel> get facultiesResponse =>
      throw _privateConstructorUsedError;
  List<String> get facultiesList => throw _privateConstructorUsedError;
  FacultiesModel? get facultyIndex => throw _privateConstructorUsedError;
  String? get courseIndex => throw _privateConstructorUsedError;
  String? get ordersList => throw _privateConstructorUsedError;

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
      String search,
      List<FacultiesModel> facultiesResponse,
      List<String> facultiesList,
      FacultiesModel? facultyIndex,
      String? courseIndex,
      String? ordersList});

  $GetOrderResponseCopyWith<$Res>? get orderResponse;
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
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
    Object? facultiesResponse = null,
    Object? facultiesList = null,
    Object? facultyIndex = freezed,
    Object? courseIndex = freezed,
    Object? ordersList = freezed,
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
      facultiesResponse: null == facultiesResponse
          ? _value.facultiesResponse
          : facultiesResponse // ignore: cast_nullable_to_non_nullable
              as List<FacultiesModel>,
      facultiesList: null == facultiesList
          ? _value.facultiesList
          : facultiesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
      courseIndex: freezed == courseIndex
          ? _value.courseIndex
          : courseIndex // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersList: freezed == ordersList
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $FacultiesModelCopyWith<$Res>? get facultyIndex {
    if (_value.facultyIndex == null) {
      return null;
    }

    return $FacultiesModelCopyWith<$Res>(_value.facultyIndex!, (value) {
      return _then(_value.copyWith(facultyIndex: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetNewOrderStateImplCopyWith<$Res>
    implements $GetNewOrderStateCopyWith<$Res> {
  factory _$$GetNewOrderStateImplCopyWith(_$GetNewOrderStateImpl value,
          $Res Function(_$GetNewOrderStateImpl) then) =
      __$$GetNewOrderStateImplCopyWithImpl<$Res>;
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
      String search,
      List<FacultiesModel> facultiesResponse,
      List<String> facultiesList,
      FacultiesModel? facultyIndex,
      String? courseIndex,
      String? ordersList});

  @override
  $GetOrderResponseCopyWith<$Res>? get orderResponse;
  @override
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
}

/// @nodoc
class __$$GetNewOrderStateImplCopyWithImpl<$Res>
    extends _$GetNewOrderStateCopyWithImpl<$Res, _$GetNewOrderStateImpl>
    implements _$$GetNewOrderStateImplCopyWith<$Res> {
  __$$GetNewOrderStateImplCopyWithImpl(_$GetNewOrderStateImpl _value,
      $Res Function(_$GetNewOrderStateImpl) _then)
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
    Object? facultiesResponse = null,
    Object? facultiesList = null,
    Object? facultyIndex = freezed,
    Object? courseIndex = freezed,
    Object? ordersList = freezed,
  }) {
    return _then(_$GetNewOrderStateImpl(
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
      facultiesResponse: null == facultiesResponse
          ? _value._facultiesResponse
          : facultiesResponse // ignore: cast_nullable_to_non_nullable
              as List<FacultiesModel>,
      facultiesList: null == facultiesList
          ? _value._facultiesList
          : facultiesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
      courseIndex: freezed == courseIndex
          ? _value.courseIndex
          : courseIndex // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersList: freezed == ordersList
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetNewOrderStateImpl implements _GetNewOrderState {
  const _$GetNewOrderStateImpl(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.orderResponse,
      final List<OrderModel> orderList = const [],
      this.page = 1,
      this.maritalStatus = "",
      this.hasReachedMax = false,
      this.loadingPagination = false,
      this.search = "",
      final List<FacultiesModel> facultiesResponse = const [],
      final List<String> facultiesList = const [],
      this.facultyIndex,
      this.courseIndex = null,
      this.ordersList = ""})
      : _orderList = orderList,
        _facultiesResponse = facultiesResponse,
        _facultiesList = facultiesList;

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
  final List<FacultiesModel> _facultiesResponse;
  @override
  @JsonKey()
  List<FacultiesModel> get facultiesResponse {
    if (_facultiesResponse is EqualUnmodifiableListView)
      return _facultiesResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facultiesResponse);
  }

  final List<String> _facultiesList;
  @override
  @JsonKey()
  List<String> get facultiesList {
    if (_facultiesList is EqualUnmodifiableListView) return _facultiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facultiesList);
  }

  @override
  final FacultiesModel? facultyIndex;
  @override
  @JsonKey()
  final String? courseIndex;
  @override
  @JsonKey()
  final String? ordersList;

  @override
  String toString() {
    return 'GetNewOrderState(status: $status, failure: $failure, orderResponse: $orderResponse, orderList: $orderList, page: $page, maritalStatus: $maritalStatus, hasReachedMax: $hasReachedMax, loadingPagination: $loadingPagination, search: $search, facultiesResponse: $facultiesResponse, facultiesList: $facultiesList, facultyIndex: $facultyIndex, courseIndex: $courseIndex, ordersList: $ordersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewOrderStateImpl &&
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
            (identical(other.search, search) || other.search == search) &&
            const DeepCollectionEquality()
                .equals(other._facultiesResponse, _facultiesResponse) &&
            const DeepCollectionEquality()
                .equals(other._facultiesList, _facultiesList) &&
            (identical(other.facultyIndex, facultyIndex) ||
                other.facultyIndex == facultyIndex) &&
            (identical(other.courseIndex, courseIndex) ||
                other.courseIndex == courseIndex) &&
            (identical(other.ordersList, ordersList) ||
                other.ordersList == ordersList));
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
      search,
      const DeepCollectionEquality().hash(_facultiesResponse),
      const DeepCollectionEquality().hash(_facultiesList),
      facultyIndex,
      courseIndex,
      ordersList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewOrderStateImplCopyWith<_$GetNewOrderStateImpl> get copyWith =>
      __$$GetNewOrderStateImplCopyWithImpl<_$GetNewOrderStateImpl>(
          this, _$identity);
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
      final String search,
      final List<FacultiesModel> facultiesResponse,
      final List<String> facultiesList,
      final FacultiesModel? facultyIndex,
      final String? courseIndex,
      final String? ordersList}) = _$GetNewOrderStateImpl;

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
  List<FacultiesModel> get facultiesResponse;
  @override
  List<String> get facultiesList;
  @override
  FacultiesModel? get facultyIndex;
  @override
  String? get courseIndex;
  @override
  String? get ordersList;
  @override
  @JsonKey(ignore: true)
  _$$GetNewOrderStateImplCopyWith<_$GetNewOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
