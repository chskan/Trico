import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MilestoneRecord extends FirestoreRecord {
  MilestoneRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "oldie" field.
  DocumentReference? _oldie;
  DocumentReference? get oldie => _oldie;
  bool hasOldie() => _oldie != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _oldie = snapshotData['oldie'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Milestone');

  static Stream<MilestoneRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MilestoneRecord.fromSnapshot(s));

  static Future<MilestoneRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MilestoneRecord.fromSnapshot(s));

  static MilestoneRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MilestoneRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MilestoneRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MilestoneRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MilestoneRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MilestoneRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMilestoneRecordData({
  DocumentReference? user,
  DateTime? date,
  String? title,
  String? description,
  DocumentReference? oldie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'date': date,
      'title': title,
      'description': description,
      'oldie': oldie,
    }.withoutNulls,
  );

  return firestoreData;
}

class MilestoneRecordDocumentEquality implements Equality<MilestoneRecord> {
  const MilestoneRecordDocumentEquality();

  @override
  bool equals(MilestoneRecord? e1, MilestoneRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.date == e2?.date &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.oldie == e2?.oldie;
  }

  @override
  int hash(MilestoneRecord? e) => const ListEquality()
      .hash([e?.user, e?.date, e?.title, e?.description, e?.oldie]);

  @override
  bool isValidKey(Object? o) => o is MilestoneRecord;
}
