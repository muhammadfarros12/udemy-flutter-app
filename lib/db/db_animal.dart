import 'package:belajar_flutter/model/animal.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbAnimal {
  static const DATABASE_NAME = 'animal.db';
  static const DATABASE_VERSION = 1;

  static const TABLE_NAME = 'tb_bookmark';
  static const COLUMN_NAME = 'name';
  static const COLUMN_WEIGHT = 'weight';
  static const COLUMN_IMAGE = 'image';
  static const COLUMN_MOVE = 'move';

  Database? _database;

  //method untuk buat database
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await createDatabase();
    return _database!;
  }

  // method untuk buat database
  Future<Database> createDatabase() async {
    String databasePath = await getDatabasesPath();
    return openDatabase(join(databasePath, DATABASE_NAME),
        version: DATABASE_VERSION, onCreate: (db, version) async {
      await db.execute('''
      CREATE TABLE $TABLE_NAME (
        $COLUMN_NAME TEXT,
        $COLUMN_IMAGE TEXT,
        $COLUMN_MOVE INTEGER,
        $COLUMN_WEIGHT REAL
      )
''');
    });
  }

  // method get dari database
  Future<List<Animal>> getAllAnimal() async {
    final db = await database;
    var animals = await db.query(TABLE_NAME,
        columns: [COLUMN_NAME, COLUMN_IMAGE, COLUMN_MOVE, COLUMN_WEIGHT]);

    List<Animal> listAnimal = [];

    for (var element in animals) {
      listAnimal.add(Animal.fromMap(element));
    }
    return listAnimal;
  }
}
