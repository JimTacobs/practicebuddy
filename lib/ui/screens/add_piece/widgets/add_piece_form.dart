import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../state/state_providers.dart';
import '../../../shared/forms/generic_text_form_field.dart';
import 'add_piece_widgets.dart';

class AddPieceForm extends HookConsumerWidget {
  const AddPieceForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceState = ref.watch(addPieceProvider);
    return Column(
      children: [
        if (_addPieceState.selectedWork == null)
          GenericTextFormField(
            controller: _addPieceState.pieceController,
            hintText: 'Name',
          ),
        if (_addPieceState.selectedWork != null) const PieceSuggestionField(),
        GenericTextFormField(
          controller: _addPieceState.pieceNumberController,
          hintText: 'Number',
        ),
        GenericTextFormField(
          controller: _addPieceState.pieceLengthController,
          hintText: 'Length',
        ),
        GenericTextFormField(
          controller: _addPieceState.pieceTempoController,
          hintText: 'Required tempo',
        ),
      ],
    );
  }
}
