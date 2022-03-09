// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Measure _$$_MeasureFromJson(Map<String, dynamic> json) => _$_Measure(
      measureNo: json['measureNo'] as int,
      pieceId: json['pieceId'] as String,
      dueDate:
          const TimestampConverter().fromJson(json['dueDate'] as Timestamp),
      practiceDates: const TimestampListConverter()
          .fromJson(json['practiceDates'] as List<Timestamp>),
      tempo: json['tempo'] as int?,
      recentQualityOfPractice: json['recentQualityOfPractice'] as int,
      qualityOfMemorization: json['qualityOfMemorization'] as int,
    );

Map<String, dynamic> _$$_MeasureToJson(_$_Measure instance) =>
    <String, dynamic>{
      'measureNo': instance.measureNo,
      'pieceId': instance.pieceId,
      'dueDate': const TimestampConverter().toJson(instance.dueDate),
      'practiceDates':
          const TimestampListConverter().toJson(instance.practiceDates),
      'tempo': instance.tempo,
      'recentQualityOfPractice': instance.recentQualityOfPractice,
      'qualityOfMemorization': instance.qualityOfMemorization,
    };
