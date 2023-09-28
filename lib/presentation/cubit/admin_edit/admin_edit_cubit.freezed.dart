// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminEditState {
  Status get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  ProfileResponse? get adminResponse => throw _privateConstructorUsedError;
  PlatformFile? get pickedImg => throw _privateConstructorUsedError;
  FacultiesModel? get facultyIndex => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminEditStateCopyWith<AdminEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEditStateCopyWith<$Res> {
  factory $AdminEditStateCopyWith(
          AdminEditState value, $Res Function(AdminEditState) then) =
      _$AdminEditStateCopyWithImpl<$Res, AdminEditState>;
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      ProfileResponse? adminResponse,
      PlatformFile? pickedImg,
      FacultiesModel? facultyIndex,
      String? file,
      String? type});

  $ProfileResponseCopyWith<$Res>? get adminResponse;
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
}

/// @nodoc
class _$AdminEditStateCopyWithImpl<$Res, $Val extends AdminEditState>
    implements $AdminEditStateCopyWith<$Res> {
  _$AdminEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? adminResponse = freezed,
    Object? pickedImg = freezed,
    Object? facultyIndex = freezed,
    Object? file = freezed,
    Object? type = freezed,
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
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
abstract class _$$_AdminEditStateCopyWith<$Res>
    implements $AdminEditStateCopyWith<$Res> {
  factory _$$_AdminEditStateCopyWith(
          _$_AdminEditState value, $Res Function(_$_AdminEditState) then) =
      __$$_AdminEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Failure failure,
      ProfileResponse? adminResponse,
      PlatformFile? pickedImg,
      FacultiesModel? facultyIndex,
      String? file,
      String? type});

  @override
  $ProfileResponseCopyWith<$Res>? get adminResponse;
  @override
  $FacultiesModelCopyWith<$Res>? get facultyIndex;
}

/// @nodoc
class __$$_AdminEditStateCopyWithImpl<$Res>
    extends _$AdminEditStateCopyWithImpl<$Res, _$_AdminEditState>
    implements _$$_AdminEditStateCopyWith<$Res> {
  __$$_AdminEditStateCopyWithImpl(
      _$_AdminEditState _value, $Res Function(_$_AdminEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? adminResponse = freezed,
    Object? pickedImg = freezed,
    Object? facultyIndex = freezed,
    Object? file = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_AdminEditState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
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
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AdminEditState implements _AdminEditState {
  const _$_AdminEditState(
      {this.status = Status.UNKNOWN,
      this.failure = const UnknownFailure(),
      this.adminResponse,
      this.pickedImg,
      this.facultyIndex,
      this.file,
      this.type});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final ProfileResponse? adminResponse;
  @override
  final PlatformFile? pickedImg;
  @override
  final FacultiesModel? facultyIndex;
  @override
  final String? file;
  @override
  final String? type;

  @override
  String toString() {
    return 'AdminEditState(status: $status, failure: $failure, adminResponse: $adminResponse, pickedImg: $pickedImg, facultyIndex: $facultyIndex, file: $file, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminEditState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse) &&
            (identical(other.pickedImg, pickedImg) ||
                other.pickedImg == pickedImg) &&
            (identical(other.facultyIndex, facultyIndex) ||
                other.facultyIndex == facultyIndex) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, failure, adminResponse,
      pickedImg, facultyIndex, file, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminEditStateCopyWith<_$_AdminEditState> get copyWith =>
      __$$_AdminEditStateCopyWithImpl<_$_AdminEditState>(this, _$identity);
}

abstract class _AdminEditState implements AdminEditState {
  const factory _AdminEditState(
      {final Status status,
      final Failure failure,
      final ProfileResponse? adminResponse,
      final PlatformFile? pickedImg,
      final FacultiesModel? facultyIndex,
      final String? file,
      final String? type}) = _$_AdminEditState;

  @override
  Status get status;
  @override
  Failure get failure;
  @override
  ProfileResponse? get adminResponse;
  @override
  PlatformFile? get pickedImg;
  @override
  FacultiesModel? get facultyIndex;
  @override
  String? get file;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_AdminEditStateCopyWith<_$_AdminEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
