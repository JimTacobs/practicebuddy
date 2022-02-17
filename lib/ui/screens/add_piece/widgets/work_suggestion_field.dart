import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../firestore/models/firestore_models.dart';
import '../../../../state/state_providers.dart';
import '../../../../util/helpers.dart';

class WorkSuggestionField extends HookConsumerWidget {
  const WorkSuggestionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _theme = Theme.of(context);

    final _addPieceState = ref.watch(addPieceProvider);
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);
    return TypeAheadFormField<Work>(
      suggestionsCallback: (val) {
        final _jw = JaroWinkler();

        _addPieceState.selectedComposer!.works.sort((a, b) {
          final dA = _jw.normalizedDistance(removeDiacritics(a.name), val);
          final dB = _jw.normalizedDistance(removeDiacritics(b.name), val);
          return dA.compareTo(dB);
        });

        if (val.isNotEmpty) {
          _addPieceNotifier.addDummyWork(val);
        }

        if (val.isEmpty) {
          _addPieceNotifier.deleteDummyWork();
        }

        return _addPieceState.selectedComposer!.works;
      },
      itemBuilder: (ctx, suggestion) {
        return ListTile(
          title: Text(suggestion.name),
        );
      },
      onSuggestionSelected: (suggestion) async {
        _addPieceNotifier.setWork(suggestion);
      },
      animationDuration: Duration(seconds: 0),
      textFieldConfiguration: TextFieldConfiguration(
        controller: _addPieceState.workController,
        decoration: InputDecoration(
          fillColor: _theme.backgroundColor,
          hintText: 'Name',
        ),
        textCapitalization: TextCapitalization.words,
      ),
    );
  }
}
