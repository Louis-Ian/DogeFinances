import 'dart:ui';

import 'package:doge_finances/data/payment.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Account {
  static num _id = 0;
  num id;
  double _balance;
  Color accountColor;
  List<Payment> _payments;

  Account(this._balance, this.accountColor, this._payments) : id = _id {
    _id++;
  }

  Account.empty(this.accountColor)
      : _balance = 0,
        _payments = [],
        id = _id {
    _id++;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'balance': _balance,
      'accountColor': accountColor
    };
  }

  @override
  String toString() {
    return 'Account{id: $id, balance: $_balance, Color: $accountColor}';
  }

  List<Payment> get payments => _payments;

  double get balance => _balance;

  void addPayment(Payment payment) {
    _payments.add(payment);
  }

  void removePayment(Payment payment) {
    _payments.removeWhere((t) => t.id == payment.id);
  }
}

void main() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();

  // Open the database and store the reference.
  final database = openDatabase(
      join(await getDatabasesPath(), 'accounts_database.db'),

      // When the database is first created, create a table to store the accounts
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE accounts(id INTEGER, balance REAL, accountColor TEXT)'
        );
      },
      version: 1
  );
}
