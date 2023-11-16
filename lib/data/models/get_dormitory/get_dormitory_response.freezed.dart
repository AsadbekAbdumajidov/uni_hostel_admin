// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_dormitory_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDormitoryResponse _$GetDormitoryResponseFromJson(Map<String, dynamic> json) {
  return _GetDormitoryResponse.fromJson(json);
}

/// @nodoc
mixin _$GetDormitoryResponse {
  @JsonKey(name: 'faculity__name')
  String? get faculityName => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get faculity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDormitoryResponseCopyWith<GetDormitoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDormitoryResponseCopyWith<$Res> {
  factory $GetDormitoryResponseCopyWith(GetDormitoryResponse value,
          $Res Function(GetDormitoryResponse) then) =
      _$GetDormitoryResponseCopyWithImpl<$Res, GetDormitoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'faculity__name') String? faculityName,
      int? id,
      String? image,
      String name,
      String description,
      int? faculity});
}

/// @nodoc
class _$GetDormitoryResponseCopyWithImpl<$Res,
        $Val extends GetDormitoryResponse>
    implements $GetDormitoryResponseCopyWith<$Res> {
  _$GetDormitoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculityName = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = null,
    Object? description = null,
    Object? faculity = freezed,
  }) {
    return _then(_value.copyWith(
      faculityName: freezed == faculityName
          ? _value.faculityName
          : faculityName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      faculity: freezed == faculity
          ? _value.faculity
          : faculity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDormitoryResponseCopyWith<$Res>
    implements $GetDormitoryResponseCopyWith<$Res> {
  factory _$$_GetDormitoryResponseCopyWith(_$_GetDormitoryResponse value,
          $Res Function(_$_GetDormitoryResponse) then) =
      __$$_GetDormitoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'faculity__name') String? faculityName,
      int? id,
      String? image,
      String name,
      String description,
      int? faculity});
}

/// @nodoc
class __$$_GetDormitoryResponseCopyWithImpl<$Res>
    extends _$GetDormitoryResponseCopyWithImpl<$Res, _$_GetDormitoryResponse>
    implements _$$_GetDormitoryResponseCopyWith<$Res> {
  __$$_GetDormitoryResponseCopyWithImpl(_$_GetDormitoryResponse _value,
      $Res Function(_$_GetDormitoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faculityName = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = null,
    Object? description = null,
    Object? faculity = freezed,
  }) {
    return _then(_$_GetDormitoryResponse(
      faculityName: freezed == faculityName
          ? _value.faculityName
          : faculityName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      faculity: freezed == faculity
          ? _value.faculity
          : faculity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDormitoryResponse implements _GetDormitoryResponse {
  const _$_GetDormitoryResponse(
      {@JsonKey(name: 'faculity__name') this.faculityName,
      this.id,
      this.image,
      required this.name,
      required this.description,
      this.faculity});

  factory _$_GetDormitoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetDormitoryResponseFromJson(json);

  @override
  @JsonKey(name: 'faculity__name')
  final String? faculityName;
  @override
  final int? id;
  @override
  final String? image;
  @override
  final String name;
  @override
  final String description;
  @override
  final int? faculity;

  @override
  String toString() {
    return 'GetDormitoryResponse(faculityName: $faculityName, id: $id, image: $image, name: $name, description: $description, faculity: $faculity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDormitoryResponse &&
            (identical(other.faculityName, faculityName) ||
                other.faculityName == faculityName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.faculity, faculity) ||
                other.faculity == faculity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, faculityName, id, image, name, description, faculity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDormitoryResponseCopyWith<_$_GetDormitoryResponse> get copyWith =>
      __$$_GetDormitoryResponseCopyWithImpl<_$_GetDormitoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDormitoryResponseToJson(
      this,
    );
  }
}

abstract class _GetDormitoryResponse implements GetDormitoryResponse {
  const factory _GetDormitoryResponse(
      {@JsonKey(name: 'faculity__name') final String? faculityName,
      final int? id,
      final String? image,
      required final String name,
      required final String description,
      final int? faculity}) = _$_GetDormitoryResponse;

  factory _GetDormitoryResponse.fromJson(Map<String, dynamic> json) =
      _$_GetDormitoryResponse.fromJson;

  @override
  @JsonKey(name: 'faculity__name')
  String? get faculityName;
  @override
  int? get id;
  @override
  String? get image;
  @override
  String get name;
  @override
  String get description;
  @override
  int? get faculity;
  @override
  @JsonKey(ignore: true)
  _$$_GetDormitoryResponseCopyWith<_$_GetDormitoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
