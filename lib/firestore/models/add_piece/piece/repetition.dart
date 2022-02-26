import 'package:freezed_annotation/freezed_annotation.dart';


part 'repetition.freezed.dart';

@freezed
class Repetition with _$Repetition {
  const factory Repetition({
    /// The measure to which the repetition points back
    required int firstMeasure,

    /// The measure at which the repetition sign is
    required int lastMeasure,

    /// The measures which need to be skipped while playing the repetition.
    /// This is required when there's an alternative ending in the repetition.
    @Default([]) List<int> measuresToSkipOnRepetition,

  }) = _Repetition;
}
