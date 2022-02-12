import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../firestore/firestore_helpers.dart';
import '../../firestore/models/firestore_models.dart';
import '../state_models.dart';

class AddPieceNotifier extends StateNotifier<AddPiece> {
  AddPieceNotifier()
      : super(AddPiece(
          composerDateOfBirthController: TextEditingController(),
          composerDateOfDeathController: TextEditingController(),
          composerFirstNameController: TextEditingController(),
          composerLastNameController: TextEditingController(),
        ));

  Future<void> getComposers() async {
    CollectionReference composersCollection =
        FirebaseFirestore.instance.collection('composerNames');

    final composersList = <Composer>[];
    await composersCollection.get().then((QuerySnapshot snapshot) {
      for (final doc in snapshot.docs) {
        final _doc = mapDoc(doc);
        composersList.add(mapComposer(_doc));
      }
    });

    state = state.copyWith(
      composers: composersList,
      filteredComposers: composersList,
    );
  }

  void selectComposer(Composer composer) {
    state = state.copyWith(
      selectedComposer: composer,
    );
  }
}
