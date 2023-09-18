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
    return await databaseFactory.openDatabase(
      inMemoryDatabasePath,
      options: OpenDatabaseOptions(
        onCreate: _onCreate,
        version: 1,
      ),
    );
  }

  Future<void> _onCreate(Database database, int version) async {
    final db = database;
    await db.execute(""" CREATE TABLE IF NOT EXISTS fragment_category(
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS fragment(
            id INTEGER PRIMARY KEY,
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
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS subject(
            id INTEGER PRIMARY KEY,
            title TEXT NOT NULL,
            description TEXT,
            duration INT,
            links TEXT,
            remote_id INT
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS course_category(
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL
            )
  """);
    await db.execute(""" CREATE TABLE IF NOT EXISTS course(
            id INTEGER PRIMARY KEY,
            title TEXT NOT NULL,
            description TEXT,
            price REAL DEFAULT 0,
            is_published INT DEFAULT 0,
            created_at INT NOT NULL,
            updated_at INT,
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
}
