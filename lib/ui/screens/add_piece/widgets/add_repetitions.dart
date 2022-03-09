import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_buddy/firestore/models/firestore_models.dart';

import '../../../../state/state_providers.dart';
import '../../../shared/shared_widgets.dart';

class AddRepetitions extends HookConsumerWidget {
  const AddRepetitions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _width = MediaQuery.of(context).size.width;

    final _addPieceState = ref.watch(addPieceProvider);
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: _addPieceState.containsRepetitions,
              onChanged: (val) =>
                  _addPieceNotifier.toggleRepetitions(val ?? false),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Repetitions'),
            ),
          ],
        ),
        if (_addPieceState.containsRepetitions)
          Column(
            children: [
              if (_addPieceState.repetitions.isNotEmpty)
                ..._addPieceState.repetitions.map((repetition) {
                  return Text(
                      'After measure ${repetition.lastMeasure}, go back to measure ${repetition.firstMeasure}${repetition.measuresToSkipOnRepetition.isNotEmpty ? ' and skip measure ${repetition.measuresToSkipOnRepetition[0]}' : '.'}');
                }).toList(),

              /// TODO - Add column of texts of added repetitions
              Row(
                children: [
                  Image.asset(
                    'assets/images/piece/repeat_right.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: _width * .7,
                    child: GenericTextFormField(
                      controller: _addPieceState.pieceRepetitionFromController,
                      hintText: 'Repetition from measure',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/piece/repeat_left.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: _width * .7,
                    child: GenericTextFormField(
                      controller: _addPieceState.pieceRepetitionToController,
                      hintText: 'Back to measure',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Text('Skip:'),
                  ),
                  SizedBox(
                    width: _width - 74,
                    child: GenericTextFormField(
                      controller: _addPieceState.pieceRepetitionSkipController,
                      hintText: 'During repetition, skip measure(s)',
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  _addPieceNotifier.addRepetition(
                    Repetition(
                      firstMeasure: int.parse(
                          _addPieceState.pieceRepetitionToController.text),
                      lastMeasure: int.parse(
                        _addPieceState.pieceRepetitionFromController.text,
                      ),
                      measuresToSkipOnRepetition: [
                        int.parse(
                          _addPieceState.pieceRepetitionSkipController.text,
                        )
                      ],
                    ),
                  );
                },
                child: Text('Add repetition'),
              ),
            ],
          ),
      ],
    );
  }
}
