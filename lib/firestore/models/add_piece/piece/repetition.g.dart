// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repetition _$$_RepetitionFromJson(Map<String, dynamic> json) =>
    _$_Repetition(
      firstMeasure: json['firstMeasure'] as int,
      lastMeasure: json['lastMeasure'] as int,
      measuresToSkipOnRepetition:
          (json['measuresToSkipOnRepetition'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$_RepetitionToJson(_$_Repetition instance) =>
    <String, dynamic>{
      'firstMeasure': instance.firstMeasure,
      'lastMeasure': instance.lastMeasure,
      'measuresToSkipOnRepetition': instance.measuresToSkipOnRepetition,
    };
