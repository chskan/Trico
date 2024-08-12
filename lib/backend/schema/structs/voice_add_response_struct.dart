// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class VoiceAddResponseStruct extends FFFirebaseStruct {
  VoiceAddResponseStruct({
    String? voiceId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _voiceId = voiceId,
        super(firestoreUtilData);

  // "voice_id" field.
  String? _voiceId;
  String get voiceId => _voiceId ?? '';
  set voiceId(String? val) => _voiceId = val;

  bool hasVoiceId() => _voiceId != null;

  static VoiceAddResponseStruct fromMap(Map<String, dynamic> data) =>
      VoiceAddResponseStruct(
        voiceId: data['voice_id'] as String?,
      );

  static VoiceAddResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? VoiceAddResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'voice_id': _voiceId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'voice_id': serializeParam(
          _voiceId,
          ParamType.String,
        ),
      }.withoutNulls;

  static VoiceAddResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VoiceAddResponseStruct(
        voiceId: deserializeParam(
          data['voice_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VoiceAddResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VoiceAddResponseStruct && voiceId == other.voiceId;
  }

  @override
  int get hashCode => const ListEquality().hash([voiceId]);
}

VoiceAddResponseStruct createVoiceAddResponseStruct({
  String? voiceId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VoiceAddResponseStruct(
      voiceId: voiceId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VoiceAddResponseStruct? updateVoiceAddResponseStruct(
  VoiceAddResponseStruct? voiceAddResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    voiceAddResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVoiceAddResponseStructData(
  Map<String, dynamic> firestoreData,
  VoiceAddResponseStruct? voiceAddResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (voiceAddResponse == null) {
    return;
  }
  if (voiceAddResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && voiceAddResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final voiceAddResponseData =
      getVoiceAddResponseFirestoreData(voiceAddResponse, forFieldValue);
  final nestedData =
      voiceAddResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = voiceAddResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVoiceAddResponseFirestoreData(
  VoiceAddResponseStruct? voiceAddResponse, [
  bool forFieldValue = false,
]) {
  if (voiceAddResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(voiceAddResponse.toMap());

  // Add any Firestore field values
  voiceAddResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVoiceAddResponseListFirestoreData(
  List<VoiceAddResponseStruct>? voiceAddResponses,
) =>
    voiceAddResponses
        ?.map((e) => getVoiceAddResponseFirestoreData(e, true))
        .toList() ??
    [];
