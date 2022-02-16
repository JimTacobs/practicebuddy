import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firestore_models.dart';

part 'piece.freezed.dart';

@freezed
class Piece with _$Piece {
  const factory Piece({
    required int length,
    String? id,
    @Default([]) List<Repetition> repetitions,
  }) = _Piece;
}
