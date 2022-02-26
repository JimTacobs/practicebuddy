import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../firestore/models/firestore_models.dart';
import '../../../../state/state_providers.dart';
import '../../../../util/helpers/jaro_winkler.dart';
import '../../../../util/validators.dart';

class PieceSuggestionField extends HookConsumerWidget {
  const PieceSuggestionField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceState = ref.watch(addPieceProvider);
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);
    return TypeAheadFormField<Piece>(
      suggestionsCallback: (val) {
        final _jw = JaroWinkler();

        _addPieceState.selectedWork!.pieces.sort((a, b) {
          final dA = _jw.normalizedDistance(removeDiacritics(a.name), val);
          final dB = _jw.normalizedDistance(removeDiacritics(b.name), val);
          return dA.compareTo(dB);
        });

        if (val.isNotEmpty) {
          _addPieceNotifier.addDummyPiece(val);
        }

        if (val.isEmpty) {
          _addPieceNotifier.deleteDummyPiece();
        }

        return _addPieceState.selectedWork!.pieces;
      },
      itemBuilder: (ctx, suggestion) {
        return ListTile(
          title: Text(suggestion.name),
        );
      },
      onSuggestionSelected: (suggestion) {
        _addPieceNotifier.selectPiece(suggestion);
      },
      validator: (val) => requiredField(val),
    );
  }
}
