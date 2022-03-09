import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(dateTime) => Timestamp.fromDate(dateTime);
}

class TimestampNullableConverter
    implements JsonConverter<DateTime?, Timestamp?> {
  const TimestampNullableConverter();

  @override
  DateTime? fromJson(timestamp) => timestamp?.toDate();

  @override
  Timestamp? toJson(dateTime) =>
      dateTime == null ? null : Timestamp.fromDate(dateTime);
}

class TimestampListConverter
    implements JsonConverter<List<DateTime>, List<Timestamp>> {
  const TimestampListConverter();

  @override
  List<DateTime> fromJson(timestamps) =>
      timestamps.map((e) => e.toDate()).toList();

  @override
  List<Timestamp> toJson(dateTimes) =>
      dateTimes.map((e) => Timestamp.fromDate(e)).toList();
}
