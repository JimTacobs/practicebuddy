import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../state/state_providers.dart';
import '../../../shared/shared_widgets.dart';

enum DropdownValue {
  Op,
  Custom,
}

class WorkNumberFields extends HookConsumerWidget {
  const WorkNumberFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceState = ref.watch(addPieceProvider);

    final _dropdownValue = useState(DropdownValue.Op);
    final _customValue = useState('Custom');
    return
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            if (_addPieceState.selectedComposer == null)
            SizedBox(
              width: 100,
              child: DropdownButton<DropdownValue>(
                // underline: Container(height: 1, color: Colors.black54),
                underline: Container(),
                value: _dropdownValue.value,
                items: [
                  DropdownMenuItem(
                    child: Text('Op.'),
                    value: DropdownValue.Op,
                  ),
                  DropdownMenuItem(
                    child: Text(_customValue.value),
                    value: DropdownValue.Custom,
                  ),
                ],
                onChanged: (DropdownValue? val) {
                  _dropdownValue.value = val!;
                  if (val == DropdownValue.Custom) {
                    showDialog(
                      context: context,
                      builder: (_) => SimpleDialog(
                        title: Text('Select custom numbering system'),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              keyboardType: TextInputType.name,
                              controller: _addPieceState.customNumberingSystemController,
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
                      _customValue.value = _addPieceState.customNumberingSystemController.value.text;
                    });
                  }
                },
              ),
            ),
            if (_addPieceState.selectedComposer != null)
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: 80,
                  child: Text(_addPieceState.selectedComposer!.numberingSystem),
                ),
              ),
            SizedBox(
              width: 120,
              child: GenericTextFormField(
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
