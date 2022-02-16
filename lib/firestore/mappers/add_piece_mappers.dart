import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/add_piece/work/work_number.dart';
import '../../core/enums.dart';
import '../models/firestore_models.dart';

Composer mapComposer(Map<String, Object?> doc, String id) {
  return Composer(
    id: id,
    firstNames: doc['firstNames'] as String,
    lastName: doc['lastName'] as String,
    dateOfBirth: (doc['dateOfBirth'] as Timestamp).toDate(),
    dateOfDeath: (doc['dateOfDeath'] as Timestamp).toDate(),
    numberingSystem: [],
    works: [],
  );
}

List<Work> mapWorks(List<Map<String, Object?>> docs) {
  final works = <Work>[];
  for (final doc in docs) {
    works.add(Work(
        instrument: Instrument.values
            .firstWhere((i) => i.toString() == doc['instrument']),
        name: doc['name'] as String,
        opusNo: _mapWorkNumber(doc['opusNo'] as List<Map<String, Object?>>),
        pieces: _mapPieces(doc['pieces'] as List<Map<String, Object?>>)));
  }
  return works;
}

List<Piece> _mapPieces(List<Map<String, Object?>> docs) {
  final pieces = <Piece>[];
  for (final doc in docs) {
    pieces.add(Piece(
      length: doc['length'] as int,
      id: doc['id'] as String,
      repetitions:
          _mapRepetitions(doc['repetitions'] as List<Map<String, Object?>>),
    ));
  }
  return pieces;
}

List<Repetition> _mapRepetitions(List<Map<String, Object?>> docs) {
  final repetitions = <Repetition>[];
  for (final doc in docs) {
    repetitions.add(Repetition(
      firstMeasure: doc['firstMeasure'] as int,
      lastMeasure: doc['lastMeasure'] as int,
      nextMeasure: doc['nextMeasure'] as int,
      measuresToSkipOnRepetition:
          doc['measuresToSkipOnRepetition'] as List<int>,
    ));
  }
  return repetitions;
}

List<WorkNumber> _mapWorkNumber(List<Map<String, Object?>> docs) {
  final workNumbers = <WorkNumber>[];
  for (final doc in docs) {
    workNumbers.add(WorkNumber(
      doc['numberingSystem'] as String,
      doc['number'] as int,
    ));
  }
  return workNumbers;
}
