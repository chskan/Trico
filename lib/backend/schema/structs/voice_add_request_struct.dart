// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VoiceAddRequestStruct extends FFFirebaseStruct {
  VoiceAddRequestStruct({
    String? name,
    List<String>? files,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _files = files,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "files" field.
  List<String>? _files;
  List<String> get files => _files ?? const [];
  set files(List<String>? val) => _files = val;

  void updateFiles(Function(List<String>) updateFn) {
    updateFn(_files ??= []);
  }

  bool hasFiles() => _files != null;

  static VoiceAddRequestStruct fromMap(Map<String, dynamic> data) =>
      VoiceAddRequestStruct(
        name: data['name'] as String?,
        files: getDataList(data['files']),
      );

  static VoiceAddRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? VoiceAddRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'files': _files,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'files': serializeParam(
          _files,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static VoiceAddRequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      VoiceAddRequestStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        files: deserializeParam<String>(
          data['files'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'VoiceAddRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VoiceAddRequestStruct &&
        name == other.name &&
        listEquality.equals(files, other.files);
  }

  @override
  int get hashCode => const ListEquality().hash([name, files]);
}

VoiceAddRequestStruct createVoiceAddRequestStruct({
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VoiceAddRequestStruct(
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VoiceAddRequestStruct? updateVoiceAddRequestStruct(
  VoiceAddRequestStruct? voiceAddRequest, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    voiceAddRequest
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVoiceAddRequestStructData(
  Map<String, dynamic> firestoreData,
  VoiceAddRequestStruct? voiceAddRequest,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (voiceAddRequest == null) {
    return;
  }
  if (voiceAddRequest.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && voiceAddRequest.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final voiceAddRequestData =
      getVoiceAddRequestFirestoreData(voiceAddRequest, forFieldValue);
  final nestedData =
      voiceAddRequestData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = voiceAddRequest.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVoiceAddRequestFirestoreData(
  VoiceAddRequestStruct? voiceAddRequest, [
  bool forFieldValue = false,
]) {
  if (voiceAddRequest == null) {
    return {};
  }
  final firestoreData = mapToFirestore(voiceAddRequest.toMap());

  // Add any Firestore field values
  voiceAddRequest.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVoiceAddRequestListFirestoreData(
  List<VoiceAddRequestStruct>? voiceAddRequests,
) =>
    voiceAddRequests
        ?.map((e) => getVoiceAddRequestFirestoreData(e, true))
        .toList() ??
    [];
