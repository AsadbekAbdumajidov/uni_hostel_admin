// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_statistics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentStatisticsResponseImpl _$$StudentStatisticsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentStatisticsResponseImpl(
      all: json['all'] as int?,
      male: json['male'] as int?,
      female: json['female'] as int?,
      faculty: (json['faculty'] as List<dynamic>?)
          ?.map((e) => Faculty.fromJson(e as Map<String, dynamic>))
          .toList(),
      regions: json['regions'] == null
          ? null
          : Regions.fromJson(json['regions'] as Map<String, dynamic>),
      kurs1: json['1-kurs'] as int?,
      kurs2: json['2-kurs'] as int?,
      kurs3: json['3-kurs'] as int?,
      kurs4: json['4-kurs'] as int?,
      kurs5: json['5-kurs'] as int?,
      kurs6: json['6-kurs'] as int?,
      kurs7: json['7-kurs'] as int?,
    );

Map<String, dynamic> _$$StudentStatisticsResponseImplToJson(
        _$StudentStatisticsResponseImpl instance) =>
    <String, dynamic>{
      'all': instance.all,
      'male': instance.male,
      'female': instance.female,
      'faculty': instance.faculty,
      'regions': instance.regions,
      '1-kurs': instance.kurs1,
      '2-kurs': instance.kurs2,
      '3-kurs': instance.kurs3,
      '4-kurs': instance.kurs4,
      '5-kurs': instance.kurs5,
      '6-kurs': instance.kurs6,
      '7-kurs': instance.kurs7,
    };

_$RegionsImpl _$$RegionsImplFromJson(Map<String, dynamic> json) =>
    _$RegionsImpl(
      toshkentV: json['Toshkent viloyati'] as int?,
      toshkentSh: json['Toshkent shahri'] as int?,
      navoiyV: json['Navoiy viloyati'] as int?,
      qashqadaryoV: json['Qashqadaryo viloyati'] as int?,
      namanganV: json['Namangan viloyati'] as int?,
      surxondaryoV: json['Surxondaryo viloyati'] as int?,
      fargonaV: json['Farg‘ona viloyati'] as int?,
      sirdaryoV: json['Sirdaryo viloyati'] as int?,
      samarqanV: json['Samarqand viloyati'] as int?,
      jizzaxV: json['Jizzax viloyati'] as int?,
      andijonV: json['Andijon viloyati'] as int?,
      qoraqalpogV: json['Qoraqalpog‘iston Resp.'] as int?,
      buxoroV: json['Buxoro viloyati'] as int?,
      xorazmV: json['Xorazm viloyati'] as int?,
    );

Map<String, dynamic> _$$RegionsImplToJson(_$RegionsImpl instance) =>
    <String, dynamic>{
      'Toshkent viloyati': instance.toshkentV,
      'Toshkent shahri': instance.toshkentSh,
      'Navoiy viloyati': instance.navoiyV,
      'Qashqadaryo viloyati': instance.qashqadaryoV,
      'Namangan viloyati': instance.namanganV,
      'Surxondaryo viloyati': instance.surxondaryoV,
      'Farg‘ona viloyati': instance.fargonaV,
      'Sirdaryo viloyati': instance.sirdaryoV,
      'Samarqand viloyati': instance.samarqanV,
      'Jizzax viloyati': instance.jizzaxV,
      'Andijon viloyati': instance.andijonV,
      'Qoraqalpog‘iston Resp.': instance.qoraqalpogV,
      'Buxoro viloyati': instance.buxoroV,
      'Xorazm viloyati': instance.xorazmV,
    };
