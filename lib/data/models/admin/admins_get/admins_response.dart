
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/data/models/profile/get_profile/profile_response.dart';
part 'admins_response.freezed.dart';
part 'admins_response.g.dart';

@freezed
class GetAdminsResponse with _$GetAdminsResponse {
  const factory GetAdminsResponse({
    List<ProfileResponse>? response,

  }) = _GetAdminsResponse;

  factory GetAdminsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAdminsResponseFromJson(json);
}



   