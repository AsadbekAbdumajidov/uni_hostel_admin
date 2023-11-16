// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_dormitory_response.freezed.dart';
part 'get_dormitory_response.g.dart';

@freezed
class GetDormitoryResponse with _$GetDormitoryResponse {
  const factory GetDormitoryResponse({
    @JsonKey(name: 'faculity__name') String? faculityName,
    int? id,
    String? image,
    required String name,
    required String description,
    int? faculity,
  }) = _GetDormitoryResponse;

  factory GetDormitoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDormitoryResponseFromJson(json);
}
