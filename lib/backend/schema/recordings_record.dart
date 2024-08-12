import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordingsRecord extends FirestoreRecord {
  RecordingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "audio_file" field.
  String? _audioFile;
  String get audioFile => _audioFile ?? '';
  bool hasAudioFile() => _audioFile != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "transcript" field.
  String? _transcript;
  String get transcript => _transcript ?? '';
  bool hasTranscript() => _transcript != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _audioFile = snapshotData['audio_file'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _transcript = snapshotData['transcript'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recordings');

  static Stream<RecordingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecordingsRecord.fromSnapshot(s));

  static Future<RecordingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecordingsRecord.fromSnapshot(s));

  static RecordingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecordingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecordingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecordingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecordingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecordingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecordingsRecordData({
  DocumentReference? user,
  String? audioFile,
  DateTime? date,
  String? transcript,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'audio_file': audioFile,
      'date': date,
      'transcript': transcript,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecordingsRecordDocumentEquality implements Equality<RecordingsRecord> {
  const RecordingsRecordDocumentEquality();

  @override
  bool equals(RecordingsRecord? e1, RecordingsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.audioFile == e2?.audioFile &&
        e1?.date == e2?.date &&
        e1?.transcript == e2?.transcript;
  }

  @override
  int hash(RecordingsRecord? e) => const ListEquality()
      .hash([e?.user, e?.audioFile, e?.date, e?.transcript]);

  @override
  bool isValidKey(Object? o) => o is RecordingsRecord;
}
