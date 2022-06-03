import 'package:doge_finances/app/doge_finances/domain/entities/account.dart';
import 'package:doge_finances/app/doge_finances/domain/entities/transfer.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DogeFinancesDatabase {
  static final DogeFinancesDatabase databaseInstance =
      DogeFinancesDatabase._init();

  static Database? _database;

  DogeFinancesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('dogefinances.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, filePath);

    return openDatabase(path, version: 1, onCreate: _createDB, onConfigure: _onConfigure);
  }

  static Future _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  Future _createDB(Database database, int version) async {
    final idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    final boolType = "BOOLEAN NOT NULL";
    final intType = "INTEGER NOT NULL";
    final realType = "REAL NOT NULL";
    final textType = "TEXT NOT NULL";

    await database.execute("""
      CREATE $accountsTable  (
      ${AccountFields.id} $idType,
      ${AccountFields.balance} $realType,
      ${AccountFields.color} $textType,
      )
      
      CREATE $transfersTable  (
      ${TransferFields.id} $idType,
      ${TransferFields.value} $realType,
      ${TransferFields.originAccountID} $intType,
      FOREIGN KEY (${TransferFields.originAccountID}) REFERENCES (${AccountFields.id}),
      ${TransferFields.destinationAccountID} $intType,
      FOREIGN KEY (${TransferFields.destinationAccountID}) REFERENCES (${AccountFields.id}),
      ${TransferFields.description} $textType,
      ${TransferFields.date} $textType,
      )
      """);
  }

  Future close() async {
    final database = await databaseInstance.database;

    database.close();
  }
}
