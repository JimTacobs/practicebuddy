import 'package:freezed_annotation/freezed_annotation.dart';

part 'composer.freezed.dart';

@freezed
class Composer with _$Composer {
  const factory Composer({
    required String firstNames,
    required String lastName,
    required DateTime dateOfBirth,
    required DateTime? dateOfDeath,

    /// Temporary dynamic, must be a list of works.
    required dynamic works,
    required List<String> numberingSystem,
    String? id,
  }) = _Composer;
}
