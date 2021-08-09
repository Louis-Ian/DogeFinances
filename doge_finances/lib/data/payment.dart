import 'package:flutter/widgets.dart';
import 'package:doge_finances/data/account.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Payment {
  static num _id = 0;
  num id;
  double value;
  Account destinationAccount;
  DateTime date;

  Payment(this.value, this.destinationAccount, this.date) : id = _id {
    _id++;
    destinationAccount.addPayment(this);
  }
}

void main() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();

  // Open the database and store the reference.
  final database = openDatabase(
      join(await getDatabasesPath(), 'payments_database.db'),

      // When the database is first created, create a table to store the accounts
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE payments(id INTEGER PRIMARY KEY, value REAL, '
        );
      },
      version: 1,
  );
}
