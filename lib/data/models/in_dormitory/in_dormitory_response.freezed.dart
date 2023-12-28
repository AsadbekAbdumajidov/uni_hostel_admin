// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_dormitory_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetInDormitoryResponse _$GetInDormitoryResponseFromJson(
    Map<String, dynamic> json) {
  return _GetInDormitoryResponse.fromJson(json);
}

/// @nodoc
mixin _$GetInDormitoryResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<InDormitoryUser>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetInDormitoryResponseCopyWith<GetInDormitoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInDormitoryResponseCopyWith<$Res> {
  factory $GetInDormitoryResponseCopyWith(GetInDormitoryResponse value,
          $Res Function(GetInDormitoryResponse) then) =
      _$GetInDormitoryResponseCopyWithImpl<$Res, GetInDormitoryResponse>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<InDormitoryUser>? results});
}

/// @nodoc
class _$GetInDormitoryResponseCopyWithImpl<$Res,
        $Val extends GetInDormitoryResponse>
    implements $GetInDormitoryResponseCopyWith<$Res> {
  _$GetInDormitoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<InDormitoryUser>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInDormitoryResponseImplCopyWith<$Res>
    implements $GetInDormitoryResponseCopyWith<$Res> {
  factory _$$GetInDormitoryResponseImplCopyWith(
          _$GetInDormitoryResponseImpl value,
          $Res Function(_$GetInDormitoryResponseImpl) then) =
      __$$GetInDormitoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<InDormitoryUser>? results});
}

/// @nodoc
class __$$GetInDormitoryResponseImplCopyWithImpl<$Res>
    extends _$GetInDormitoryResponseCopyWithImpl<$Res,
        _$GetInDormitoryResponseImpl>
    implements _$$GetInDormitoryResponseImplCopyWith<$Res> {
  __$$GetInDormitoryResponseImplCopyWithImpl(
      _$GetInDormitoryResponseImpl _value,
      $Res Function(_$GetInDormitoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$GetInDormitoryResponseImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<InDormitoryUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInDormitoryResponseImpl implements _GetInDormitoryResponse {
  const _$GetInDormitoryResponseImpl(
      {this.count,
      this.next,
      this.previous,
      final List<InDormitoryUser>? results})
      : _results = results;

  factory _$GetInDormitoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetInDormitoryResponseImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<InDormitoryUser>? _results;
  @override
  List<InDormitoryUser>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetInDormitoryResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInDormitoryResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInDormitoryResponseImplCopyWith<_$GetInDormitoryResponseImpl>
      get copyWith => __$$GetInDormitoryResponseImplCopyWithImpl<
          _$GetInDormitoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInDormitoryResponseImplToJson(
      this,
    );
  }
}

abstract class _GetInDormitoryResponse implements GetInDormitoryResponse {
  const factory _GetInDormitoryResponse(
      {final int? count,
      final String? next,
      final String? previous,
      final List<InDormitoryUser>? results}) = _$GetInDormitoryResponseImpl;

  factory _GetInDormitoryResponse.fromJson(Map<String, dynamic> json) =
      _$GetInDormitoryResponseImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<InDormitoryUser>? get results;
  @override
  @JsonKey(ignore: true)
  _$$GetInDormitoryResponseImplCopyWith<_$GetInDormitoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InDormitoryUser _$InDormitoryUserFromJson(Map<String, dynamic> json) {
  return _InDormitoryUser.fromJson(json);
}

/// @nodoc
mixin _$InDormitoryUser {
  @JsonKey(name: 'student_id')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'faculty_model')
  String? get facultyModel => throw _privateConstructorUsedError;
  String? get dormitory => throw _privateConstructorUsedError;
  String? get floor => throw _privateConstructorUsedError;
  String? get course => throw _privateConstructorUsedError;
  String? get room => throw _privateConstructorUsedError;
  int? get bed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InDormitoryUserCopyWith<InDormitoryUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InDormitoryUserCopyWith<$Res> {
  factory $InDormitoryUserCopyWith(
          InDormitoryUser value, $Res Function(InDormitoryUser) then) =
      _$InDormitoryUserCopyWithImpl<$Res, InDormitoryUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'faculty_model') String? facultyModel,
      String? dormitory,
      String? floor,
      String? course,
      String? room,
      int? bed});
}

/// @nodoc
class _$InDormitoryUserCopyWithImpl<$Res, $Val extends InDormitoryUser>
    implements $InDormitoryUserCopyWith<$Res> {
  _$InDormitoryUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? fullName = freezed,
    Object? facultyModel = freezed,
    Object? dormitory = freezed,
    Object? floor = freezed,
    Object? course = freezed,
    Object? room = freezed,
    Object? bed = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      facultyModel: freezed == facultyModel
          ? _value.facultyModel
          : facultyModel // ignore: cast_nullable_to_non_nullable
              as String?,
      dormitory: freezed == dormitory
          ? _value.dormitory
          : dormitory // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InDormitoryUserImplCopyWith<$Res>
    implements $InDormitoryUserCopyWith<$Res> {
  factory _$$InDormitoryUserImplCopyWith(_$InDormitoryUserImpl value,
          $Res Function(_$InDormitoryUserImpl) then) =
      __$$InDormitoryUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'student_id') int? studentId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'faculty_model') String? facultyModel,
      String? dormitory,
      String? floor,
      String? course,
      String? room,
      int? bed});
}

/// @nodoc
class __$$InDormitoryUserImplCopyWithImpl<$Res>
    extends _$InDormitoryUserCopyWithImpl<$Res, _$InDormitoryUserImpl>
    implements _$$InDormitoryUserImplCopyWith<$Res> {
  __$$InDormitoryUserImplCopyWithImpl(
      _$InDormitoryUserImpl _value, $Res Function(_$InDormitoryUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? fullName = freezed,
    Object? facultyModel = freezed,
    Object? dormitory = freezed,
    Object? floor = freezed,
    Object? course = freezed,
    Object? room = freezed,
    Object? bed = freezed,
  }) {
    return _then(_$InDormitoryUserImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      facultyModel: freezed == facultyModel
          ? _value.facultyModel
          : facultyModel // ignore: cast_nullable_to_non_nullable
              as String?,
      dormitory: freezed == dormitory
          ? _value.dormitory
          : dormitory // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      bed: freezed == bed
          ? _value.bed
          : bed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InDormitoryUserImpl implements _InDormitoryUser {
  const _$InDormitoryUserImpl(
      {@JsonKey(name: 'student_id') this.studentId,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'faculty_model') this.facultyModel,
      this.dormitory,
      this.floor,
      this.course,
      this.room,
      this.bed});

  factory _$InDormitoryUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$InDormitoryUserImplFromJson(json);

  @override
  @JsonKey(name: 'student_id')
  final int? studentId;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'faculty_model')
  final String? facultyModel;
  @override
  final String? dormitory;
  @override
  final String? floor;
  @override
  final String? course;
  @override
  final String? room;
  @override
  final int? bed;

  @override
  String toString() {
    return 'InDormitoryUser(studentId: $studentId, fullName: $fullName, facultyModel: $facultyModel, dormitory: $dormitory, floor: $floor, course: $course, room: $room, bed: $bed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InDormitoryUserImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.facultyModel, facultyModel) ||
                other.facultyModel == facultyModel) &&
            (identical(other.dormitory, dormitory) ||
                other.dormitory == dormitory) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.bed, bed) || other.bed == bed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, fullName,
      facultyModel, dormitory, floor, course, room, bed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InDormitoryUserImplCopyWith<_$InDormitoryUserImpl> get copyWith =>
      __$$InDormitoryUserImplCopyWithImpl<_$InDormitoryUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InDormitoryUserImplToJson(
      this,
    );
  }
}

abstract class _InDormitoryUser implements InDormitoryUser {
  const factory _InDormitoryUser(
      {@JsonKey(name: 'student_id') final int? studentId,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'faculty_model') final String? facultyModel,
      final String? dormitory,
      final String? floor,
      final String? course,
      final String? room,
      final int? bed}) = _$InDormitoryUserImpl;

  factory _InDormitoryUser.fromJson(Map<String, dynamic> json) =
      _$InDormitoryUserImpl.fromJson;

  @override
  @JsonKey(name: 'student_id')
  int? get studentId;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'faculty_model')
  String? get facultyModel;
  @override
  String? get dormitory;
  @override
  String? get floor;
  @override
  String? get course;
  @override
  String? get room;
  @override
  int? get bed;
  @override
  @JsonKey(ignore: true)
  _$$InDormitoryUserImplCopyWith<_$InDormitoryUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
