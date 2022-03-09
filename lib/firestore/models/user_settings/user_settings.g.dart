// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSettings _$$_UserSettingsFromJson(Map<String, dynamic> json) =>
    _$_UserSettings(
      studyPiecesBackwards: json['studyPiecesBackwards'] as bool? ?? true,
      metronomeDays: (json['metronomeDays'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [3, 7],
      baseTempo: json['baseTempo'] as int? ?? 30,
      baseChunkLength: json['baseChunkLength'] as int? ?? 2,
      maxPracticeInterval: json['maxPracticeInterval'] as int? ?? 4,
      startWithTechnicalExercises:
          json['startWithTechnicalExercises'] as bool? ?? true,
      technicalExercisesDailyTime:
          json['technicalExercisesDailyTime'] as int? ?? 15,
      instrument: (json['instrument'] as List<dynamic>)
          .map((e) => $enumDecode(_$InstrumentEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_UserSettingsToJson(_$_UserSettings instance) =>
    <String, dynamic>{
      'studyPiecesBackwards': instance.studyPiecesBackwards,
      'metronomeDays': instance.metronomeDays,
      'baseTempo': instance.baseTempo,
      'baseChunkLength': instance.baseChunkLength,
      'maxPracticeInterval': instance.maxPracticeInterval,
      'startWithTechnicalExercises': instance.startWithTechnicalExercises,
      'technicalExercisesDailyTime': instance.technicalExercisesDailyTime,
      'instrument':
          instance.instrument.map((e) => _$InstrumentEnumMap[e]).toList(),
    };

const _$InstrumentEnumMap = {
  Instrument.piano: 'piano',
  Instrument.guitar: 'guitar',
  Instrument.voice: 'voice',
  Instrument.organ: 'organ',
  Instrument.violin: 'violin',
  Instrument.viola: 'viola',
  Instrument.cello: 'cello',
  Instrument.harpsichord: 'harpsichord',
};
