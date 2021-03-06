import 'package:doge_finances/app/doge_finances/domain/entities/transfer.dart';
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
    if (this == payment.originAccountID) {
      _payments.add(payment);

      if (payment.destinationAccountID != null) {
        payment.destinationAccountID!.addPayment(payment);
      }

      _balance -= payment.value;
    } else if (this == payment.destinationAccountID) {
      _payments.add(payment);

      _balance += payment.value;
    }
  }

  void removePayment(num id) {
    Transfer payment = payments.lastWhere((element) => element.id == id);
    if (this == payment.originAccountID) {
      if (payment.destinationAccountID != null) {
        payment.destinationAccountID!.removePayment(id);
      }

      _payments.removeWhere((element) => element.id == payment.id);
      _balance += payment.value;

    } else if (this == payment.destinationAccountID) {
      _payments.removeWhere((element) => element.id == payment.id);

      _balance -= payment.value;
    }
  }
}