import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../firestore_models.dart';

part 'piece.freezed.dart';

@freezed
class Piece with _$Piece {
  const factory Piece({
    /// Temporary, should be the Composer model.
    required dynamic composer,

    /// A list of all the measures that the piece consists of.
    required List<Measure> measures,

    /// The status of the piece, which indicates whether it is being practiced
    /// or not. If it's not being practiced, it indicates why not.
    required PieceStatus status,
  }) = _Piece;
}
