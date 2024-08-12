import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LinkRecord extends FirestoreRecord {
  LinkRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "companion" field.
  DocumentReference? _companion;
  DocumentReference? get companion => _companion;
  bool hasCompanion() => _companion != null;

  // "oldie" field.
  DocumentReference? _oldie;
  DocumentReference? get oldie => _oldie;
  bool hasOldie() => _oldie != null;

  // "link_name" field.
  String? _linkName;
  String get linkName => _linkName ?? '';
  bool hasLinkName() => _linkName != null;

  void _initializeFields() {
    _companion = snapshotData['companion'] as DocumentReference?;
    _oldie = snapshotData['oldie'] as DocumentReference?;
    _linkName = snapshotData['link_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Link');

  static Stream<LinkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LinkRecord.fromSnapshot(s));

  static Future<LinkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LinkRecord.fromSnapshot(s));

  static LinkRecord fromSnapshot(DocumentSnapshot snapshot) => LinkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LinkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LinkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LinkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LinkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLinkRecordData({
  DocumentReference? companion,
  DocumentReference? oldie,
  String? linkName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companion': companion,
      'oldie': oldie,
      'link_name': linkName,
    }.withoutNulls,
  );

  return firestoreData;
}

class LinkRecordDocumentEquality implements Equality<LinkRecord> {
  const LinkRecordDocumentEquality();

  @override
  bool equals(LinkRecord? e1, LinkRecord? e2) {
    return e1?.companion == e2?.companion &&
        e1?.oldie == e2?.oldie &&
        e1?.linkName == e2?.linkName;
  }

  @override
  int hash(LinkRecord? e) =>
      const ListEquality().hash([e?.companion, e?.oldie, e?.linkName]);

  @override
  bool isValidKey(Object? o) => o is LinkRecord;
}
