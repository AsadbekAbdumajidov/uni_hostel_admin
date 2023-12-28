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
abstract class _$$GetFacultiesResponseImplCopyWith<$Res>
    implements $GetFacultiesResponseCopyWith<$Res> {
  factory _$$GetFacultiesResponseImplCopyWith(_$GetFacultiesResponseImpl value,
          $Res Function(_$GetFacultiesResponseImpl) then) =
      __$$GetFacultiesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FacultiesModel>? response});
}

/// @nodoc
class __$$GetFacultiesResponseImplCopyWithImpl<$Res>
    extends _$GetFacultiesResponseCopyWithImpl<$Res, _$GetFacultiesResponseImpl>
    implements _$$GetFacultiesResponseImplCopyWith<$Res> {
  __$$GetFacultiesResponseImplCopyWithImpl(_$GetFacultiesResponseImpl _value,
      $Res Function(_$GetFacultiesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$GetFacultiesResponseImpl(
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<FacultiesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFacultiesResponseImpl implements _GetFacultiesResponse {
  const _$GetFacultiesResponseImpl({final List<FacultiesModel>? response})
      : _response = response;

  factory _$GetFacultiesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFacultiesResponseImplFromJson(json);

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
            other is _$GetFacultiesResponseImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFacultiesResponseImplCopyWith<_$GetFacultiesResponseImpl>
      get copyWith =>
          __$$GetFacultiesResponseImplCopyWithImpl<_$GetFacultiesResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFacultiesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetFacultiesResponse implements GetFacultiesResponse {
  const factory _GetFacultiesResponse({final List<FacultiesModel>? response}) =
      _$GetFacultiesResponseImpl;

  factory _GetFacultiesResponse.fromJson(Map<String, dynamic> json) =
      _$GetFacultiesResponseImpl.fromJson;

  @override
  List<FacultiesModel>? get response;
  @override
  @JsonKey(ignore: true)
  _$$GetFacultiesResponseImplCopyWith<_$GetFacultiesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$FacultiesModelImplCopyWith<$Res>
    implements $FacultiesModelCopyWith<$Res> {
  factory _$$FacultiesModelImplCopyWith(_$FacultiesModelImpl value,
          $Res Function(_$FacultiesModelImpl) then) =
      __$$FacultiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$FacultiesModelImplCopyWithImpl<$Res>
    extends _$FacultiesModelCopyWithImpl<$Res, _$FacultiesModelImpl>
    implements _$$FacultiesModelImplCopyWith<$Res> {
  __$$FacultiesModelImplCopyWithImpl(
      _$FacultiesModelImpl _value, $Res Function(_$FacultiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FacultiesModelImpl(
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
class _$FacultiesModelImpl implements _FacultiesModel {
  const _$FacultiesModelImpl({this.id, this.name});

  factory _$FacultiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacultiesModelImplFromJson(json);

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
            other is _$FacultiesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacultiesModelImplCopyWith<_$FacultiesModelImpl> get copyWith =>
      __$$FacultiesModelImplCopyWithImpl<_$FacultiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacultiesModelImplToJson(
      this,
    );
  }
}

abstract class _FacultiesModel implements FacultiesModel {
  const factory _FacultiesModel({final int? id, final String? name}) =
      _$FacultiesModelImpl;

  factory _FacultiesModel.fromJson(Map<String, dynamic> json) =
      _$FacultiesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$FacultiesModelImplCopyWith<_$FacultiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
