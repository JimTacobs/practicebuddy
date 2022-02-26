import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../state/state_providers.dart';
import '../../../shared/shared_widgets.dart';
import 'add_piece_widgets.dart';


class AddWorkForm extends HookConsumerWidget {
  const AddWorkForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceState = ref.watch(addPieceProvider);

    return Column(
      children: [
        if (_addPieceState.selectedComposer == null)
          GenericTextFormField(
            required: true,
            controller: _addPieceState.workController,
            hintText: 'Name',
          ),
        if (_addPieceState.selectedComposer != null) WorkSuggestionField(),
        WorkNumberFields(),
      ],
    );
  }
}
