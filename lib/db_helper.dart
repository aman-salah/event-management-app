import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  static Database? _database;

  DBHelper._internal();

  factory DBHelper() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'event_manager.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    // Create Users Table
    await db.execute('''
      CREATE TABLE Users (
        user_id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT,
        last_name TEXT,
        email TEXT,
        password TEXT,
        role TEXT
      )
    ''');

    // Create Events Table
    await db.execute('''
      CREATE TABLE Events (
        event_id INTEGER PRIMARY KEY AUTOINCREMENT,
        event_name TEXT,
        event_date TEXT,
        event_time TEXT,
        event_location TEXT,
        created_by TEXT
      )
    ''');

    // Create Tickets Table
    await db.execute('''
      CREATE TABLE Tickets (
        ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
        ticket_type TEXT,
        price INTEGER,
        event_id INTEGER,
        user_id INTEGER,
        FOREIGN KEY(event_id) REFERENCES Events(event_id),
        FOREIGN KEY(user_id) REFERENCES Users(user_id)
      )
    ''');

    // Create Registrations Table
    await db.execute('''
      CREATE TABLE Registrations (
        registration_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        event_id INTEGER,
        registration_date TEXT,
        FOREIGN KEY(user_id) REFERENCES Users(user_id),
        FOREIGN KEY(event_id) REFERENCES Events(event_id)
      )
    ''');

    // Create Event_Sponsors Table
    await db.execute('''
      CREATE TABLE Event_Sponsors (
        sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
        sponsor_name TEXT,
        contact_info INTEGER,
        event_id INTEGER,
        FOREIGN KEY(event_id) REFERENCES Events(event_id)
      )
    ''');

    // Create Payments Table
    await db.execute('''
      CREATE TABLE Payments (
        payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
        amount INTEGER,
        payment_date TEXT,
        ticket_id INTEGER,
        user_id INTEGER,
        FOREIGN KEY(ticket_id) REFERENCES Tickets(ticket_id),
        FOREIGN KEY(user_id) REFERENCES Users(user_id)
      )
    ''');

    // Create Event_Feedback Table
    await db.execute('''
      CREATE TABLE Event_Feedback (
        feedback_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        event_id INTEGER,
        feedback_text TEXT,
        rating INTEGER,
        FOREIGN KEY(user_id) REFERENCES Users(user_id),
        FOREIGN KEY(event_id) REFERENCES Events(event_id)
      )
    ''');
  }

  Future closeDB() async {
    final db = await database;
    db.close();
  }
}
