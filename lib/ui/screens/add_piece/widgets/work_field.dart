import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../firestore/models/firestore_models.dart';
import '../../../../util/helpers.dart';
import '../../../../state/state_providers.dart';

class WorkField extends HookConsumerWidget {
  const WorkField({
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

        _addPieceState.worksOfComposer.sort((a, b) {
          final dA = _jw.normalizedDistance(removeDiacritics(a.name), val);
          final dB = _jw.normalizedDistance(removeDiacritics(b.name), val);
          return dA.compareTo(dB);
        });
        return _addPieceState.worksOfComposer;
      },
      itemBuilder: (ctx, suggestion) {
        return Container();
      },
      onSuggestionSelected: (suggestion) async {

      },
    );
  }
}
