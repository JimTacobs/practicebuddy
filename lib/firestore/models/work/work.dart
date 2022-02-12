import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums.dart';
import '../firestore_models.dart';

part 'work.freezed.dart';

@freezed
class Work with _$Work {
  const factory Work({
    required String name,
    int? opusNo,

    /// All the pieces that the work consists of
    required List<Piece> pieces,

    /// The instrument for which the work is written.
    required Instrument instrument,
  }) = _Work;
}
