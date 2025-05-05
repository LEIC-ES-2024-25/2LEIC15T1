import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BinsRecord extends FirestoreRecord {
  BinsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _location = snapshotData['Location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bins');

  static Stream<BinsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BinsRecord.fromSnapshot(s));

  static Future<BinsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BinsRecord.fromSnapshot(s));

  static BinsRecord fromSnapshot(DocumentSnapshot snapshot) => BinsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BinsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BinsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BinsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BinsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBinsRecordData({
  String? name,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class BinsRecordDocumentEquality implements Equality<BinsRecord> {
  const BinsRecordDocumentEquality();

  @override
  bool equals(BinsRecord? e1, BinsRecord? e2) {
    return e1?.name == e2?.name && e1?.location == e2?.location;
  }

  @override
  int hash(BinsRecord? e) => const ListEquality().hash([e?.name, e?.location]);

  @override
  bool isValidKey(Object? o) => o is BinsRecord;
}
