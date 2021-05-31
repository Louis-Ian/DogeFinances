import 'package:doge_finances/data/account.dart';

class Transaction {
  static num _id = 0;
  num id;
  double value;
  Account destinyAccount;
  DateTime date;

  Transaction(this.value, this.destinyAccount, this.date) : id = _id {
    _id++;
    destinyAccount.addTransaction(this);
  }
}