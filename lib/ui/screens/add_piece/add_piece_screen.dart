import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

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
    final _scrollController = useScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add piece'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            controller: _scrollController,
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
                AddRepetitions(scrollController: _scrollController),
                ElevatedButton(
                    onPressed: () async {
                      await _addPieceNotifier.addPiece();
                    },
                    child: Text('Complete'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
