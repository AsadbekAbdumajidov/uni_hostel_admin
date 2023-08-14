// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_orders_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadOrdersListResponse _$DownloadOrdersListResponseFromJson(
    Map<String, dynamic> json) {
  return _DownloadOrdersListResponse.fromJson(json);
}

/// @nodoc
mixin _$DownloadOrdersListResponse {
  String? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadOrdersListResponseCopyWith<DownloadOrdersListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadOrdersListResponseCopyWith<$Res> {
  factory $DownloadOrdersListResponseCopyWith(DownloadOrdersListResponse value,
          $Res Function(DownloadOrdersListResponse) then) =
      _$DownloadOrdersListResponseCopyWithImpl<$Res,
          DownloadOrdersListResponse>;
  @useResult
  $Res call({String? file});
}

/// @nodoc
class _$DownloadOrdersListResponseCopyWithImpl<$Res,
        $Val extends DownloadOrdersListResponse>
    implements $DownloadOrdersListResponseCopyWith<$Res> {
  _$DownloadOrdersListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadOrdersListResponseCopyWith<$Res>
    implements $DownloadOrdersListResponseCopyWith<$Res> {
  factory _$$_DownloadOrdersListResponseCopyWith(
          _$_DownloadOrdersListResponse value,
          $Res Function(_$_DownloadOrdersListResponse) then) =
      __$$_DownloadOrdersListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? file});
}

/// @nodoc
class __$$_DownloadOrdersListResponseCopyWithImpl<$Res>
    extends _$DownloadOrdersListResponseCopyWithImpl<$Res,
        _$_DownloadOrdersListResponse>
    implements _$$_DownloadOrdersListResponseCopyWith<$Res> {
  __$$_DownloadOrdersListResponseCopyWithImpl(
      _$_DownloadOrdersListResponse _value,
      $Res Function(_$_DownloadOrdersListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_DownloadOrdersListResponse(
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadOrdersListResponse implements _DownloadOrdersListResponse {
  const _$_DownloadOrdersListResponse({this.file});

  factory _$_DownloadOrdersListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadOrdersListResponseFromJson(json);

  @override
  final String? file;

  @override
  String toString() {
    return 'DownloadOrdersListResponse(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadOrdersListResponse &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadOrdersListResponseCopyWith<_$_DownloadOrdersListResponse>
      get copyWith => __$$_DownloadOrdersListResponseCopyWithImpl<
          _$_DownloadOrdersListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadOrdersListResponseToJson(
      this,
    );
  }
}

abstract class _DownloadOrdersListResponse
    implements DownloadOrdersListResponse {
  const factory _DownloadOrdersListResponse({final String? file}) =
      _$_DownloadOrdersListResponse;

  factory _DownloadOrdersListResponse.fromJson(Map<String, dynamic> json) =
      _$_DownloadOrdersListResponse.fromJson;

  @override
  String? get file;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadOrdersListResponseCopyWith<_$_DownloadOrdersListResponse>
      get copyWith => throw _privateConstructorUsedError;
}
