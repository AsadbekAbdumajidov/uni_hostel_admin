// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_admin_request.freezed.dart';
part 'add_admin_request.g.dart';

@freezed
class AddAdminRequest with _$AddAdminRequest {
  const factory AddAdminRequest({
    String? username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'admin_region') String? region,
    @JsonKey(name: 'user_type') String? type,
    @JsonKey(name: 'faculty_admin') String? facultyAdmin,
    
  }) = _AddAdminRequest;

  factory AddAdminRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAdminRequestFromJson(json);
}


