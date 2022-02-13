import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_buddy/util/helpers.dart';

import '../../../state/state_providers.dart';
import 'widgets/add_piece_widgets.dart';

class AddPieceScreen extends HookConsumerWidget {
  const AddPieceScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);
    final _addPieceState = ref.watch(addPieceProvider);
    final _formKey = GlobalKey<FormState>();

    final _theme = Theme.of(context);

    final _fullName =
        '${_addPieceState.selectedComposer?.firstNames} ${_addPieceState.selectedComposer?.lastName}';
    final _birthDate = _addPieceState.selectedComposer?.dateOfBirth;
    final _deathDate = _addPieceState.selectedComposer?.dateOfDeath ?? null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add piece'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text('Composer', style: _theme.textTheme.headline6),
                ),
                if (_addPieceState.selectedComposer != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InkWell(
                      onTap: () {
                        _addPieceNotifier.unselectComposer();
                      },
                      child: Icon(
                        Icons.edit,
                        size: 20,
                      ),
                    ),
                  ),
              ],
            ),
            if (_addPieceState.selectedComposer == null)
              const AddComposerForm(),
            if (_addPieceState.selectedComposer != null)
              Column(
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
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Piece', style: _theme.textTheme.headline6),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // TypeAheadFormField<Composer>(
                  //   suggestionsCallback: (val) {
                  //     if (val.isEmpty) {}
                  //
                  //     final _jw = JaroWinkler();
                  //
                  //     _addPieceState.filteredComposers.sort((a, b) {
                  //       final dA = _jw.normalizedDistance(
                  //           removeDiacritics(a.lastName), val);
                  //       final dB = _jw.normalizedDistance(
                  //           removeDiacritics(b.lastName), val);
                  //       return dA.compareTo(dB);
                  //     });
                  //
                  //     return _addPieceState.filteredComposers;
                  //   },
                  //   itemBuilder: (ctx, suggestion) {
                  //     return ListTile(
                  //       title: Text(
                  //           '${suggestion.lastName}, ${suggestion.firstNames}'),
                  //     );
                  //   },
                  //   onSuggestionSelected: (suggestion) {
                  //     _addPieceNotifier.selectComposer(suggestion);
                  //   },
                  //   animationDuration: Duration(seconds: 0),
                  //   textFieldConfiguration: TextFieldConfiguration(
                  //     controller: _addPieceState.composerLastNameController,
                  //     decoration: InputDecoration(
                  //       fillColor: _theme.backgroundColor,
                  //       hintText: 'Last name',
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
