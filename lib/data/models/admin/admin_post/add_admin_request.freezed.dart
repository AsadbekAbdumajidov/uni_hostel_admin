// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_admin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddAdminRequest _$AddAdminRequestFromJson(Map<String, dynamic> json) {
  return _AddAdminRequest.fromJson(json);
}

/// @nodoc
mixin _$AddAdminRequest {
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_region')
  String? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'faculty_admin')
  int? get facultyAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAdminRequestCopyWith<AddAdminRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAdminRequestCopyWith<$Res> {
  factory $AddAdminRequestCopyWith(
          AddAdminRequest value, $Res Function(AddAdminRequest) then) =
      _$AddAdminRequestCopyWithImpl<$Res, AddAdminRequest>;
  @useResult
  $Res call(
      {String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'admin_region') String? region,
      @JsonKey(name: 'user_type') String? type,
      @JsonKey(name: 'faculty_admin') int? facultyAdmin});
}

/// @nodoc
class _$AddAdminRequestCopyWithImpl<$Res, $Val extends AddAdminRequest>
    implements $AddAdminRequestCopyWith<$Res> {
  _$AddAdminRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? region = freezed,
    Object? type = freezed,
    Object? facultyAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      facultyAdmin: freezed == facultyAdmin
          ? _value.facultyAdmin
          : facultyAdmin // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAdminRequestImplCopyWith<$Res>
    implements $AddAdminRequestCopyWith<$Res> {
  factory _$$AddAdminRequestImplCopyWith(_$AddAdminRequestImpl value,
          $Res Function(_$AddAdminRequestImpl) then) =
      __$$AddAdminRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'admin_region') String? region,
      @JsonKey(name: 'user_type') String? type,
      @JsonKey(name: 'faculty_admin') int? facultyAdmin});
}

/// @nodoc
class __$$AddAdminRequestImplCopyWithImpl<$Res>
    extends _$AddAdminRequestCopyWithImpl<$Res, _$AddAdminRequestImpl>
    implements _$$AddAdminRequestImplCopyWith<$Res> {
  __$$AddAdminRequestImplCopyWithImpl(
      _$AddAdminRequestImpl _value, $Res Function(_$AddAdminRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? region = freezed,
    Object? type = freezed,
    Object? facultyAdmin = freezed,
  }) {
    return _then(_$AddAdminRequestImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      facultyAdmin: freezed == facultyAdmin
          ? _value.facultyAdmin
          : facultyAdmin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAdminRequestImpl implements _AddAdminRequest {
  const _$AddAdminRequestImpl(
      {this.username,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'admin_region') this.region,
      @JsonKey(name: 'user_type') this.type,
      @JsonKey(name: 'faculty_admin') this.facultyAdmin});

  factory _$AddAdminRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAdminRequestImplFromJson(json);

  @override
  final String? username;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'admin_region')
  final String? region;
  @override
  @JsonKey(name: 'user_type')
  final String? type;
  @override
  @JsonKey(name: 'faculty_admin')
  final int? facultyAdmin;

  @override
  String toString() {
    return 'AddAdminRequest(username: $username, firstName: $firstName, lastName: $lastName, region: $region, type: $type, facultyAdmin: $facultyAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAdminRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.facultyAdmin, facultyAdmin) ||
                other.facultyAdmin == facultyAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, firstName, lastName, region, type, facultyAdmin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAdminRequestImplCopyWith<_$AddAdminRequestImpl> get copyWith =>
      __$$AddAdminRequestImplCopyWithImpl<_$AddAdminRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAdminRequestImplToJson(
      this,
    );
  }
}

abstract class _AddAdminRequest implements AddAdminRequest {
  const factory _AddAdminRequest(
          {final String? username,
          @JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'admin_region') final String? region,
          @JsonKey(name: 'user_type') final String? type,
          @JsonKey(name: 'faculty_admin') final int? facultyAdmin}) =
      _$AddAdminRequestImpl;

  factory _AddAdminRequest.fromJson(Map<String, dynamic> json) =
      _$AddAdminRequestImpl.fromJson;

  @override
  String? get username;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'admin_region')
  String? get region;
  @override
  @JsonKey(name: 'user_type')
  String? get type;
  @override
  @JsonKey(name: 'faculty_admin')
  int? get facultyAdmin;
  @override
  @JsonKey(ignore: true)
  _$$AddAdminRequestImplCopyWith<_$AddAdminRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
