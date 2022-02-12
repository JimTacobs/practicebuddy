import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../firestore/models/composer/composer.dart';
import '../../../state/state_providers.dart';
import '../../../util/helpers.dart';
import '../../shared/shared_widgets.dart';

class AddPieceScreen extends HookConsumerWidget {
  const AddPieceScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);
    final _addPieceState = ref.watch(addPieceProvider);
    final _formKey = GlobalKey<FormState>();

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add piece'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Composer', style: _theme.textTheme.headline6),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TypeAheadFormField<Composer>(
                    suggestionsCallback: (val) {
                      if (val.isEmpty) {}

                      final _jw = JaroWinkler();

                      _addPieceState.filteredComposers.sort((a, b) {
                        final dA = _jw.normalizedDistance(
                            removeDiacritics(a.lastName), val);
                        final dB = _jw.normalizedDistance(
                            removeDiacritics(b.lastName), val);
                        return dA.compareTo(dB);
                      });

                      return _addPieceState.filteredComposers;
                    },
                    itemBuilder: (ctx, suggestion) {
                      return ListTile(
                        title: Text(
                            '${suggestion.lastName}, ${suggestion.firstNames}'),
                      );
                    },
                    onSuggestionSelected: (suggestion) {
                      _addPieceNotifier.selectComposer(suggestion);
                    },
                    animationDuration: Duration(seconds: 0),
                    textFieldConfiguration: TextFieldConfiguration(),
                  ),
                  GenericTextFormField(
                    controller: _addPieceState.composerLastNameController,
                    hintText: 'Last name',
                    onChange: (val) {
                      final _jaro = JaroWinkler();

                      _addPieceState.filteredComposers.sort((a, b) {
                        final dA = _jaro.normalizedDistance(a.lastName, val);
                        final dB = _jaro.normalizedDistance(b.lastName, val);
                        return dA.compareTo(dB);
                      });
                    },
                  ),
                  GenericTextFormField(
                    controller: _addPieceState.composerLastNameController,
                    hintText: 'First name',
                  ),
                  GenericTextFormField(
                    controller: _addPieceState.composerDateOfBirthController,
                    hintText: 'Date of birth',
                  ),
                  GenericTextFormField(
                    controller: _addPieceState.composerDateOfDeathController,
                    hintText: 'Date of death',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
