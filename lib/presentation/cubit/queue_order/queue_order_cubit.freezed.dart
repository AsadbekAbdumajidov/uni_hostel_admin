// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueueOrderState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  GetOrderResponse? get orderResponse => throw _privateConstructorUsedError;
  List<OrderModel> get orderList => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get loadingPagination => throw _privateConstructorUsedError;
  List<FacultiesModel> get facultiesResponse =>
      throw _privateConstructorUsedError;
  List<String> get facultiesList => throw _privateConstructorUsedError;
  String get courseIndex => throw _privateConstructorUsedError;
  FacultiesModel? get facultyIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueueOrderStateCopyWith<QueueOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueOrderStateCopyWith<$Res> {
  factory $QueueOrderStateCopyWith(
          QueueOrderState value, $Res Function(QueueOrderState) then) =
      _$QueueOrderStateCopyWithImpl<$Res, QueueOrderState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      GetOrderResponse? orderResponse,
      List<OrderModel> orderList,
      int page,
      String search,
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
class _$QueueOrderStateCopyWithImpl<$Res, $Val extends QueueOrderState>
    implements $QueueOrderStateCopyWith<$Res> {
  _$QueueOrderStateCopyWithImpl(this._value, this._then);

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
    Object? search = null,
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
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_QueueOrderStateCopyWith<$Res>
    implements $QueueOrderStateCopyWith<$Res> {
  factory _$$_QueueOrderStateCopyWith(
          _$_QueueOrderState value, $Res Function(_$_QueueOrderState) then) =
      __$$_QueueOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      GetOrderResponse? orderResponse,
      List<OrderModel> orderList,
      int page,
      String search,
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
class __$$_QueueOrderStateCopyWithImpl<$Res>
    extends _$QueueOrderStateCopyWithImpl<$Res, _$_QueueOrderState>
    implements _$$_QueueOrderStateCopyWith<$Res> {
  __$$_QueueOrderStateCopyWithImpl(
      _$_QueueOrderState _value, $Res Function(_$_QueueOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? orderResponse = freezed,
    Object? orderList = null,
    Object? page = null,
    Object? search = null,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
    Object? facultiesResponse = null,
    Object? facultiesList = null,
    Object? courseIndex = null,
    Object? facultyIndex = freezed,
  }) {
    return _then(_$_QueueOrderState(
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
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_QueueOrderState implements _QueueOrderState {
  const _$_QueueOrderState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.orderResponse,
      final List<OrderModel> orderList = const [],
      this.page = 1,
      this.search = "",
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
  final int page;
  @override
  @JsonKey()
  final String search;
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
    return 'QueueOrderState(status: $status, failure: $failure, orderResponse: $orderResponse, orderList: $orderList, page: $page, search: $search, hasReachedMax: $hasReachedMax, loadingPagination: $loadingPagination, facultiesResponse: $facultiesResponse, facultiesList: $facultiesList, courseIndex: $courseIndex, facultyIndex: $facultyIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueOrderState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.orderResponse, orderResponse) ||
                other.orderResponse == orderResponse) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.search, search) || other.search == search) &&
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
      page,
      search,
      hasReachedMax,
      loadingPagination,
      const DeepCollectionEquality().hash(_facultiesResponse),
      const DeepCollectionEquality().hash(_facultiesList),
      courseIndex,
      facultyIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueOrderStateCopyWith<_$_QueueOrderState> get copyWith =>
      __$$_QueueOrderStateCopyWithImpl<_$_QueueOrderState>(this, _$identity);
}

abstract class _QueueOrderState implements QueueOrderState {
  const factory _QueueOrderState(
      {final Status status,
      final Failure failure,
      final GetOrderResponse? orderResponse,
      final List<OrderModel> orderList,
      final int page,
      final String search,
      final bool hasReachedMax,
      final bool loadingPagination,
      final List<FacultiesModel> facultiesResponse,
      final List<String> facultiesList,
      final String courseIndex,
      final FacultiesModel? facultyIndex}) = _$_QueueOrderState;

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
  String get search;
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
  _$$_QueueOrderStateCopyWith<_$_QueueOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
