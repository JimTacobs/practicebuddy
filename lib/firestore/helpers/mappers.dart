import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/firestore_models.dart';

Map<String, Object?> mapDoc(QueryDocumentSnapshot doc) {
  return Map<String, Object?>.from(doc.data()! as Map<String, dynamic>);
}

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
