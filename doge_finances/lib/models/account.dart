import 'package:doge_finances/models/transfer.dart';
import 'package:flutter/material.dart';

final String accountsTable = "accounts";

class AccountFields {
  static final String id = "_id";
  static final String balance = "balance";
  static final String color = "color";
}

class Account {
  static num _id = 0;
  final num id;
  double _balance;
  final Color color;
  List<Transfer> _payments;

  Account(this._balance, this.color, this._payments) : id = _id {
    _id++;
  }

  Account.empty(this.color)
      : _balance = 0,
        _payments = [],
        id = _id {
    _id++;
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'balance': _balance, 'color': color};
  }

  @override
  String toString() {
    return 'Account{id: $id, balance: $_balance, color: $color}';
  }

  List<Transfer> get payments => _payments;

  double get balance => _balance;

  void addPayment(Transfer payment) {
    _payments.add(payment);

    if(payment.destinationAccountID != null){
      payment.destinationAccountID?._balance += payment.value;
    }

    this._balance -= payment.value;
  }

  void removePayment(Transfer payment) {
    _payments.removeWhere((t) => t.id == payment.id);
  }
}