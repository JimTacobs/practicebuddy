import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../state/state_providers.dart';
import '../../shared/shared_widgets.dart';
import 'widgets/add_piece_widgets.dart';

class AddPieceScreen extends HookConsumerWidget {
  const AddPieceScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _addPieceNotifier = ref.watch(addPieceProvider.notifier);
    final _addPieceState = ref.watch(addPieceProvider);
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add piece'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormTitle(
                  title: 'Composer',
                  showEditIcon: _addPieceState.selectedComposer != null,
                  onEditCb: () {
                    _addPieceNotifier.unselectComposer();
                    _addPieceNotifier.unselectWork();
                    _addPieceNotifier.unselectPiece();
                  },
                ),
                if (_addPieceState.selectedComposer == null)
                  const AddComposerForm(),
                if (_addPieceState.selectedComposer != null)
                  const AddComposerReadonlyInfo(),
                FormTitle(
                  title: 'Work',
                  showEditIcon: (_addPieceState.selectedWork != null),
                  onEditCb: () {
                    _addPieceNotifier.unselectWork();
                    _addPieceNotifier.unselectPiece();
                  },
                ),
                if (_addPieceState.selectedWork == null) const AddWorkForm(),
                if (_addPieceState.selectedWork != null)
                  const Text('Show readonly summary of work here!'),
                FormTitle(
                  title: 'Piece',
                  showEditIcon: (_addPieceState.selectedPiece != null),
                  onEditCb: () {
                    _addPieceNotifier.unselectPiece();
                  },
                ),
                const AddPieceForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
