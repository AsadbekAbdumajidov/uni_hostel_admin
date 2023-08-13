// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_faculties_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetFacultiesResponse _$GetFacultiesResponseFromJson(Map<String, dynamic> json) {
  return _GetFacultiesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetFacultiesResponse {
  List<FacultiesModel>? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFacultiesResponseCopyWith<GetFacultiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFacultiesResponseCopyWith<$Res> {
  factory $GetFacultiesResponseCopyWith(GetFacultiesResponse value,
          $Res Function(GetFacultiesResponse) then) =
      _$GetFacultiesResponseCopyWithImpl<$Res, GetFacultiesResponse>;
  @useResult
  $Res call({List<FacultiesModel>? response});
}

/// @nodoc
class _$GetFacultiesResponseCopyWithImpl<$Res,
        $Val extends GetFacultiesResponse>
    implements $GetFacultiesResponseCopyWith<$Res> {
  _$GetFacultiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<FacultiesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetFacultiesResponseCopyWith<$Res>
    implements $GetFacultiesResponseCopyWith<$Res> {
  factory _$$_GetFacultiesResponseCopyWith(_$_GetFacultiesResponse value,
          $Res Function(_$_GetFacultiesResponse) then) =
      __$$_GetFacultiesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FacultiesModel>? response});
}

/// @nodoc
class __$$_GetFacultiesResponseCopyWithImpl<$Res>
    extends _$GetFacultiesResponseCopyWithImpl<$Res, _$_GetFacultiesResponse>
    implements _$$_GetFacultiesResponseCopyWith<$Res> {
  __$$_GetFacultiesResponseCopyWithImpl(_$_GetFacultiesResponse _value,
      $Res Function(_$_GetFacultiesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_GetFacultiesResponse(
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<FacultiesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFacultiesResponse implements _GetFacultiesResponse {
  const _$_GetFacultiesResponse({final List<FacultiesModel>? response})
      : _response = response;

  factory _$_GetFacultiesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetFacultiesResponseFromJson(json);

  final List<FacultiesModel>? _response;
  @override
  List<FacultiesModel>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetFacultiesResponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFacultiesResponse &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFacultiesResponseCopyWith<_$_GetFacultiesResponse> get copyWith =>
      __$$_GetFacultiesResponseCopyWithImpl<_$_GetFacultiesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFacultiesResponseToJson(
      this,
    );
  }
}

abstract class _GetFacultiesResponse implements GetFacultiesResponse {
  const factory _GetFacultiesResponse({final List<FacultiesModel>? response}) =
      _$_GetFacultiesResponse;

  factory _GetFacultiesResponse.fromJson(Map<String, dynamic> json) =
      _$_GetFacultiesResponse.fromJson;

  @override
  List<FacultiesModel>? get response;
  @override
  @JsonKey(ignore: true)
  _$$_GetFacultiesResponseCopyWith<_$_GetFacultiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FacultiesModel _$FacultiesModelFromJson(Map<String, dynamic> json) {
  return _FacultiesModel.fromJson(json);
}

/// @nodoc
mixin _$FacultiesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacultiesModelCopyWith<FacultiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacultiesModelCopyWith<$Res> {
  factory $FacultiesModelCopyWith(
          FacultiesModel value, $Res Function(FacultiesModel) then) =
      _$FacultiesModelCopyWithImpl<$Res, FacultiesModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$FacultiesModelCopyWithImpl<$Res, $Val extends FacultiesModel>
    implements $FacultiesModelCopyWith<$Res> {
  _$FacultiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FacultiesModelCopyWith<$Res>
    implements $FacultiesModelCopyWith<$Res> {
  factory _$$_FacultiesModelCopyWith(
          _$_FacultiesModel value, $Res Function(_$_FacultiesModel) then) =
      __$$_FacultiesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_FacultiesModelCopyWithImpl<$Res>
    extends _$FacultiesModelCopyWithImpl<$Res, _$_FacultiesModel>
    implements _$$_FacultiesModelCopyWith<$Res> {
  __$$_FacultiesModelCopyWithImpl(
      _$_FacultiesModel _value, $Res Function(_$_FacultiesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_FacultiesModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FacultiesModel implements _FacultiesModel {
  const _$_FacultiesModel({this.id, this.name});

  factory _$_FacultiesModel.fromJson(Map<String, dynamic> json) =>
      _$$_FacultiesModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'FacultiesModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacultiesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacultiesModelCopyWith<_$_FacultiesModel> get copyWith =>
      __$$_FacultiesModelCopyWithImpl<_$_FacultiesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FacultiesModelToJson(
      this,
    );
  }
}

abstract class _FacultiesModel implements FacultiesModel {
  const factory _FacultiesModel({final int? id, final String? name}) =
      _$_FacultiesModel;

  factory _FacultiesModel.fromJson(Map<String, dynamic> json) =
      _$_FacultiesModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_FacultiesModelCopyWith<_$_FacultiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
