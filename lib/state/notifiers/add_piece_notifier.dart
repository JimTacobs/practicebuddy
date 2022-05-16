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
          dateOfBirthDayController: TextEditingController(),
          dateOfBirthMonthController: TextEditingController(),
          dateOfBirthYearController: TextEditingController(),
          dateOfDeathDayController: TextEditingController(),
          dateOfDeathMonthController: TextEditingController(),
          dateOfDeathYearController: TextEditingController(),
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

  final _composerNamesRef = FirebaseFirestore.instance
      .collection('composerNames')
      .withConverter<Composer>(
        fromFirestore: (snapshot, _) => Composer.fromJson(snapshot.data()!),
        toFirestore: (composer, _) => composer.toJson(),
      );

  final _composersRef = FirebaseFirestore.instance
      .collection('Composers')
      .withConverter<Composer>(
        fromFirestore: (snapshot, _) => Composer.fromJson(snapshot.data()!),
        toFirestore: (composer, _) => composer.toJson(),
      );

  Future<void> addPiece() async {
    if (state.selectedComposer == null) {
      final birthDay = int.parse(state.dateOfBirthDayController.value.text);
      final birthMonth = int.parse(state.dateOfBirthMonthController.value.text);
      final birthYear = int.parse(state.dateOfBirthYearController.value.text);

      final deathDay = int.parse(state.dateOfDeathDayController.value.text);
      final deathMonth = int.parse(state.dateOfDeathMonthController.value.text);
      final deathYear = int.parse(state.dateOfDeathYearController.value.text);

      state = state.copyWith(
        dateOfBirth: DateTime(birthYear, birthMonth, birthDay, 12),
        dateOfDeath: DateTime(deathYear, deathMonth, deathDay, 12),
      );

      await _composerNamesRef.add(Composer(
        dateOfBirth: state.dateOfBirth ?? DateTime.now(),
        dateOfDeath: state.dateOfDeath,
        firstNames: state.composerFirstNameController.value.text,
        lastName: state.composerLastNameController.value.text,
        numberingSystem:
            state.customNumberingSystemController.value.text.trim().split(' '),
        works: [

        ],
      ));

      return;
    }

    if (state.selectedWork == null) {

    }

    /// Clear all controllers when done. Perhaps just rebuild this entire provider.
  }

  /// API calls
  Future<void> getComposers() async {
    List<Composer> composersList =
        await _composerNamesRef.get().then((snapshot) => snapshot.docs.map((e) {
              Composer _composer = e.data().copyWith(id: e.id);
              return _composer;
            }).toList());

    state = state.copyWith(
      composers: composersList,
    );
  }

  Future<void> getComposerWorks(String id) async {
    List<Work> _composerWorks = await _composersRef
        .doc(id)
        .get()
        .then((snapshot) => snapshot.data()!.works);

    state = state.copyWith(
      selectedComposer: state.selectedComposer!.copyWith(
        works: _composerWorks,
      ),
    );
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
        numberingSystem: [''],
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

  Future<void> selectComposer(Composer composer) async {
    if (composer.lastName.contains('- Add new')) {
      state = state.copyWith();
      return;
    }
    state = state.copyWith(
      selectedComposer: composer,
    );
    await getComposerWorks(composer.id!);
  }

  void unselectComposer() {
    state = state.copyWith(
      selectedComposer: null,
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
        opusNo: WorkNumber(numberingSystem: '', number: 0),
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
    state = state.copyWith(
      repetitions: [
        ...state.repetitions,
        repetition,
      ],
    );
  }
}
