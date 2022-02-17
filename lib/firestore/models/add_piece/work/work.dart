import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../firestore_models.dart';
import 'work_number.dart';

part 'work.freezed.dart';

@freezed
class Work with _$Work {
  const factory Work({
    required String name,
    required WorkNumber opusNo,

    /// All the pieces that the work consists of
    @Default([]) List<Piece> pieces,

    /// The instruments for which the work is written.
    required List<Instrument> instruments,
    String? id,
  }) = _Work;
}
