import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDatabase {
  static Future<Database> initializeDatabase() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'contacts_list');

    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS contacts_list (
            name TEXT PRIMARY KEY,
            mobileNumber TEXT,
            landline TEXT,
            favorite INTEGER,
            image TEXT
          )
        ''');
      },
    );
  }

  static Future<void> insertUser(
    Database db,
    String name,
    String mobileNumber,
    String landline,
    int favorite,
    String? image,
  ) async {
    await db.insert(
      'contacts_list',
      {
        'name': name,
        'mobileNumber': mobileNumber,
        'landline': landline,
        'favorite': favorite,
        'image': image ?? '',
      },
    );
  }

  static Future<void> updateData({
    required Database db,
    required String contactToUpdate,
    required String name,
    required String mobileNumber,
    required String landline,
    required int favorite,
    required String image,
  }) async {
    db.rawUpdate(
        'UPDATE contacts_list SET name = ?, '
        'mobileNumber = ?, landline = ?, '
        'favorite = ?, image = ? WHERE name = ?',
        [name, mobileNumber, landline, favorite, image, contactToUpdate]);
  }

  static Future<List<Map<String, Object?>>> selectData(
    Database db,
    String name,
  ) async {
    return await db
        .rawQuery('SELECT * FROM contacts_list WHERE name = ?', [name]);
  }

  static Future<int> deleteData(Database db, String name) async {
    return await db
        .rawDelete('DELETE FROM contacts_list WHERE name = ?', [name]);
  }
}
