import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../firestore/models/firestore_models.dart';
import '../../../../state/state_providers.dart';
import '../../../../util/helpers.dart';
import '../../../../util/validators/form_validators.dart';

class ComposerSuggestionField extends HookConsumerWidget {
  const ComposerSuggestionField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = Theme.of(context);

    final _addPieceState = ref.watch(addPieceProvider);
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);

    return TypeAheadFormField<Composer>(
      suggestionsCallback: (val) {
        final _jw = JaroWinkler();

        _addPieceState.composers.sort((a, b) {
          final dA = _jw.normalizedDistance(removeDiacritics(a.lastName), val);
          final dB = _jw.normalizedDistance(removeDiacritics(b.lastName), val);
          return dA.compareTo(dB);
        });

        if (val.isNotEmpty) {
          _addPieceNotifier.addDummyComposer(val);
        }

        if (val.isEmpty) {
          _addPieceNotifier.deleteDummyComposer();
        }

        return _addPieceState.composers;
      },
      itemBuilder: (ctx, suggestion) {
        final _name = suggestion.firstNames.isEmpty
            ? suggestion.lastName
            : '${suggestion.lastName}, ${suggestion.firstNames}';
        return ListTile(
          title: Text(_name),
        );
      },
      onSuggestionSelected: (suggestion) async {
        _addPieceNotifier.selectComposer(suggestion);
        await _addPieceNotifier.getComposerWorks(suggestion.id!);
      },
      animationDuration: Duration(seconds: 0),
      textFieldConfiguration: TextFieldConfiguration(
        controller: _addPieceState.composerLastNameController,
        decoration: InputDecoration(
          fillColor: _theme.backgroundColor,
          hintText: 'Last name',
        ),
        textCapitalization: TextCapitalization.words,
      ),
      validator: (val) => requiredField(val),
    );
  }
}
