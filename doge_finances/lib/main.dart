import 'package:doge_finances/db/dogeFinancesDatabase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doge_finances/screens/homescreen.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  // // Avoid errors caused by flutter upgrade.
  // // Importing 'package:flutter/widgets.dart' is required.
  // WidgetsFlutterBinding.ensureInitialized();
  //
  // // Open the database and store the reference.
  // final database = openDatabase(
  //     join(await getDatabasesPath(), 'df_database.db'),
  //
  //     // When the database is first created, create a table to store the accounts
  //     onCreate: (db, version) {
  //       return db.execute(
  //           'CREATE TABLE accounts(accountID INTEGER, balance REAL, accountColor TEXT)'
  //       );
  //     },
  //     version: 1
  // );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var db = DogeFinancesDatabase.databaseInstance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doge Finances',
      home: Homescreen(),
    );
  }
}