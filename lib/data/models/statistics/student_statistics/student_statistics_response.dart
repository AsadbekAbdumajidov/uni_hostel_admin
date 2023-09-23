// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uni_hostel_admin/data/models/statistics/admin_statistics/admin_statistics_response.dart';
part 'student_statistics_response.freezed.dart';
part 'student_statistics_response.g.dart';

@freezed
class StudentStatisticsResponse with _$StudentStatisticsResponse {
  const factory StudentStatisticsResponse({
    int? all,
    int? male,
    int? female,
    List<Faculty>? faculty,
    Regions? regions,
    @JsonKey(name: '1-kurs') int? kurs1,
    @JsonKey(name: '2-kurs') int? kurs2,
    @JsonKey(name: '3-kurs') int? kurs3,
    @JsonKey(name: '4-kurs') int? kurs4,
    @JsonKey(name: '5-kurs') int? kurs5,
    @JsonKey(name: '6-kurs') int? kurs6,
    @JsonKey(name: '7-kurs') int? kurs7,
  }) = _StudentStatisticsResponse;

  factory StudentStatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentStatisticsResponseFromJson(json);
}

@freezed
class Regions with _$Regions {
  const factory Regions({
    @JsonKey(name: 'Toshkent viloyati') int? toshkentV,
    @JsonKey(name: 'Toshkent shahri') int? toshkentSh,
    @JsonKey(name: 'Navoiy viloyati') int? navoiyV,
    @JsonKey(name: 'Qashqadaryo viloyati') int? qashqadaryoV,
    @JsonKey(name: 'Namangan viloyati') int? namanganV,
    @JsonKey(name: 'Surxondaryo viloyati') int? surxondaryoV,
    @JsonKey(name: 'Farg‘ona viloyati') int? fargonaV,
    @JsonKey(name: 'Sirdaryo viloyati') int? sirdaryoV,
    @JsonKey(name: 'Samarqand viloyati') int? samarqanV,
    @JsonKey(name: 'Jizzax viloyati') int? jizzaxV,
    @JsonKey(name: 'Andijon viloyati') int? andijonV,
    @JsonKey(name: 'Qoraqalpog‘iston Resp.') int? qoraqalpogV,
    @JsonKey(name: 'Buxoro viloyati') int? buxoroV,
    @JsonKey(name: 'Xorazm viloyati') int? xorazmV,
  }) = _Regions;

  factory Regions.fromJson(Map<String, dynamic> json) =>
      _$RegionsFromJson(json);
}
