import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RemindersRecord extends FirestoreRecord {
  RemindersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "medication" field.
  String? _medication;
  String get medication => _medication ?? '';
  bool hasMedication() => _medication != null;

  // "hour" field.
  int? _hour;
  int get hour => _hour ?? 0;
  bool hasHour() => _hour != null;

  // "minutes" field.
  int? _minutes;
  int get minutes => _minutes ?? 0;
  bool hasMinutes() => _minutes != null;

  // "trico_link" field.
  DocumentReference? _tricoLink;
  DocumentReference? get tricoLink => _tricoLink;
  bool hasTricoLink() => _tricoLink != null;

  void _initializeFields() {
    _medication = snapshotData['medication'] as String?;
    _hour = castToType<int>(snapshotData['hour']);
    _minutes = castToType<int>(snapshotData['minutes']);
    _tricoLink = snapshotData['trico_link'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reminders');

  static Stream<RemindersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RemindersRecord.fromSnapshot(s));

  static Future<RemindersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RemindersRecord.fromSnapshot(s));

  static RemindersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RemindersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RemindersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RemindersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RemindersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RemindersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRemindersRecordData({
  String? medication,
  int? hour,
  int? minutes,
  DocumentReference? tricoLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'medication': medication,
      'hour': hour,
      'minutes': minutes,
      'trico_link': tricoLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class RemindersRecordDocumentEquality implements Equality<RemindersRecord> {
  const RemindersRecordDocumentEquality();

  @override
  bool equals(RemindersRecord? e1, RemindersRecord? e2) {
    return e1?.medication == e2?.medication &&
        e1?.hour == e2?.hour &&
        e1?.minutes == e2?.minutes &&
        e1?.tricoLink == e2?.tricoLink;
  }

  @override
  int hash(RemindersRecord? e) => const ListEquality()
      .hash([e?.medication, e?.hour, e?.minutes, e?.tricoLink]);

  @override
  bool isValidKey(Object? o) => o is RemindersRecord;
}
