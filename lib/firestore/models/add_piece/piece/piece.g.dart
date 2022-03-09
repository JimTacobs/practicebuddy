// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'piece.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Piece _$$_PieceFromJson(Map<String, dynamic> json) => _$_Piece(
      length: json['length'] as int,
      number: json['number'] as int,
      name: json['name'] as String,
      requiredTempo: json['requiredTempo'] as int,
      id: json['id'] as String?,
      repetitions: (json['repetitions'] as List<dynamic>?)
              ?.map((e) => Repetition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PieceToJson(_$_Piece instance) => <String, dynamic>{
      'length': instance.length,
      'number': instance.number,
      'name': instance.name,
      'requiredTempo': instance.requiredTempo,
      'id': instance.id,
      'repetitions': instance.repetitions,
    };
