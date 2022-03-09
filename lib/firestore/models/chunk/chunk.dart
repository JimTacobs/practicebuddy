import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice_buddy/firestore/firestore_helpers.dart';

part 'chunk.freezed.dart';
part 'chunk.g.dart';

@freezed
class Chunk with _$Chunk {
  const factory Chunk({
    /// The unique ID of this chunk, used to write back to Firestore
    required String id,

    /// The measures that this chunk includes
    required List<int> measures,

    /// The first date on which this chunk is due. This is important for ensuring
    /// a chunk that's has been due for 2 days can be prioritised over a chunk
    /// that's only due today.
    @TimestampConverter() required DateTime dueOn,

    /// The tempo at which the user should be able to successfully play this
    /// chunk, if the user wishes to advance all the measures within.
    required int tempo,

    /// Indicates whether the metronome is required when practicing this chunk.
    /// This will be the case when the aim is to improve upon the tempo, rather
    /// than consolidating the current tempo at which the user can play it.
    required bool metronomeRequired,

    /// Used when writing back to the Firestore, it indicates when the user
    /// started practicing this chunk.
    @TimestampNullableConverter() DateTime? startedAt,

    /// Used when writing back to the Firestore, it indicates when the user
    /// finished practicing the chunk.
    @TimestampNullableConverter() DateTime? finishedAt,
  }) = _Chunk;
  factory Chunk.fromJson(Map<String, dynamic> json) => _$ChunkFromJson(json);
}
