import 'package:cloud_firestore/cloud_firestore.dart';

Map<String, Object?> mapQueryDoc(QueryDocumentSnapshot doc) {
  return Map<String, Object?>.from(doc.data()! as Map<String, dynamic>);
}

Map<String, Object?> mapDoc(DocumentSnapshot doc) {
  return Map<String, Object?>.from(doc.data()! as Map<String, dynamic>);
}