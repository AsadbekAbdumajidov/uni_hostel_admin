// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_statistics_response.freezed.dart';
part 'admin_statistics_response.g.dart';

@freezed
class MainStatisticsResponse with _$MainStatisticsResponse {
  const factory MainStatisticsResponse({
    int? all,
    int? accepted,
    @JsonKey(name: 'in_queue') int? inQueue,
    int? cancelled,
    int? male,
    int? female,
    int? disabled,
    @JsonKey(name: 'iron_notebook') int? ironNotebook,
    @JsonKey(name: 'womens_book') int? womensBook,
    @JsonKey(name: 'youths_notebook') int? youthsNotebook,
    @JsonKey(name: 'foster_home') int? fosterHome,
    @JsonKey(name: 'no_breadwinner') int? noBreadwinner,
    @JsonKey(name: 'one_parents_is_dead') int? oneParentsIsDead,
    @JsonKey(name: 'has_many_children_family') int? hasManyChildrenFamily,
    @JsonKey(name: 'gifted_student') int? giftedStudent,
    @JsonKey(name: 'based_on_payment_contract') int? basedOnPaymentContract,
    List<Faculty>? faculty,
    @JsonKey(name: '1-kurs') int? kurs1,
    @JsonKey(name: '2-kurs') int? kurs2,
    @JsonKey(name: '3-kurs') int? kurs3,
    @JsonKey(name: '4-kurs') int? kurs4,
    @JsonKey(name: '5-kurs') int? kurs5,
    @JsonKey(name: '6-kurs') int? kurs6,
    @JsonKey(name: '7-kurs') int? kurs7,
  }) = _MainStatisticsResponse;

  factory MainStatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$MainStatisticsResponseFromJson(json);
}

@freezed
class Faculty with _$Faculty {
  const factory Faculty({
    String? name,
    int? count,
  }) = _Faculty;

  factory Faculty.fromJson(Map<String, dynamic> json) =>
      _$FacultyFromJson(json);
}
