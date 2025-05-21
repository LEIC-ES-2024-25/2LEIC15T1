import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengesRecord extends FirestoreRecord {
  ChallengesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "goal" field.
  int? _goal;
  int get goal => _goal ?? 0;
  bool hasGoal() => _goal != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _goal = castToType<int>(snapshotData['goal']);
    _points = castToType<int>(snapshotData['points']);
    _level = castToType<int>(snapshotData['level']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenges');

  static Stream<ChallengesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengesRecord.fromSnapshot(s));

  static Future<ChallengesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChallengesRecord.fromSnapshot(s));

  static ChallengesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengesRecordData({
  String? type,
  String? description,
  int? goal,
  int? points,
  int? level,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'description': description,
      'goal': goal,
      'points': points,
      'level': level,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengesRecordDocumentEquality implements Equality<ChallengesRecord> {
  const ChallengesRecordDocumentEquality();

  @override
  bool equals(ChallengesRecord? e1, ChallengesRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.goal == e2?.goal &&
        e1?.points == e2?.points &&
        e1?.level == e2?.level;
  }

  @override
  int hash(ChallengesRecord? e) => const ListEquality()
      .hash([e?.type, e?.description, e?.goal, e?.points, e?.level]);

  @override
  bool isValidKey(Object? o) => o is ChallengesRecord;
}
