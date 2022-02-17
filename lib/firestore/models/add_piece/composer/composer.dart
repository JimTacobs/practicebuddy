import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firestore_models.dart';

part 'composer.freezed.dart';

@freezed
class Composer with _$Composer {
  const factory Composer({
    required String firstNames,
    required String lastName,
    required DateTime dateOfBirth,
    required DateTime? dateOfDeath,

    required List<Work> works,
    required String numberingSystem,
    String? id,
  }) = _Composer;
}
