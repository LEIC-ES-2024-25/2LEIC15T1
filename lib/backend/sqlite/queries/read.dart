import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN DISLPLAY EMAIL
Future<List<DislplayEmailRow>> performDislplayEmail(
  Database database,
) {
  final query = '''
select gmail
from users
''';
  return _readQuery(database, query, (d) => DislplayEmailRow(d));
}

class DislplayEmailRow extends SqliteRow {
  DislplayEmailRow(Map<String, dynamic> data) : super(data);
}

/// END DISLPLAY EMAIL

/// BEGIN INSERTSS
Future<List<InsertssRow>> performInsertss(
  Database database,
) {
  final query = '''
INSERT INTO users (gmail, password) 
VALUES ('example@gmail.com', 'securepassword');

''';
  return _readQuery(database, query, (d) => InsertssRow(d));
}

class InsertssRow extends SqliteRow {
  InsertssRow(Map<String, dynamic> data) : super(data);
}

/// END INSERTSS
