import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../state/state_providers.dart';
import '../../../shared/shared_widgets.dart';
import 'add_piece_widgets.dart';

class AddComposerForm extends HookConsumerWidget {
  const AddComposerForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceState = ref.watch(addPieceProvider);
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);

    final _theme = Theme.of(context);

    return Column(
      children: [
        const ComposerSuggestionField(),
        if (_addPieceState.selectedComposer == null &&
            _addPieceState.composerLastNameController.value.text.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextFormField(
                controller: _addPieceState.composerFirstNameController,
                hintText: 'First name',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Day of birth',
                  style: _theme.textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DateInput(
                dayController: _addPieceState.dateOfBirthDayController,
                monthController: _addPieceState.dateOfBirthMonthController,
                yearController: _addPieceState.dateOfBirthYearController,
                required: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Day of death (optional)',
                  style: _theme.textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DateInput(
                dayController: _addPieceState.dateOfDeathDayController,
                monthController: _addPieceState.dateOfDeathMonthController,
                yearController: _addPieceState.dateOfDeathYearController,
              ),
            ],
          ),
      ],
    );
  }
}
