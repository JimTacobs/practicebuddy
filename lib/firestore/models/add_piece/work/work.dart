import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums.dart';
import '../../firestore_models.dart';
import 'work_number.dart';

part 'work.freezed.dart';

part 'work.g.dart';

class WorkConverter implements JsonConverter<Work, Map<String, dynamic>> {
  const WorkConverter();

  @override
  Work fromJson(json) => Work.fromJson(json);

  @override
  Map<String, dynamic> toJson(work) => work.toJson();
}

class WorkListConverter
    implements JsonConverter<List<Work>, List<dynamic>?> {
  const WorkListConverter();

  @override
  List<Work> fromJson(json) => json == null ? [] : json.map((e) => Work.fromJson(e)).toList();

  @override
  List<dynamic> toJson(works) =>
      works.map((e) => e.toJson()).toList();
}

@freezed
class Work with _$Work {
  const factory Work({
    required String name,
    @WorkNumberConverter() required WorkNumber opusNo,

    /// All the pieces that the work consists of
    @Default([]) List<Piece> pieces,

    /// The instruments for which the work is written.
    required List<Instrument> instruments,
    String? id,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}
