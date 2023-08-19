// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_status_response.freezed.dart';
part 'edit_status_response.g.dart';

@freezed
class EditStatusResponse with _$EditStatusResponse {
  const factory EditStatusResponse({
    String? status,
    String? message,

    
  }) = _EditStatusResponse;

  factory EditStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$EditStatusResponseFromJson(json);
}
