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
    required TextEditingController dateOfBirthDayController,
    required TextEditingController dateOfBirthMonthController,
    required TextEditingController dateOfBirthYearController,
    required TextEditingController dateOfDeathDayController,
    required TextEditingController dateOfDeathMonthController,
    required TextEditingController dateOfDeathYearController,
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
    required TextEditingController pieceRepetitionFromController,
    required TextEditingController pieceRepetitionToController,
    required TextEditingController pieceRepetitionSkipController,
    Piece? selectedPiece,
    @Default(false) bool containsRepetitions,
    @Default([]) List<Repetition> repetitions,
  }) = _AddPiece;
}
