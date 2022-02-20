import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../firestore/models/firestore_models.dart';

part 'add_piece_model.freezed.dart';

@freezed
class AddPiece with _$AddPiece {
  const factory AddPiece({
    /// Composers
    required TextEditingController composerLastNameController,
    required TextEditingController composerFirstNameController,
    DateTime? dateOfBirth,
    DateTime? dateOfDeath,
    @Default([]) List<Composer> composers,
    Composer? selectedComposer,

    /// Works
    required TextEditingController workController,
    required TextEditingController customNumberingSystemController,
    required TextEditingController workNumberController,
    Work? selectedWork,

    /// Piece
    required TextEditingController pieceController,
    required TextEditingController pieceNumberController,
    required TextEditingController pieceTempoController,
    required TextEditingController pieceLengthController,
    Piece? selectedPiece,
  }) = _AddPiece;
}
