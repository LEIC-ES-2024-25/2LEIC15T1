import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserChallengesRecord extends FirestoreRecord {
  UserChallengesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "challenge_ref" field.
  DocumentReference? _challengeRef;
  DocumentReference? get challengeRef => _challengeRef;
  bool hasChallengeRef() => _challengeRef != null;

  // "progress" field.
  int? _progress;
  int get progress => _progress ?? 0;
  bool hasProgress() => _progress != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "goal" field.
  int? _goal;
  int get goal => _goal ?? 0;
  bool hasGoal() => _goal != null;

  void _initializeFields() {
    _challengeRef = snapshotData['challenge_ref'] as DocumentReference?;
    _progress = castToType<int>(snapshotData['progress']);
    _completed = snapshotData['completed'] as bool?;
    _userEmail = snapshotData['userEmail'] as String?;
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _points = castToType<int>(snapshotData['points']);
    _goal = castToType<int>(snapshotData['goal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_challenges');

  static Stream<UserChallengesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserChallengesRecord.fromSnapshot(s));

  static Future<UserChallengesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserChallengesRecord.fromSnapshot(s));

  static UserChallengesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserChallengesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserChallengesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserChallengesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserChallengesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserChallengesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserChallengesRecordData({
  DocumentReference? challengeRef,
  int? progress,
  bool? completed,
  String? userEmail,
  String? type,
  String? description,
  int? points,
  int? goal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'challenge_ref': challengeRef,
      'progress': progress,
      'completed': completed,
      'userEmail': userEmail,
      'type': type,
      'description': description,
      'points': points,
      'goal': goal,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserChallengesRecordDocumentEquality
    implements Equality<UserChallengesRecord> {
  const UserChallengesRecordDocumentEquality();

  @override
  bool equals(UserChallengesRecord? e1, UserChallengesRecord? e2) {
    return e1?.challengeRef == e2?.challengeRef &&
        e1?.progress == e2?.progress &&
        e1?.completed == e2?.completed &&
        e1?.userEmail == e2?.userEmail &&
        e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.points == e2?.points &&
        e1?.goal == e2?.goal;
  }

  @override
  int hash(UserChallengesRecord? e) => const ListEquality().hash([
        e?.challengeRef,
        e?.progress,
        e?.completed,
        e?.userEmail,
        e?.type,
        e?.description,
        e?.points,
        e?.goal
      ]);

  @override
  bool isValidKey(Object? o) => o is UserChallengesRecord;
}
