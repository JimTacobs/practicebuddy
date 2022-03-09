import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../firestore_helpers.dart';
import '../../firestore_models.dart';

part 'composer.freezed.dart';
part 'composer.g.dart';

@freezed
class Composer with _$Composer {
  const factory Composer({
    required String firstNames,
    required String lastName,
    @TimestampConverter() required DateTime dateOfBirth,
    @TimestampNullableConverter() required DateTime? dateOfDeath,

    @WorkListConverter() @Default([]) List<Work> works,
    required String numberingSystem,
    String? id,
  }) = _Composer;

  factory Composer.fromJson(Map<String, dynamic> json) =>
      _$ComposerFromJson(json);
}
