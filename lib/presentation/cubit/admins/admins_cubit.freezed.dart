// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admins_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminsState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<ProfileResponse?> get adminList => throw _privateConstructorUsedError;
  GetAdminsResponse? get response => throw _privateConstructorUsedError;
  ProfileResponse? get adminResponse => throw _privateConstructorUsedError;
  PlatformFile? get pickedImg => throw _privateConstructorUsedError;
  FacultiesModel? get facultyIndex => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminsStateCopyWith<AdminsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminsStateCopyWith<$Res> {
  factory $AdminsStateCopyWith(
          AdminsState value, $Res Function(AdminsState) then) =
      _$AdminsStateCopyWithImpl<$Res, AdminsState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      List<ProfileResponse?> adminList,
      GetAdminsResponse? response,
      ProfileResponse? adminResponse,
      PlatformFile? pickedImg,
      FacultiesModel? facultyIndex,
      String type});

  $GetAdminsResponseCopyWith<$Res>? get response;
  $ProfileResponseCopyWith<$Res>? get adminResponse;
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
}

/// @nodoc
class _$AdminsStateCopyWithImpl<$Res, $Val extends AdminsState>
    implements $AdminsStateCopyWith<$Res> {
  _$AdminsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? adminList = null,
    Object? response = freezed,
    Object? adminResponse = freezed,
    Object? pickedImg = freezed,
    Object? facultyIndex = freezed,
    Object? type = null,
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
      adminList: null == adminList
          ? _value.adminList
          : adminList // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse?>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as GetAdminsResponse?,
      adminResponse: freezed == adminResponse
          ? _value.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      pickedImg: freezed == pickedImg
          ? _value.pickedImg
          : pickedImg // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAdminsResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $GetAdminsResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileResponseCopyWith<$Res>? get adminResponse {
    if (_value.adminResponse == null) {
      return null;
    }

    return $ProfileResponseCopyWith<$Res>(_value.adminResponse!, (value) {
      return _then(_value.copyWith(adminResponse: value) as $Val);
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
abstract class _$$_AdminsStateCopyWith<$Res>
    implements $AdminsStateCopyWith<$Res> {
  factory _$$_AdminsStateCopyWith(
          _$_AdminsState value, $Res Function(_$_AdminsState) then) =
      __$$_AdminsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      List<ProfileResponse?> adminList,
      GetAdminsResponse? response,
      ProfileResponse? adminResponse,
      PlatformFile? pickedImg,
      FacultiesModel? facultyIndex,
      String type});

  @override
  $GetAdminsResponseCopyWith<$Res>? get response;
  @override
  $ProfileResponseCopyWith<$Res>? get adminResponse;
  @override
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
}

/// @nodoc
class __$$_AdminsStateCopyWithImpl<$Res>
    extends _$AdminsStateCopyWithImpl<$Res, _$_AdminsState>
    implements _$$_AdminsStateCopyWith<$Res> {
  __$$_AdminsStateCopyWithImpl(
      _$_AdminsState _value, $Res Function(_$_AdminsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? adminList = null,
    Object? response = freezed,
    Object? adminResponse = freezed,
    Object? pickedImg = freezed,
    Object? facultyIndex = freezed,
    Object? type = null,
  }) {
    return _then(_$_AdminsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      adminList: null == adminList
          ? _value._adminList
          : adminList // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse?>,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as GetAdminsResponse?,
      adminResponse: freezed == adminResponse
          ? _value.adminResponse
          : adminResponse // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      pickedImg: freezed == pickedImg
          ? _value.pickedImg
          : pickedImg // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      facultyIndex: freezed == facultyIndex
          ? _value.facultyIndex
          : facultyIndex // ignore: cast_nullable_to_non_nullable
              as FacultiesModel?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AdminsState implements _AdminsState {
  const _$_AdminsState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      final List<ProfileResponse?> adminList = const [],
      this.response,
      this.adminResponse,
      this.pickedImg,
      this.facultyIndex,
      this.type = ""})
      : _adminList = adminList;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  final List<ProfileResponse?> _adminList;
  @override
  @JsonKey()
  List<ProfileResponse?> get adminList {
    if (_adminList is EqualUnmodifiableListView) return _adminList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adminList);
  }

  @override
  final GetAdminsResponse? response;
  @override
  final ProfileResponse? adminResponse;
  @override
  final PlatformFile? pickedImg;
  @override
  final FacultiesModel? facultyIndex;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'AdminsState(status: $status, failure: $failure, adminList: $adminList, response: $response, adminResponse: $adminResponse, pickedImg: $pickedImg, facultyIndex: $facultyIndex, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._adminList, _adminList) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse) &&
            (identical(other.pickedImg, pickedImg) ||
                other.pickedImg == pickedImg) &&
            (identical(other.facultyIndex, facultyIndex) ||
                other.facultyIndex == facultyIndex) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      const DeepCollectionEquality().hash(_adminList),
      response,
      adminResponse,
      pickedImg,
      facultyIndex,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminsStateCopyWith<_$_AdminsState> get copyWith =>
      __$$_AdminsStateCopyWithImpl<_$_AdminsState>(this, _$identity);
}

abstract class _AdminsState implements AdminsState {
  const factory _AdminsState(
      {final Status status,
      final Failure failure,
      final List<ProfileResponse?> adminList,
      final GetAdminsResponse? response,
      final ProfileResponse? adminResponse,
      final PlatformFile? pickedImg,
      final FacultiesModel? facultyIndex,
      final String type}) = _$_AdminsState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  List<ProfileResponse?> get adminList;
  @override
  GetAdminsResponse? get response;
  @override
  ProfileResponse? get adminResponse;
  @override
  PlatformFile? get pickedImg;
  @override
  FacultiesModel? get facultyIndex;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_AdminsStateCopyWith<_$_AdminsState> get copyWith =>
      throw _privateConstructorUsedError;
}
