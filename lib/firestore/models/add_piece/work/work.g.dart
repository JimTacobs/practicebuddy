// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Work _$$_WorkFromJson(Map<String, dynamic> json) => _$_Work(
      name: json['name'] as String,
      opusNo: const WorkNumberConverter()
          .fromJson(json['opusNo'] as Map<String, dynamic>),
      pieces: (json['pieces'] as List<dynamic>?)
              ?.map((e) => Piece.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      instruments: (json['instruments'] as List<dynamic>)
          .map((e) => $enumDecode(_$InstrumentEnumMap, e))
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_WorkToJson(_$_Work instance) => <String, dynamic>{
      'name': instance.name,
      'opusNo': const WorkNumberConverter().toJson(instance.opusNo),
      'pieces': instance.pieces,
      'instruments':
          instance.instruments.map((e) => _$InstrumentEnumMap[e]).toList(),
      'id': instance.id,
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
