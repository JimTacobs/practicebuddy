import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure.freezed.dart';

@freezed
class Measure with _$Measure {
  const factory Measure({
    /// The number of the measure within the piece.
    required int measureNo,

    /// The id of the piece.
    required UniqueKey pieceId,

    /// A DateTime that indicates when the user has to practice this
    /// measure.
    required DateTime dueDate,

    /// A list of datetimes which indicate when the user practiced this
    /// measure.
    required List<DateTime> practiceDates,

    /// The metronome tempo at which the user can play this measure with
    /// confidence. As long as this is null, the user must practice the
    /// measure daily.
    required int? tempo,

    /// An average of the last 5 grades the user gave his practice of the
    /// measure. At the end of each chunk, the user is asked to rate the chunk
    /// as a whole and, if the rating they gave is poor, they get to specify
    /// which measure gave them a hard time. This average is used to decide
    /// when the measure must be practiced again.
    required int recentQualityOfPractice,

    /// On a scale of 1 to 5 how well the user has memorized this measure.
    /// Memorization only is improved or worsened when the user practices it
    /// specifically.
    required int qualityOfMemorization,
  }) = _Measure;
}
