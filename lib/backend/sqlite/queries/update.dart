import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTS
Future performInserts(
  Database database, {
  String? gmail,
  String? password,
}) {
  final query = '''
INSERT INTO users (gmail, password) 
VALUES ('example@gmail.com', 'securepassword');

''';
  return database.rawQuery(query);
}

/// END INSERTS
