import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../state/state_providers.dart';

class AddWorkReadonlyInfo extends HookConsumerWidget {
  const AddWorkReadonlyInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = Theme.of(context);

    final _addPieceState = ref.watch(addPieceProvider);

    final _numberingSystem = _addPieceState.selectedWork!.opusNo.numberingSystem;
    final _number = _addPieceState.selectedWork!.opusNo.number;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _addPieceState.selectedWork!.name,
          style: _theme.textTheme.bodyText1,
        ),
        Text(
          '$_numberingSystem $_number',
          style: _theme.textTheme.bodyText1,
        ),
      ],
    );
  }
}
