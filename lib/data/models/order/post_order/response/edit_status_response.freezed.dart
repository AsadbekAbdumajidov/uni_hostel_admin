// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditStatusResponse _$EditStatusResponseFromJson(Map<String, dynamic> json) {
  return _EditStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$EditStatusResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditStatusResponseCopyWith<EditStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStatusResponseCopyWith<$Res> {
  factory $EditStatusResponseCopyWith(
          EditStatusResponse value, $Res Function(EditStatusResponse) then) =
      _$EditStatusResponseCopyWithImpl<$Res, EditStatusResponse>;
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class _$EditStatusResponseCopyWithImpl<$Res, $Val extends EditStatusResponse>
    implements $EditStatusResponseCopyWith<$Res> {
  _$EditStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditStatusResponseCopyWith<$Res>
    implements $EditStatusResponseCopyWith<$Res> {
  factory _$$_EditStatusResponseCopyWith(_$_EditStatusResponse value,
          $Res Function(_$_EditStatusResponse) then) =
      __$$_EditStatusResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class __$$_EditStatusResponseCopyWithImpl<$Res>
    extends _$EditStatusResponseCopyWithImpl<$Res, _$_EditStatusResponse>
    implements _$$_EditStatusResponseCopyWith<$Res> {
  __$$_EditStatusResponseCopyWithImpl(
      _$_EditStatusResponse _value, $Res Function(_$_EditStatusResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_EditStatusResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditStatusResponse implements _EditStatusResponse {
  const _$_EditStatusResponse({this.status, this.message});

  factory _$_EditStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EditStatusResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'EditStatusResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditStatusResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditStatusResponseCopyWith<_$_EditStatusResponse> get copyWith =>
      __$$_EditStatusResponseCopyWithImpl<_$_EditStatusResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditStatusResponseToJson(
      this,
    );
  }
}

abstract class _EditStatusResponse implements EditStatusResponse {
  const factory _EditStatusResponse(
      {final String? status, final String? message}) = _$_EditStatusResponse;

  factory _EditStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_EditStatusResponse.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_EditStatusResponseCopyWith<_$_EditStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
