import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_number.freezed.dart';
part 'work_number.g.dart';

class WorkNumberConverter implements JsonConverter<WorkNumber, Map<String, dynamic>> {
  const WorkNumberConverter();

  @override
  WorkNumber fromJson(json) => WorkNumber.fromJson(json);

  @override
  Map<String, dynamic> toJson(workNumber) => workNumber.toJson();
}

@freezed
class WorkNumber with _$WorkNumber {
  const factory WorkNumber({
    required String numberingSystem,
    required int number,
  }) = _WorkNumber;

  factory WorkNumber.fromJson(Map<String, dynamic> json) =>
      _$WorkNumberFromJson(json);
}
