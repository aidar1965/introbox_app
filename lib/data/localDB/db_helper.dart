import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DbHelper {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initWinDB();
    return _database!;
  }

  Future<Database> initWinDB() async {
    sqfliteFfiInit();
    final databaseFactory = databaseFactoryFfi;
    final appDocumentsDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentsDir.path, "databases", "data.db");
    return await databaseFactory.openDatabase(
      dbPath,
      options: OpenDatabaseOptions(
          onCreate: _onCreate, version: 1, onUpgrade: _onUpgrade),
    );
  }

  Future<void> _onCreate(Database database, int version) async {
    final db = database;
    await db.execute(""" CREATE TABLE IF NOT EXISTS fragment_category(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS fragment(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            description TEXT,
            image_path TEXT,
            duration INT,
            audio_path TEXT, 
            created_at TEXT NOT NULL,
            updated_at TEXT,
            remote_id INT
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS subject_category(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS subject(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            description TEXT,
            pdf_file TEXT,
            duration INT,
            links TEXT,
            remote_id INT,
            created_at TEXT NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS course_category(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS course(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            description TEXT,
            price REAL DEFAULT 0,
            is_published INT DEFAULT 0,
            created_at TEXT NOT NULL,
            updated_at TEXT,
            lang TEXT,
            duration INT,
            remote_id INT
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS subject_fragment(
            subject_id INTEGER NOT NULL,
            fragment_id INTEGER NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS course_subject(
            course_id INTEGER NOT NULL,
            subject_id INTEGER NOT NULL
            )
  """);
  }

  final addPdfSubjectQuery = '''
    INSERT INTO subject (
    title, 
    description, 
    pdf_file,
    created_at, 
    duration) 
    VALUES (?, ?, ?, ?, ?)
 ''';

  final addPdfFragmentQuery = '''
    INSERT INTO fragment (
    title, 
    description, 
    audio_path, 
    image_path, 
    created_at, 
    duration) 
    VALUES (?, ?, ?, ?, ?, ?)
 ''';

  final addFragmentSubject = ''' 
    INSERT INTO subject_fragment (subject_id, fragment_id) 
    VALUES (?, ?)''';

  final getSubjects = ''' 
    SELECT * FROM subject ORDER BY id DESC''';

  FutureOr<void> _onUpgrade(
      Database db, int oldVersion, int newVersion) async {}
}
