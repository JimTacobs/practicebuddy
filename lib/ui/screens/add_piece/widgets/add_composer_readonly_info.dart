import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../state/state_providers.dart';
import '../../../../util/helpers.dart';

class AddComposerReadonlyInfo extends HookConsumerWidget {
  const AddComposerReadonlyInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = Theme.of(context);

    final _addPieceState = ref.watch(addPieceProvider);

    final _fullName =
        '${_addPieceState.selectedComposer?.firstNames} ${_addPieceState.selectedComposer?.lastName}';
    final _birthDate = _addPieceState.selectedComposer?.dateOfBirth;
    final _deathDate = _addPieceState.selectedComposer?.dateOfDeath ?? null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _fullName,
          style: _theme.textTheme.bodyText1,
        ),
        Text(
          '${formatDate(_birthDate!)} ${_deathDate != null ? ' - ${formatDate(_deathDate)}' : ''}',
          style: _theme.textTheme.bodyText1,
        ),
      ],
    );
  }
}
