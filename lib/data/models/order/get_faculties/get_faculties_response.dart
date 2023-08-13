// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_faculties_response.freezed.dart';
part 'get_faculties_response.g.dart';

@freezed
class GetFacultiesResponse with _$GetFacultiesResponse {
  const factory GetFacultiesResponse({
    List<FacultiesModel>? response,
  }) = _GetFacultiesResponse;

  factory GetFacultiesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFacultiesResponseFromJson(json);
}

@freezed
class FacultiesModel with _$FacultiesModel {
  const factory FacultiesModel({
    int? id,
    String? name,
  }) = _FacultiesModel;

  factory FacultiesModel.fromJson(Map<String, dynamic> json) =>
      _$FacultiesModelFromJson(json);
}
