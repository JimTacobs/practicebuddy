import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../state/state_providers.dart';
import '../../../shared/shared_widgets.dart';

class WorkNumberFields extends HookConsumerWidget {
  const WorkNumberFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceState = ref.watch(addPieceProvider);

    final _dropdownValue =
        useState(_addPieceState.selectedComposer?.numberingSystem[0] ?? 'Op');
    final _customValue = useState('Custom');
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: DropdownButton<String>(
              underline: Container(),
              value: _dropdownValue.value,
              items: [
                if (_addPieceState.selectedComposer != null)
                  ..._addPieceState.selectedComposer!.numberingSystem
                      .map((system) => DropdownMenuItem(
                            child: Text(system),
                            value: system,
                          ))
                      .toList(),
                DropdownMenuItem(
                  child: Text('Op.'),
                  value: 'Op',
                ),
                DropdownMenuItem(
                  child: Text(_customValue.value),
                  value: 'Custom',
                ),
              ],
              onChanged: (String? val) {
                _dropdownValue.value = val!;
                if (val == 'Custom') {
                  showDialog(
                    context: context,
                    builder: (_) => SimpleDialog(
                      title: Text('Select custom numbering system'),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            controller:
                                _addPieceState.customNumberingSystemController,
                            autofocus: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            child: Text('Ok'),
                          ),
                        ),
                      ],
                    ),
                  ).then((val) {
                    _customValue.value = _addPieceState
                        .customNumberingSystemController.value.text;
                  });
                }
              },
            ),
          ),
          SizedBox(
            width: 120,
            child: GenericTextFormField(
              required: true,
              controller: _addPieceState.workNumberController,
              hintText: 'Number',
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }
}
