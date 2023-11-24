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
  List<GetDormitoryResponse> get responseDormitories =>
      throw _privateConstructorUsedError;
  List<String> get dormitoryList => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  String get dormitoryIndex => throw _privateConstructorUsedError;
  int? get dormitoryId => throw _privateConstructorUsedError;
  String? get paymentList => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get loadingPagination => throw _privateConstructorUsedError;
  List<FacultiesModel> get facultiesResponse =>
      throw _privateConstructorUsedError;
  List<String> get facultiesList => throw _privateConstructorUsedError;
  FacultiesModel? get facultyIndex => throw _privateConstructorUsedError;
  String get maritalStatus => throw _privateConstructorUsedError;

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
      List<GetDormitoryResponse> responseDormitories,
      List<String> dormitoryList,
      int page,
      String search,
      String dormitoryIndex,
      int? dormitoryId,
      String? paymentList,
      bool hasReachedMax,
      bool loadingPagination,
      List<FacultiesModel> facultiesResponse,
      List<String> facultiesList,
      FacultiesModel? facultyIndex,
      String maritalStatus});

  $PaymentMonitoringResponseCopyWith<$Res>? get response;
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
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
    Object? responseDormitories = null,
    Object? dormitoryList = null,
    Object? page = null,
    Object? search = null,
    Object? dormitoryIndex = null,
    Object? dormitoryId = freezed,
    Object? paymentList = freezed,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
    Object? facultiesResponse = null,
    Object? facultiesList = null,
    Object? facultyIndex = freezed,
    Object? maritalStatus = null,
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
      responseDormitories: null == responseDormitories
          ? _value.responseDormitories
          : responseDormitories // ignore: cast_nullable_to_non_nullable
              as List<GetDormitoryResponse>,
      dormitoryList: null == dormitoryList
          ? _value.dormitoryList
          : dormitoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      dormitoryIndex: null == dormitoryIndex
          ? _value.dormitoryIndex
          : dormitoryIndex // ignore: cast_nullable_to_non_nullable
              as String,
      dormitoryId: freezed == dormitoryId
          ? _value.dormitoryId
          : dormitoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentList: freezed == paymentList
          ? _value.paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as String?,
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
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
      List<GetDormitoryResponse> responseDormitories,
      List<String> dormitoryList,
      int page,
      String search,
      String dormitoryIndex,
      int? dormitoryId,
      String? paymentList,
      bool hasReachedMax,
      bool loadingPagination,
      List<FacultiesModel> facultiesResponse,
      List<String> facultiesList,
      FacultiesModel? facultyIndex,
      String maritalStatus});

  @override
  $PaymentMonitoringResponseCopyWith<$Res>? get response;
  @override
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
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
    Object? responseDormitories = null,
    Object? dormitoryList = null,
    Object? page = null,
    Object? search = null,
    Object? dormitoryIndex = null,
    Object? dormitoryId = freezed,
    Object? paymentList = freezed,
    Object? hasReachedMax = null,
    Object? loadingPagination = null,
    Object? facultiesResponse = null,
    Object? facultiesList = null,
    Object? facultyIndex = freezed,
    Object? maritalStatus = null,
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
      responseDormitories: null == responseDormitories
          ? _value._responseDormitories
          : responseDormitories // ignore: cast_nullable_to_non_nullable
              as List<GetDormitoryResponse>,
      dormitoryList: null == dormitoryList
          ? _value._dormitoryList
          : dormitoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      dormitoryIndex: null == dormitoryIndex
          ? _value.dormitoryIndex
          : dormitoryIndex // ignore: cast_nullable_to_non_nullable
              as String,
      dormitoryId: freezed == dormitoryId
          ? _value.dormitoryId
          : dormitoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentList: freezed == paymentList
          ? _value.paymentList
          : paymentList // ignore: cast_nullable_to_non_nullable
              as String?,
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
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
      final List<GetDormitoryResponse> responseDormitories = const [],
      final List<String> dormitoryList = const [],
      this.page = 1,
      this.search = "",
      this.dormitoryIndex = "",
      this.dormitoryId,
      this.paymentList = "",
      this.hasReachedMax = false,
      this.loadingPagination = false,
      final List<FacultiesModel> facultiesResponse = const [],
      final List<String> facultiesList = const [],
      this.facultyIndex,
      this.maritalStatus = ""})
      : _whoPaidList = whoPaidList,
        _responseDormitories = responseDormitories,
        _dormitoryList = dormitoryList,
        _facultiesResponse = facultiesResponse,
        _facultiesList = facultiesList;

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

  final List<GetDormitoryResponse> _responseDormitories;
  @override
  @JsonKey()
  List<GetDormitoryResponse> get responseDormitories {
    if (_responseDormitories is EqualUnmodifiableListView)
      return _responseDormitories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responseDormitories);
  }

  final List<String> _dormitoryList;
  @override
  @JsonKey()
  List<String> get dormitoryList {
    if (_dormitoryList is EqualUnmodifiableListView) return _dormitoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dormitoryList);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String search;
  @override
  @JsonKey()
  final String dormitoryIndex;
  @override
  final int? dormitoryId;
  @override
  @JsonKey()
  final String? paymentList;
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
  final FacultiesModel? facultyIndex;
  @override
  @JsonKey()
  final String maritalStatus;

  @override
  String toString() {
    return 'PaymentsState(status: $status, failure: $failure, response: $response, whoPaidList: $whoPaidList, responseDormitories: $responseDormitories, dormitoryList: $dormitoryList, page: $page, search: $search, dormitoryIndex: $dormitoryIndex, dormitoryId: $dormitoryId, paymentList: $paymentList, hasReachedMax: $hasReachedMax, loadingPagination: $loadingPagination, facultiesResponse: $facultiesResponse, facultiesList: $facultiesList, facultyIndex: $facultyIndex, maritalStatus: $maritalStatus)';
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
            const DeepCollectionEquality()
                .equals(other._responseDormitories, _responseDormitories) &&
            const DeepCollectionEquality()
                .equals(other._dormitoryList, _dormitoryList) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.dormitoryIndex, dormitoryIndex) ||
                other.dormitoryIndex == dormitoryIndex) &&
            (identical(other.dormitoryId, dormitoryId) ||
                other.dormitoryId == dormitoryId) &&
            (identical(other.paymentList, paymentList) ||
                other.paymentList == paymentList) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.loadingPagination, loadingPagination) ||
                other.loadingPagination == loadingPagination) &&
            const DeepCollectionEquality()
                .equals(other._facultiesResponse, _facultiesResponse) &&
            const DeepCollectionEquality()
                .equals(other._facultiesList, _facultiesList) &&
            (identical(other.facultyIndex, facultyIndex) ||
                other.facultyIndex == facultyIndex) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      response,
      const DeepCollectionEquality().hash(_whoPaidList),
      const DeepCollectionEquality().hash(_responseDormitories),
      const DeepCollectionEquality().hash(_dormitoryList),
      page,
      search,
      dormitoryIndex,
      dormitoryId,
      paymentList,
      hasReachedMax,
      loadingPagination,
      const DeepCollectionEquality().hash(_facultiesResponse),
      const DeepCollectionEquality().hash(_facultiesList),
      facultyIndex,
      maritalStatus);

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
      final List<GetDormitoryResponse> responseDormitories,
      final List<String> dormitoryList,
      final int page,
      final String search,
      final String dormitoryIndex,
      final int? dormitoryId,
      final String? paymentList,
      final bool hasReachedMax,
      final bool loadingPagination,
      final List<FacultiesModel> facultiesResponse,
      final List<String> facultiesList,
      final FacultiesModel? facultyIndex,
      final String maritalStatus}) = _$_PaymentsState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  PaymentMonitoringResponse? get response;
  @override
  List<PaymentsWhoPaidModel> get whoPaidList;
  @override
  List<GetDormitoryResponse> get responseDormitories;
  @override
  List<String> get dormitoryList;
  @override
  int get page;
  @override
  String get search;
  @override
  String get dormitoryIndex;
  @override
  int? get dormitoryId;
  @override
  String? get paymentList;
  @override
  bool get hasReachedMax;
  @override
  bool get loadingPagination;
  @override
  List<FacultiesModel> get facultiesResponse;
  @override
  List<String> get facultiesList;
  @override
  FacultiesModel? get facultyIndex;
  @override
  String get maritalStatus;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentsStateCopyWith<_$_PaymentsState> get copyWith =>
      throw _privateConstructorUsedError;
}
