import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../firestore/models/firestore_models.dart';

part 'add_piece_model.freezed.dart';

@freezed
class AddPiece with _$AddPiece {
  const factory AddPiece({
    required TextEditingController composerLastNameController,
    required TextEditingController composerFirstNameController,
    required TextEditingController composerDateOfBirthController,
    required TextEditingController composerDateOfDeathController,
    @Default([]) List<Composer> composers,
    @Default([]) List<Composer> filteredComposers,
    Composer? selectedComposer,
  }) = _AddPiece;
}
