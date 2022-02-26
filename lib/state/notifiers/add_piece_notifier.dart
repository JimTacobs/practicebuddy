import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../firestore/firestore_helpers.dart';
import '../../firestore/models/add_piece/work/work_number.dart';
import '../../firestore/models/firestore_models.dart';
import '../state_models.dart';

class AddPieceNotifier extends StateNotifier<AddPiece> {
  AddPieceNotifier()
      : super(AddPiece(
          composerFirstNameController: TextEditingController(),
          composerLastNameController: TextEditingController(),
          workController: TextEditingController(),
          customNumberingSystemController: TextEditingController(),
          workNumberController: TextEditingController(),
          pieceController: TextEditingController(),
          pieceLengthController: TextEditingController(),
          pieceNumberController: TextEditingController(),
          pieceTempoController: TextEditingController(),
          pieceRepetitionToController: TextEditingController(),
          pieceRepetitionSkipController: TextEditingController(),
          pieceRepetitionFromController: TextEditingController(),
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
        FirebaseFirestore.instance.collection('Composers');

    await composersCollection.doc(id).get().then((DocumentSnapshot snapshot) {
      final _doc = mapDoc(snapshot);
      final _works = mapObjectList(_doc['works'] as List<dynamic>);

      state = state.copyWith(
          selectedComposer: state.selectedComposer!.copyWith(
        works: mapWorks(_works),
      ));
    });
  }

  /// Composer first and last name selection.
  void addDummyComposer(String lastName) {
    final _index = state.composers
        .indexWhere((element) => element.lastName.contains(' - Add new'));
    if (_index != -1) {
      state.composers.removeAt(_index);
    }

    state.composers.insert(
      0,
      Composer(
        lastName: '$lastName - Add new',
        works: [],
        numberingSystem: '',
        dateOfDeath: null,
        dateOfBirth: DateTime.now(),
        firstNames: '',
      ),
    );
  }

  void deleteDummyComposer() {
    state.composers
        .removeWhere((composer) => composer.lastName.contains(' - Add new'));
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

  /// Work
  void setWork(Work work) {
    if (work.name.contains('- Add new')) {
      state = state.copyWith();
      return;
    }
    state = state.copyWith(
      selectedWork: work,
    );
  }

  void unselectWork() {
    state = state.copyWith(
      selectedWork: null,
    );
  }

  void addDummyWork(String workName) {
    final _index = state.selectedComposer!.works
        .indexWhere((element) => element.name.contains(' - Add new'));
    if (_index != -1) {
      state.selectedComposer!.works.removeAt(_index);
    }

    state.selectedComposer!.works.insert(
      0,
      Work(
        name: '$workName - Add new',
        instruments: [],
        opusNo: WorkNumber('', 0),
        id: '',
        pieces: [],
      ),
    );
  }

  void deleteDummyWork() {
    state.selectedComposer!.works
        .removeWhere((work) => work.name.contains(' - Add new'));
  }

  /// Piece
  void selectPiece(Piece piece) {
    state = state.copyWith(
      selectedPiece: piece,
    );
  }

  void unselectPiece() {
    state = state.copyWith(
      selectedPiece: null,
    );
  }

  void addDummyPiece(String name) {
    final _index = state.selectedWork!.pieces
        .indexWhere((element) => element.name.contains(' - Add new'));
    if (_index != -1) {
      state.selectedWork!.pieces.removeAt(_index);
    }

    state.selectedWork!.pieces.insert(
        0,
        Piece(
          name: name,
          length: 0,
          requiredTempo: 0,
          id: '',
          repetitions: [],
          number: 0,
        ));
  }

  void deleteDummyPiece() {
    state.selectedWork!.pieces
        .removeWhere((piece) => piece.name.contains(' - Add new'));
  }

  void toggleRepetitions(bool val) {
    state = state.copyWith(
      containsRepetitions: val,
    );
  }

  void addRepetition(Repetition repetition) {
    state.repetitions.add(repetition);
  }
}
