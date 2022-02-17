import 'package:cloud_firestore/cloud_firestore.dart';

Map<String, Object?> mapQueryDoc(QueryDocumentSnapshot doc) {
  return Map<String, Object?>.from(doc.data()! as Map<String, dynamic>);
}

Map<String, Object?> mapDoc(DocumentSnapshot doc) {
  return Map<String, Object?>.from(doc.data()! as Map<String, dynamic>);
}

Map<String, Object?> mapObject(Map<String, dynamic> object) {
  return Map<String, Object?>.from(object);
}

List<Map<String, Object?>> mapObjectList(List<dynamic> objectList) {
  return List<Map<String, Object?>>.from(objectList);
}

