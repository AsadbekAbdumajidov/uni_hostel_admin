
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'in_dormitory_response.freezed.dart';
part 'in_dormitory_response.g.dart';

@freezed
class GetInDormitoryResponse with _$GetInDormitoryResponse {
  const factory GetInDormitoryResponse({
    int? count,
    String? next,
    String? previous,
    List<InDormitoryUser>? results,
  }) = _GetInDormitoryResponse;

  factory GetInDormitoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetInDormitoryResponseFromJson(json);
}

@freezed
class InDormitoryUser with _$InDormitoryUser {
  const factory InDormitoryUser({
    @JsonKey(name: 'student_id') int? studentId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'faculty_model') String? facultyModel,
    String? dormitory,
    String? floor,
    String? course,

    String? room,
    int? bed,


  }) = _InDormitoryUser;

  factory InDormitoryUser.fromJson(Map<String, dynamic> json) =>
      _$InDormitoryUserFromJson(json);
}

   