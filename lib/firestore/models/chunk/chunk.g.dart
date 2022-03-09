// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chunk _$$_ChunkFromJson(Map<String, dynamic> json) => _$_Chunk(
      id: json['id'] as String,
      measures:
          (json['measures'] as List<dynamic>).map((e) => e as int).toList(),
      dueOn: const TimestampConverter().fromJson(json['dueOn'] as Timestamp),
      tempo: json['tempo'] as int,
      metronomeRequired: json['metronomeRequired'] as bool,
      startedAt: const TimestampNullableConverter()
          .fromJson(json['startedAt'] as Timestamp?),
      finishedAt: const TimestampNullableConverter()
          .fromJson(json['finishedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ChunkToJson(_$_Chunk instance) => <String, dynamic>{
      'id': instance.id,
      'measures': instance.measures,
      'dueOn': const TimestampConverter().toJson(instance.dueOn),
      'tempo': instance.tempo,
      'metronomeRequired': instance.metronomeRequired,
      'startedAt':
          const TimestampNullableConverter().toJson(instance.startedAt),
      'finishedAt':
          const TimestampNullableConverter().toJson(instance.finishedAt),
    };
