// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accepted_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AcceptedOrderState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  GetOrderResponse? get orderResponse => throw _privateConstructorUsedError;
  List<OrderModel> get orderList => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get loadingPagination => throw _privateConstructorUsedError;
  List<FacultiesModel> get facultiesResponse =>
      throw _privateConstructorUsedError;
  List<String> get facultiesList => throw _privateConstructorUsedError;
  String get courseIndex => throw _privateConstructorUsedError;
  FacultiesModel? get facultyIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcceptedOrderStateCopyWith<AcceptedOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptedOrderStateCopyWith<$Res> {
  factory $AcceptedOrderStateCopyWith(
          AcceptedOrderState value, $Res Function(AcceptedOrderState) then) =
      _$AcceptedOrderStateCopyWithImpl<$Res, AcceptedOrderState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      GetOrderResponse? orderResponse,
      List<OrderModel> orderList,
      String search,
      int page,
      bool hasReachedMax,
      bool loadingPagination,
      List<FacultiesModel> facultiesResponse,
      List<String> facultiesList,
      String courseIndex,
      FacultiesModel? facultyIndex});

  $GetOrderResponseCopyWith<$Res>? get orderResponse;
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
}

/// @nodoc
class _$AcceptedOrderStateCopyWithImpl<$Res, $Val extends AcceptedOrderState>
    implements $AcceptedOrderStateCopyWith<$Res> {
  _$AcceptedOrderStateCopyWithImpl(this._value, this._then);

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
    Object? search = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
    Object? facultiesResponse = null,
    Object? facultiesList = null,
    Object? courseIndex = null,
    Object? facultyIndex = freezed,
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
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
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
      facultiesResponse: null == facultiesResponse
          ? _value.facultiesResponse
          : facultiesResponse // ignore: cast_nullable_to_non_nullable
              as List<FacultiesModel>,
      facultiesList: null == facultiesList
          ? _value.facultiesList
          : facultiesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      courseIndex: null == courseIndex
          ? _value.courseIndex
          : courseIndex // ignore: cast_nullable_to_non_nullable
              as String,
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
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
abstract class _$$_AcceptedOrderStateCopyWith<$Res>
    implements $AcceptedOrderStateCopyWith<$Res> {
  factory _$$_AcceptedOrderStateCopyWith(_$_AcceptedOrderState value,
          $Res Function(_$_AcceptedOrderState) then) =
      __$$_AcceptedOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      GetOrderResponse? orderResponse,
      List<OrderModel> orderList,
      String search,
      int page,
      bool hasReachedMax,
      bool loadingPagination,
      List<FacultiesModel> facultiesResponse,
      List<String> facultiesList,
      String courseIndex,
      FacultiesModel? facultyIndex});

  @override
  $GetOrderResponseCopyWith<$Res>? get orderResponse;
  @override
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
}

/// @nodoc
class __$$_AcceptedOrderStateCopyWithImpl<$Res>
    extends _$AcceptedOrderStateCopyWithImpl<$Res, _$_AcceptedOrderState>
    implements _$$_AcceptedOrderStateCopyWith<$Res> {
  __$$_AcceptedOrderStateCopyWithImpl(
      _$_AcceptedOrderState _value, $Res Function(_$_AcceptedOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? orderResponse = freezed,
    Object? orderList = null,
    Object? search = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
    Object? facultiesResponse = null,
    Object? facultiesList = null,
    Object? courseIndex = null,
    Object? facultyIndex = freezed,
  }) {
    return _then(_$_AcceptedOrderState(
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
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
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
      facultiesResponse: null == facultiesResponse
          ? _value._facultiesResponse
          : facultiesResponse // ignore: cast_nullable_to_non_nullable
              as List<FacultiesModel>,
      facultiesList: null == facultiesList
          ? _value._facultiesList
          : facultiesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      courseIndex: null == courseIndex
          ? _value.courseIndex
          : courseIndex // ignore: cast_nullable_to_non_nullable
              as String,
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
    ));
  }
}

/// @nodoc

class _$_AcceptedOrderState implements _AcceptedOrderState {
  const _$_AcceptedOrderState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.orderResponse,
      final List<OrderModel> orderList = const [],
      this.search = "",
      this.page = 1,
      this.hasReachedMax = false,
      this.loadingPagination = false,
      final List<FacultiesModel> facultiesResponse = const [],
      final List<String> facultiesList = const [],
      this.courseIndex = "",
      this.facultyIndex})
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
  final String search;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool loadingPagination;
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
  @JsonKey()
  final String courseIndex;
  @override
  final FacultiesModel? facultyIndex;

  @override
  String toString() {
    return 'AcceptedOrderState(status: $status, failure: $failure, orderResponse: $orderResponse, orderList: $orderList, search: $search, page: $page, hasReachedMax: $hasReachedMax, loadingPagination: $loadingPagination, facultiesResponse: $facultiesResponse, facultiesList: $facultiesList, courseIndex: $courseIndex, facultyIndex: $facultyIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptedOrderState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.orderResponse, orderResponse) ||
                other.orderResponse == orderResponse) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.loadingPagination, loadingPagination) ||
                other.loadingPagination == loadingPagination) &&
            const DeepCollectionEquality()
                .equals(other._facultiesResponse, _facultiesResponse) &&
            const DeepCollectionEquality()
                .equals(other._facultiesList, _facultiesList) &&
            (identical(other.courseIndex, courseIndex) ||
                other.courseIndex == courseIndex) &&
            (identical(other.facultyIndex, facultyIndex) ||
                other.facultyIndex == facultyIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      orderResponse,
      const DeepCollectionEquality().hash(_orderList),
      search,
      page,
      hasReachedMax,
      loadingPagination,
      const DeepCollectionEquality().hash(_facultiesResponse),
      const DeepCollectionEquality().hash(_facultiesList),
      courseIndex,
      facultyIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptedOrderStateCopyWith<_$_AcceptedOrderState> get copyWith =>
      __$$_AcceptedOrderStateCopyWithImpl<_$_AcceptedOrderState>(
          this, _$identity);
}

abstract class _AcceptedOrderState implements AcceptedOrderState {
  const factory _AcceptedOrderState(
      {final Status status,
      final Failure failure,
      final GetOrderResponse? orderResponse,
      final List<OrderModel> orderList,
      final String search,
      final int page,
      final bool hasReachedMax,
      final bool loadingPagination,
      final List<FacultiesModel> facultiesResponse,
      final List<String> facultiesList,
      final String courseIndex,
      final FacultiesModel? facultyIndex}) = _$_AcceptedOrderState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  GetOrderResponse? get orderResponse;
  @override
  List<OrderModel> get orderList;
  @override
  String get search;
  @override
  int get page;
  @override
  bool get hasReachedMax;
  @override
  bool get loadingPagination;
  @override
  List<FacultiesModel> get facultiesResponse;
  @override
  List<String> get facultiesList;
  @override
  String get courseIndex;
  @override
  FacultiesModel? get facultyIndex;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptedOrderStateCopyWith<_$_AcceptedOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
