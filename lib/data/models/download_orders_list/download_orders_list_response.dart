import 'package:freezed_annotation/freezed_annotation.dart';
part 'download_orders_list_response.freezed.dart';
part 'download_orders_list_response.g.dart';

@freezed
class DownloadOrdersListResponse with _$DownloadOrdersListResponse {
  const factory DownloadOrdersListResponse({
    String? file,
  }) = _DownloadOrdersListResponse;

  factory DownloadOrdersListResponse.fromJson(Map<String, dynamic> json) =>
      _$DownloadOrdersListResponseFromJson(json);
}
