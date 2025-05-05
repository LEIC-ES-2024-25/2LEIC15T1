import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecyclingActionRecord extends FirestoreRecord {
  RecyclingActionRecord._(
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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _image = snapshotData['image'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _points = castToType<int>(snapshotData['points']);
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recycling_action');

  static Stream<RecyclingActionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecyclingActionRecord.fromSnapshot(s));

  static Future<RecyclingActionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecyclingActionRecord.fromSnapshot(s));

  static RecyclingActionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecyclingActionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecyclingActionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecyclingActionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecyclingActionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecyclingActionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecyclingActionRecordData({
  String? name,
  String? category,
  String? image,
  DateTime? date,
  int? points,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'image': image,
      'date': date,
      'points': points,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecyclingActionRecordDocumentEquality
    implements Equality<RecyclingActionRecord> {
  const RecyclingActionRecordDocumentEquality();

  @override
  bool equals(RecyclingActionRecord? e1, RecyclingActionRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.image == e2?.image &&
        e1?.date == e2?.date &&
        e1?.points == e2?.points &&
        e1?.email == e2?.email;
  }

  @override
  int hash(RecyclingActionRecord? e) => const ListEquality()
      .hash([e?.name, e?.category, e?.image, e?.date, e?.points, e?.email]);

  @override
  bool isValidKey(Object? o) => o is RecyclingActionRecord;
}
