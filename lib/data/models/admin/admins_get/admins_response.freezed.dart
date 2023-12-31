// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admins_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAdminsResponse _$GetAdminsResponseFromJson(Map<String, dynamic> json) {
  return _GetAdminsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAdminsResponse {
  List<ProfileResponse>? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAdminsResponseCopyWith<GetAdminsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdminsResponseCopyWith<$Res> {
  factory $GetAdminsResponseCopyWith(
          GetAdminsResponse value, $Res Function(GetAdminsResponse) then) =
      _$GetAdminsResponseCopyWithImpl<$Res, GetAdminsResponse>;
  @useResult
  $Res call({List<ProfileResponse>? response});
}

/// @nodoc
class _$GetAdminsResponseCopyWithImpl<$Res, $Val extends GetAdminsResponse>
    implements $GetAdminsResponseCopyWith<$Res> {
  _$GetAdminsResponseCopyWithImpl(this._value, this._then);

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
              as List<ProfileResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAdminsResponseImplCopyWith<$Res>
    implements $GetAdminsResponseCopyWith<$Res> {
  factory _$$GetAdminsResponseImplCopyWith(_$GetAdminsResponseImpl value,
          $Res Function(_$GetAdminsResponseImpl) then) =
      __$$GetAdminsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProfileResponse>? response});
}

/// @nodoc
class __$$GetAdminsResponseImplCopyWithImpl<$Res>
    extends _$GetAdminsResponseCopyWithImpl<$Res, _$GetAdminsResponseImpl>
    implements _$$GetAdminsResponseImplCopyWith<$Res> {
  __$$GetAdminsResponseImplCopyWithImpl(_$GetAdminsResponseImpl _value,
      $Res Function(_$GetAdminsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$GetAdminsResponseImpl(
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAdminsResponseImpl implements _GetAdminsResponse {
  const _$GetAdminsResponseImpl({final List<ProfileResponse>? response})
      : _response = response;

  factory _$GetAdminsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAdminsResponseImplFromJson(json);

  final List<ProfileResponse>? _response;
  @override
  List<ProfileResponse>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAdminsResponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdminsResponseImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAdminsResponseImplCopyWith<_$GetAdminsResponseImpl> get copyWith =>
      __$$GetAdminsResponseImplCopyWithImpl<_$GetAdminsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdminsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAdminsResponse implements GetAdminsResponse {
  const factory _GetAdminsResponse({final List<ProfileResponse>? response}) =
      _$GetAdminsResponseImpl;

  factory _GetAdminsResponse.fromJson(Map<String, dynamic> json) =
      _$GetAdminsResponseImpl.fromJson;

  @override
  List<ProfileResponse>? get response;
  @override
  @JsonKey(ignore: true)
  _$$GetAdminsResponseImplCopyWith<_$GetAdminsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
