import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firestore_models.dart';

part 'piece.freezed.dart';

@freezed
class Piece with _$Piece {
  const factory Piece({
    required int length,
    required int number,
    required String name,
    required int requiredTempo,
    String? id,
    @Default([]) List<Repetition> repetitions,
  }) = _Piece;
}
