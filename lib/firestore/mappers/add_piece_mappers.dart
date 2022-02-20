import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/enums.dart';
import '../models/add_piece/work/work_number.dart';
import '../models/firestore_models.dart';
import 'util_mappers.dart';

Composer mapComposer(Map<String, Object?> doc, String id) {
  return Composer(
    id: id,
    firstNames: doc['firstNames'] as String,
    lastName: doc['lastName'] as String,
    dateOfBirth: (doc['dateOfBirth'] as Timestamp).toDate(),
    dateOfDeath: (doc['dateOfDeath'] as Timestamp).toDate(),
    numberingSystem: doc['numberingSystem'] as String,
    works: [],
  );
}

List<Work> mapWorks(List<dynamic> docs) {
  final _docs = mapObjectList(docs);
  final works = <Work>[];
  for (final doc in _docs) {
    works.add(
      Work(
        instruments: _mapInstruments(doc['instruments'] as List<dynamic>),
        name: doc['name'] as String,
        opusNo: _mapWorkNumber(doc['opusNo'] as Map<String, dynamic>),
        pieces: _mapPieces(doc['pieces'] as List<dynamic>),
        id: doc['id'] as String,
      ),
    );
  }
  return works;
}

List<Instrument> _mapInstruments(List<dynamic> instruments) {
  final _instruments = <Instrument>[];

  for (final instrument in instruments) {
    _instruments.add(Instrument.values.firstWhere((i) =>
        i.toString() == 'Instrument.${instrument.toString().toLowerCase()}'));
  }

  return _instruments;
}

List<Piece> _mapPieces(List<dynamic> docs) {
  final _docs = mapObjectList(docs);
  final pieces = <Piece>[];
  for (final doc in _docs) {
    pieces.add(Piece(
      name: doc['name'] as String,
      length: doc['length'] as int,
      id: doc['id'] as String,
      repetitions: _mapRepetitions(doc['repetitions'] as List<dynamic>),
      requiredTempo: doc['requiredTempo'] as int,
      number: doc['number'] as int,
    ));
  }
  return pieces;
}

List<Repetition> _mapRepetitions(List<dynamic> docs) {
  final _docs = mapObjectList(docs);
  final repetitions = <Repetition>[];
  for (final doc in _docs) {
    repetitions.add(Repetition(
      firstMeasure: doc['firstMeasure'] as int,
      lastMeasure: doc['lastMeasure'] as int,
      nextMeasure: doc['nextMeasure'] as int,
      measuresToSkipOnRepetition: _mapMeasuresToSkipOnRepetition(
          doc['measuresToSkipOnRepetition'] as List<dynamic>),
    ));
  }
  return repetitions;
}

List<int> _mapMeasuresToSkipOnRepetition(List<dynamic> docs) {
  return List<int>.from(docs);
}

WorkNumber _mapWorkNumber(Map<String, dynamic> doc) {
  final _doc = mapObject(doc);
  return WorkNumber(
    _doc['numberingSystem'] as String,
    _doc['number'] as int,
  );
}
