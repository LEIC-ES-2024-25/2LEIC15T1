import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsSearchRecord extends FirestoreRecord {
  ItemsSearchRecord._(
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

  // "search_keywords" field.
  List<String>? _searchKeywords;
  List<String> get searchKeywords => _searchKeywords ?? const [];
  bool hasSearchKeywords() => _searchKeywords != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _searchKeywords = getDataList(snapshotData['search_keywords']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items_search');

  static Stream<ItemsSearchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsSearchRecord.fromSnapshot(s));

  static Future<ItemsSearchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsSearchRecord.fromSnapshot(s));

  static ItemsSearchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemsSearchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsSearchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsSearchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsSearchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsSearchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsSearchRecordData({
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

class ItemsSearchRecordDocumentEquality implements Equality<ItemsSearchRecord> {
  const ItemsSearchRecordDocumentEquality();

  @override
  bool equals(ItemsSearchRecord? e1, ItemsSearchRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        listEquality.equals(e1?.searchKeywords, e2?.searchKeywords);
  }

  @override
  int hash(ItemsSearchRecord? e) =>
      const ListEquality().hash([e?.name, e?.category, e?.searchKeywords]);

  @override
  bool isValidKey(Object? o) => o is ItemsSearchRecord;
}
