// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Composer _$$_ComposerFromJson(Map<String, dynamic> json) => _$_Composer(
      firstNames: json['firstNames'] as String,
      lastName: json['lastName'] as String,
      dateOfBirth:
          const TimestampConverter().fromJson(json['dateOfBirth'] as Timestamp),
      dateOfDeath: const TimestampNullableConverter()
          .fromJson(json['dateOfDeath'] as Timestamp?),
      works: json['works'] == null
          ? const []
          : const WorkListConverter().fromJson(json['works'] as List?),
      numberingSystem: (json['numberingSystem'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ComposerToJson(_$_Composer instance) =>
    <String, dynamic>{
      'firstNames': instance.firstNames,
      'lastName': instance.lastName,
      'dateOfBirth': const TimestampConverter().toJson(instance.dateOfBirth),
      'dateOfDeath':
          const TimestampNullableConverter().toJson(instance.dateOfDeath),
      'works': const WorkListConverter().toJson(instance.works),
      'numberingSystem': instance.numberingSystem,
      'id': instance.id,
    };
