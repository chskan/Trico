// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GeonamesStruct extends FFFirebaseStruct {
  GeonamesStruct({
    String? name,
    double? lat,
    double? lng,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _lat = lat,
        _lng = lng,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "lng" field.
  double? _lng;
  double get lng => _lng ?? 0.0;
  set lng(double? val) => _lng = val;

  void incrementLng(double amount) => lng = lng + amount;

  bool hasLng() => _lng != null;

  static GeonamesStruct fromMap(Map<String, dynamic> data) => GeonamesStruct(
        name: data['name'] as String?,
        lat: castToType<double>(data['lat']),
        lng: castToType<double>(data['lng']),
      );

  static GeonamesStruct? maybeFromMap(dynamic data) =>
      data is Map ? GeonamesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'lat': _lat,
        'lng': _lng,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'lng': serializeParam(
          _lng,
          ParamType.double,
        ),
      }.withoutNulls;

  static GeonamesStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeonamesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        lng: deserializeParam(
          data['lng'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'GeonamesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeonamesStruct &&
        name == other.name &&
        lat == other.lat &&
        lng == other.lng;
  }

  @override
  int get hashCode => const ListEquality().hash([name, lat, lng]);
}

GeonamesStruct createGeonamesStruct({
  String? name,
  double? lat,
  double? lng,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GeonamesStruct(
      name: name,
      lat: lat,
      lng: lng,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GeonamesStruct? updateGeonamesStruct(
  GeonamesStruct? geonames, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    geonames
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGeonamesStructData(
  Map<String, dynamic> firestoreData,
  GeonamesStruct? geonames,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (geonames == null) {
    return;
  }
  if (geonames.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && geonames.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final geonamesData = getGeonamesFirestoreData(geonames, forFieldValue);
  final nestedData = geonamesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = geonames.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGeonamesFirestoreData(
  GeonamesStruct? geonames, [
  bool forFieldValue = false,
]) {
  if (geonames == null) {
    return {};
  }
  final firestoreData = mapToFirestore(geonames.toMap());

  // Add any Firestore field values
  geonames.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGeonamesListFirestoreData(
  List<GeonamesStruct>? geonamess,
) =>
    geonamess?.map((e) => getGeonamesFirestoreData(e, true)).toList() ?? [];
