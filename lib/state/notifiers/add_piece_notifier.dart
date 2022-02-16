import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../firestore/firestore_helpers.dart';
import '../../firestore/models/firestore_models.dart';
import '../state_models.dart';

class AddPieceNotifier extends StateNotifier<AddPiece> {
  AddPieceNotifier()
      : super(AddPiece(
          composerFirstNameController: TextEditingController(),
          composerLastNameController: TextEditingController(),
        ));

  /// API calls
  Future<void> getComposers() async {
    CollectionReference composersCollection =
        FirebaseFirestore.instance.collection('composerNames');

    final composersList = <Composer>[];
    await composersCollection.get().then((QuerySnapshot snapshot) {
      for (final doc in snapshot.docs) {
        final _doc = mapQueryDoc(doc);
        composersList.add(mapComposer(_doc, doc.id));
      }
    });

    state = state.copyWith(
      composers: composersList,
    );
  }

  Future<void> getComposerWorks(String id) async {
    CollectionReference composersCollection =
        FirebaseFirestore.instance.collection('composers');

    await composersCollection.doc(id).get().then((DocumentSnapshot snapshot) {
      final _doc = mapDoc(snapshot);

      /// Create mapWorks function
      state = state.copyWith(
          selectedComposer: state.selectedComposer!.copyWith(
        works: mapWorks(_doc['works'] as List<Map<String, Object?>>),
      ));
    });
  }

  /// Composer first and last name selection.
  void addDummyComposer(String lastName) {
    state.composers
        .removeWhere((composer) => composer.lastName.contains(' - Add new'));
    state.composers.insert(
      0,
      Composer(
        lastName: '$lastName - Add new',
        works: [],
        numberingSystem: [],
        dateOfDeath: null,
        dateOfBirth: DateTime.now(),
        firstNames: '',
      ),
    );
  }

  void selectComposer(Composer composer) {
    if (composer.lastName.contains('- Add new')) {
      state = state.copyWith();
      return;
    }
    state = state.copyWith(
      selectedComposer: composer,
    );
  }

  void unselectComposer() {
    state = state.copyWith(
      selectedComposer: null,
    );
  }

  /// Composer set dates
  void setBirthDate(DateTime date) {
    state = state.copyWith(
      dateOfBirth: date,
    );
  }

  void setDeathDate(DateTime date) {
    state = state.copyWith(
      dateOfBirth: date,
    );
  }
}
