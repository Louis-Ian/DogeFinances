import 'dart:ui';

import 'package:doge_finances/data/Transaction.dart';
import 'package:flutter/material.dart';

class Account {
  double _balance;
  Color accountColor;
  List<Transaction> _transactions;

  Account(this._balance, this.accountColor, this._transactions);

  Account.empty(this.accountColor)
      : _balance = 0,
        _transactions = [];

  List<Transaction> get transactions => _transactions;

  double get balance => _balance;

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
  }

  void deleteTransaction(Transaction transaction) {
    _transactions.removeWhere((t) => t.id == transaction.id);
  }
}