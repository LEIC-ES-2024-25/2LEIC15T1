import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfoRecord extends FirestoreRecord {
  InfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('info');

  static Stream<InfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InfoRecord.fromSnapshot(s));

  static Future<InfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InfoRecord.fromSnapshot(s));

  static InfoRecord fromSnapshot(DocumentSnapshot snapshot) => InfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInfoRecordData({
  String? name,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class InfoRecordDocumentEquality implements Equality<InfoRecord> {
  const InfoRecordDocumentEquality();

  @override
  bool equals(InfoRecord? e1, InfoRecord? e2) {
    return e1?.name == e2?.name && e1?.category == e2?.category;
  }

  @override
  int hash(InfoRecord? e) => const ListEquality().hash([e?.name, e?.category]);

  @override
  bool isValidKey(Object? o) => o is InfoRecord;
}
